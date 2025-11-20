using DamasChinas_Client.UI.LogInServiceProxy;
using System;
using System.Text.RegularExpressions;

namespace DamasChinas_Client.UI.Utilities
{
    internal static class Validator
    {
        private static readonly Regex NameRegex = new Regex("^[a-zA-ZáéíóúÁÉÍÓÚñÑ]+$", RegexOptions.Compiled);
        private static readonly Regex UsernameRegex = new Regex("^[a-zA-Z0-9_-]+$", RegexOptions.Compiled);
        private static readonly Regex PasswordUppercaseRegex = new Regex("[A-Z]", RegexOptions.Compiled);
        private static readonly Regex PasswordLowercaseRegex = new Regex("[a-z]", RegexOptions.Compiled);
        private static readonly Regex PasswordDigitRegex = new Regex("[0-9]", RegexOptions.Compiled);
        private static readonly Regex PasswordSpecialRegex = new Regex("[\\W_]", RegexOptions.Compiled);
        private static readonly Regex EmailRegex = new Regex("^[^@\\s]+@[^@\\s]+\\.[^@\\s]+$", RegexOptions.Compiled);

        private static string Normalize(string value) => value?.Trim();

       
        public static void ValidateName(string name)
        {
            name = Normalize(name);

            if (string.IsNullOrWhiteSpace(name))
                throw new ArgumentException("msg_NameEmpty");

            if (name.Length < 2 || name.Length > 50)
                throw new ArgumentException("msg_NameLengthInvalid");

            if (!NameRegex.IsMatch(name))
                throw new ArgumentException("msg_NameInvalidCharacters");
        }

      
        public static void ValidateUsername(string username)
        {
            username = Normalize(username);

            if (string.IsNullOrWhiteSpace(username))
                throw new ArgumentException("msg_UsernameEmpty");

            if (username.Length < 3 || username.Length > 15)
                throw new ArgumentException("msg_UsernameLengthInvalid");

            if (!UsernameRegex.IsMatch(username))
                throw new ArgumentException("msg_UsernameInvalidCharacters");
        }

     
        public static void ValidatePassword(string password)
        {
            password = Normalize(password);

            if (string.IsNullOrWhiteSpace(password))
                throw new ArgumentException("msg_PasswordEmpty");

            if (password.Length < 8)
                throw new ArgumentException("msg_PasswordTooShort");

            if (!PasswordUppercaseRegex.IsMatch(password))
                throw new ArgumentException("msg_PasswordRequiresUpper");

            if (!PasswordLowercaseRegex.IsMatch(password))
                throw new ArgumentException("msg_PasswordRequiresLower");

            if (!PasswordDigitRegex.IsMatch(password))
                throw new ArgumentException("msg_PasswordRequiresDigit");

            if (!PasswordSpecialRegex.IsMatch(password))
                throw new ArgumentException("msg_PasswordRequiresSpecial");
        }

        
        public static void ValidateEmail(string email)
        {
            email = Normalize(email);

            if (string.IsNullOrWhiteSpace(email))
                throw new ArgumentException("msg_EmptyEmail");

            if (email.Length > 100)
                throw new ArgumentException("msg_EmailTooLong");

            if (!EmailRegex.IsMatch(email))
                throw new ArgumentException("msg_InvalidEmail");
        }

       
        public static void ValidateLoginRequest(LoginRequest loginRequest)
        {
            if (loginRequest == null)
                throw new ArgumentNullException(nameof(loginRequest));

            loginRequest.Username = Normalize(loginRequest.Username);
            loginRequest.Password = Normalize(loginRequest.Password);

            if (string.IsNullOrWhiteSpace(loginRequest.Username) ||
                string.IsNullOrWhiteSpace(loginRequest.Password))
            {
                throw new ArgumentException("msg_EmptyCredentials");
            }

            if (loginRequest.Username.Contains("@"))
                ValidateEmail(loginRequest.Username);
            else
                ValidateUsername(loginRequest.Username);
        }
    }
}
