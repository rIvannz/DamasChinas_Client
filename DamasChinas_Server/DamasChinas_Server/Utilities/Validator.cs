using System;
using System.Text.RegularExpressions;
using DamasChinas_Server.Dtos;
using DamasChinas_Server.Common;

namespace DamasChinas_Server.Utilidades
{
    internal static class Validator
    {
        private const int NombreMinLength = 2;
        private const int NombreMaxLength = 50;
        private const int UsernameMinLength = 3;
        private const int UsernameMaxLength = 15;
        private const int PasswordMinLength = 8;
        private const int EmailMaxLength = 100;

        private static readonly Regex NameRegex = new Regex("^[a-zA-ZáéíóúÁÉÍÓÚñÑ]+$", RegexOptions.Compiled);

        private static readonly Regex UsernameRegex = new Regex("^[a-zA-Z0-9_-]+$", RegexOptions.Compiled);

        private static readonly Regex PasswordUppercaseRegex = new Regex("[A-Z]", RegexOptions.Compiled);

        private static readonly Regex PasswordLowercaseRegex = new Regex("[a-z]", RegexOptions.Compiled);

        private static readonly Regex PasswordDigitRegex = new Regex("[0-9]", RegexOptions.Compiled);

        private static readonly Regex PasswordSpecialRegex =  new Regex("[\\W_]", RegexOptions.Compiled);

        private static readonly Regex EmailRegex = new Regex("^[^@\\s]+@[^@\\s]+\\.[^@\\s]+$", RegexOptions.Compiled);

        private static string Normalize(string value) => value?.Trim();



        public static void ValidateName(string name)
        {
            name = Normalize(name);

            if (string.IsNullOrWhiteSpace(name))
                throw new RepositoryValidationException(MessageCode.InvalidNameEmpty);

            if (name.Length < NombreMinLength || name.Length > NombreMaxLength)
                throw new RepositoryValidationException(MessageCode.InvalidNameLength);

            if (!NameRegex.IsMatch(name))
                throw new RepositoryValidationException(MessageCode.InvalidNameCharacters);
        }



        public static void ValidateUsername(string username)
        {
            username = Normalize(username);

            if (string.IsNullOrWhiteSpace(username))
                throw new RepositoryValidationException(MessageCode.InvalidUsernameEmpty);

            if (username.Length < UsernameMinLength || username.Length > UsernameMaxLength)
                throw new RepositoryValidationException(MessageCode.InvalidUsernameLength);

            if (!UsernameRegex.IsMatch(username))
                throw new RepositoryValidationException(MessageCode.InvalidUsernameCharacters);
        }



        
        public static void ValidatePassword(string password)
        {
            password = Normalize(password);

            if (string.IsNullOrWhiteSpace(password))
                throw new RepositoryValidationException(MessageCode.InvalidPasswordEmpty);

            if (password.Length < PasswordMinLength)
                throw new RepositoryValidationException(MessageCode.InvalidPasswordLength);

            if (!PasswordUppercaseRegex.IsMatch(password))
                throw new RepositoryValidationException(MessageCode.InvalidPasswordUppercase);

            if (!PasswordLowercaseRegex.IsMatch(password))
                throw new RepositoryValidationException(MessageCode.InvalidPasswordLowercase);

            if (!PasswordDigitRegex.IsMatch(password))
                throw new RepositoryValidationException(MessageCode.InvalidPasswordDigit);

            if (!PasswordSpecialRegex.IsMatch(password))
                throw new RepositoryValidationException(MessageCode.InvalidPasswordSpecial);
        }



        public static void ValidateEmail(string email)
        {
            email = Normalize(email);

            if (string.IsNullOrWhiteSpace(email))
                throw new RepositoryValidationException(MessageCode.InvalidEmailEmpty);

            if (email.Length > EmailMaxLength)
                throw new RepositoryValidationException(MessageCode.InvalidEmailTooLong);

            if (!EmailRegex.IsMatch(email))
                throw new RepositoryValidationException(MessageCode.InvalidEmailFormat);
        }



        public static void ValidateUserDto(UserDto userDto)
        {
            if (userDto == null)
                throw new RepositoryValidationException(MessageCode.UserValidationError);

            userDto.Name = Normalize(userDto.Name);
            userDto.LastName = Normalize(userDto.LastName);
            userDto.Email = Normalize(userDto.Email);
            userDto.Username = Normalize(userDto.Username);

            ValidateName(userDto.Name);
            ValidateName(userDto.LastName);
            ValidateEmail(userDto.Email);
            ValidateUsername(userDto.Username);
        }



    
        public static void ValidateLoginRequest(LoginRequest loginRequest)
        {
            if (loginRequest == null)
                throw new RepositoryValidationException(MessageCode.UserValidationError);

            loginRequest.Username = Normalize(loginRequest.Username);
            loginRequest.Password = Normalize(loginRequest.Password);

            if (string.IsNullOrWhiteSpace(loginRequest.Username))
                throw new RepositoryValidationException(MessageCode.InvalidUsernameEmpty);

            if (loginRequest.Username.Contains("@"))
                ValidateEmail(loginRequest.Username);
            else
                ValidateUsername(loginRequest.Username);

            if (string.IsNullOrWhiteSpace(loginRequest.Password))
                throw new RepositoryValidationException(MessageCode.InvalidPasswordEmpty);
        }
    }
}

