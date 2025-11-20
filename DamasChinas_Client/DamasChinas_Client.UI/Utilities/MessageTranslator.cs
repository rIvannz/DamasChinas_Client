using System;
using System.Windows;

namespace DamasChinas_Client.UI.Utilities
{
    public static class MessageTranslator
    {
        // Traducción usando clave directa
        public static string GetLocalizedMessage(string resourceKey)
        {
            try
            {
                object resource = Application.Current.TryFindResource(resourceKey);
                return resource != null ? resource.ToString() : resourceKey;
            }
            catch
            {
                return resourceKey;
            }
        }

        // Traducción usando MessageCode (enum)
        public static string GetLocalizedMessage(Enum code)
        {
            try
            {
                string key = GetResourceKey(code);
                object resource = Application.Current.TryFindResource(key);
                return resource != null ? resource.ToString() : $"[{code}]";
            }
            catch
            {
                return code.ToString();
            }
        }

        // Tabla de equivalencias MessageCode → ResourceKey
        private static string GetResourceKey(Enum code)
        {
            switch (code.ToString())
            {
                // ========================
                // ÉXITOS
                // ========================
                case "Success": return "msg_Success";

                // ========================
                // AUTENTICACIÓN / USUARIOS
                // ========================
                case "LoginInvalidCredentials": return "msg_LoginInvalidCredentials";
                case "UserDuplicateEmail": return "msg_UserDuplicateEmail";
                case "UserNotFound": return "msg_UserNotFound";
                case "UserValidationError": return "msg_UserValidationError";

                case "VerificationCodeNotFound": return "msg_VerificationCodeNotFound";
                case "VerificationCodeExpired": return "msg_VerificationCodeExpired";
                case "VerificationCodeInvalid": return "msg_InvalidVerificationCode";
                case "VerificationCodeSendError": return "msg_CodeSendingError";

                // ========================
                // PARTIDAS / LOBBY
                // ========================
                case "MatchCreationFailed": return "msg_MatchCreationFailed";
                case "LobbyNotFound": return "msg_LobbyNotFound";
                case "LobbyInactive": return "msg_LobbyInactive";
                case "LobbyUserBanned": return "msg_LobbyUserBanned";
                case "LobbyClosed": return "msg_LobbyClosed";

                // ========================
                // BACKEND / SERVIDOR
                // ========================
                case "ServerUnavailable": return "msg_ServerUnavailable";
                case "NetworkLatency": return "msg_NetworkLatency";
                case "UnknownError": return "msg_UnknownError";

                // ========================
                // VALIDACIONES UNIVERSALES
                // ========================
                case "EmptyCredentials": return "msg_EmptyCredentials";
                case "PasswordsDontMatch": return "msg_PasswordsDontMatch";
                case "InvalidPassword": return "msg_InvalidPassword";
                case "UsernameEmpty": return "msg_UsernameEmpty";
                case "UserProfileNotFound": return "msg_UserProfileNotFound";
                case "FriendsLoadError": return "msg_FriendsLoadError";
                case "InvalidEmail": return "msg_InvalidEmail";
                case "FieldLengthExceeded": return "msg_FieldLengthExceeded";
                case "ChatOpenError": return "msg_ChatOpenError";
                case "NavigationError": return "msg_NavigationError";
                case "SoundVolumeInvalid": return "msg_SoundVolumeInvalid";
                case "OperationInterrupted": return "msg_OperationInterrupted";
                case "CodeSendingError": return "msg_CodeSendingError";
                case "CodeSentSuccessfully": return "msg_CodeSentSuccessfully";
                case "ChatUnavailable": return "msg_ChatUnavailable";
                case "UsernameExists": return "msg_UsernameExists";

                // ========================
                // VALIDACIONES ESPECÍFICAS
                // ========================

                // Name
                case "InvalidNameEmpty": return "msg_InvalidNameEmpty";
                case "InvalidNameLength": return "msg_InvalidNameLength";
                case "InvalidNameCharacters": return "msg_InvalidNameCharacters";

                // Username
                case "InvalidUsernameEmpty": return "msg_InvalidUsernameEmpty";
                case "InvalidUsernameLength": return "msg_InvalidUsernameLength";
                case "InvalidUsernameCharacters": return "msg_InvalidUsernameCharacters";

                // Password
                case "InvalidPasswordEmpty": return "msg_InvalidPasswordEmpty";
                case "InvalidPasswordLength": return "msg_InvalidPasswordLength";
                case "InvalidPasswordUppercase": return "msg_InvalidPasswordUppercase";
                case "InvalidPasswordLowercase": return "msg_InvalidPasswordLowercase";
                case "InvalidPasswordDigit": return "msg_InvalidPasswordDigit";
                case "InvalidPasswordSpecial": return "msg_InvalidPasswordSpecial";

                // Email
                case "InvalidEmailEmpty": return "msg_InvalidEmailEmpty";
                case "InvalidEmailTooLong": return "msg_InvalidEmailTooLong";
                case "InvalidEmailFormat": return "msg_InvalidEmailFormat";

                // ========================
                // SONIDO
                // ========================
                case "SoundSettingsUpdated": return "msg_SoundSettingsUpdated";
                case "SoundSettingsError": return "msg_SoundSettingsError";

                // ========================
                // DEFAULT
                // ========================
                default:
                    return "msg_UnknownError";
            }
        }
    }
}
