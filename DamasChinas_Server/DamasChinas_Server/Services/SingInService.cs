using DamasChinas_Server.Common;
using DamasChinas_Server.Contracts;
using DamasChinas_Server.Dtos;
using DamasChinas_Server.Services;
using DamasChinas_Server.Utilidades;
using DamasChinas_Server.Utilities;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;

namespace DamasChinas_Server
{

    public class SingInService : ISingInService
    {
        private static readonly Dictionary<string, (string Code, DateTime Created)> _codes = new Dictionary<string, (string Code, DateTime Created)>();
        private readonly RepositoryUsers _repository;

        public SingInService()
        {
            _repository = new RepositoryUsers();
        }


        public OperationResult ValidateUserData(UserDto userDto)
        {
            var result = new OperationResult();

            try
            {
                _repository.ValidateCreateUser(userDto);

                result.Success = true;
                result.Code = MessageCode.Success;
                result.TechnicalDetail = "Validation OK.";

                System.Diagnostics.Debug.WriteLine("[TRACE] User validation successful.");
            }
            catch (ArgumentException ex)
            {
                result.Success = false;
                result.Code = MessageCode.UserDuplicateEmail;
                result.TechnicalDetail = ex.Message;

                System.Diagnostics.Debug.WriteLine($"[ERROR] Argument validation failed: {ex.Message}");
            }
            catch (SqlException ex)
            {
                result.Success = false;
                result.Code = MessageCode.ServerUnavailable;
                result.TechnicalDetail = ex.Message;

                System.Diagnostics.Debug.WriteLine($"[FATAL] Database error during validation: {ex.Message}");
            }
            catch (InvalidOperationException ex)
            {
                result.Success = false;
                result.Code = MessageCode.UnknownError;
                result.TechnicalDetail = ex.Message;

                System.Diagnostics.Debug.WriteLine($"[ERROR] Business rule validation failed: {ex.Message}");
            }
            catch (Exception ex)
            {
                result.Success = false;
                result.Code = MessageCode.UnknownError;
                result.TechnicalDetail = ex.Message;

                System.Diagnostics.Debug.WriteLine($"[FATAL] Unexpected exception in ValidateUser: {ex.Message}");
            }
            finally
            {
                System.Diagnostics.Debug.WriteLine("[TRACE] ValidateUser operation finished.");
            }

            return result;
        }

        public OperationResult RequestVerificationCode(string email)
        {
            try
            {
                var code = GenerateCode();
                lock (_codes)
                {
                    _codes[email] = (code, DateTime.Now);
                }

                EmailSender.SendVerificationEmail(email, code);

                var result = OperationResult.Ok();
                result.Code = MessageCode.CodeSentSuccessfully;
                return result;
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine($"[ERROR] Failed to send verification code: {ex.Message}");
                return OperationResult.Fail("code_send_error", MessageCode.CodeSendingError);
            }
        }

        public OperationResult CreateUser(UserDto userDto, string code)
        {
            var result = new OperationResult();

            try
            {
                _repository.ValidateCreateUser(userDto);

                string storedCode;
                DateTime createdAt;

                lock (_codes)
                {
                    if (!_codes.TryGetValue(userDto.Email, out var data))
                    {
                        return OperationResult.Fail("not_found");
                    }

                    storedCode = data.Code;
                    createdAt = data.Created;
                }

                if (DateTime.Now - createdAt > TimeSpan.FromMinutes(5))
                {
                    lock (_codes)
                    {
                        _codes.Remove(userDto.Email);
                    }
                    return OperationResult.Fail("expired");
                }

                if (!string.Equals(storedCode, code, StringComparison.Ordinal))
                {
                    return OperationResult.Fail("invalid");
                }

                lock (_codes)
                {
                    _codes.Remove(userDto.Email);
                }

                var user = _repository.CreateUser(userDto);
                result = OperationResult.Ok();

                SendWelcomeEmail(MapToUserInfo(user, userDto));
            }
            catch (SqlException ex)
            {
                result.Success = false;
                result.Code = MessageCode.ServerUnavailable;
                result.TechnicalDetail = ex.Message;
            }
            catch (Exception ex)
            {
                result.Success = false;
                result.Code = MessageCode.UnknownError;
                result.TechnicalDetail = ex.Message;
            }

            return result;
        }


        private void SendWelcomeEmail(UserInfo user)
        {
            Task.Run(async () =>
            {
                try
                {
                    await Email.EnviarBienvenidaAsync(user).ConfigureAwait(false);
                    System.Diagnostics.Debug.WriteLine("[TRACE] Welcome email sent successfully.");
                }
                catch (Exception ex)
                {
                    System.Diagnostics.Debug.WriteLine($"[ERROR] Failed to send welcome email: {ex.Message}");
                }
            });
        }


        private static string GenerateCode()
        {
            var random = new Random();
            return random.Next(1000, 10000).ToString();
        }


        private UserInfo MapToUserInfo(usuarios user, UserDto userDto)
        {
            var profile = user.perfiles.FirstOrDefault();

            return new UserInfo
            {
                IdUser = user.id_usuario,
                Username = profile?.username ?? userDto.Username,
                Email = user.correo,
                FullName = profile != null
                    ? $"{profile.nombre} {profile.apellido_materno}"
                    : $"{userDto.Name} {userDto.LastName}"
            };
        }
    }
}
