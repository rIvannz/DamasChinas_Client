using System;

namespace DamasChinas_Server.Common
{
    public enum MessageCode
    {
        // ========================
        // Éxitos
        // ========================
        Success = 0,

        // ========================
        // Autenticación / Usuarios
        // ========================
        LoginInvalidCredentials = 1001,
        UserDuplicateEmail = 1002,
        UserNotFound = 1003,

        UserValidationError = 1201,
        VerificationCodeNotFound = 1202,
        VerificationCodeExpired = 1203,
        VerificationCodeInvalid = 1204,
        VerificationCodeSendError = 1205,

        // ========================
        // Partidas / Lobby
        // ========================
        MatchCreationFailed = 1100,
        LobbyNotFound = 1101,
        LobbyInactive = 1102,
        LobbyUserBanned = 1103,
        LobbyClosed = 1104,

        // ========================
        // Backend / Servidor
        // ========================
        ServerUnavailable = 2001,
        NetworkLatency = 2100,
        UnknownError = 9999,

        // ========================
        // Validaciones universales 
        // ========================
        EmptyCredentials = 3001,
        PasswordsDontMatch = 3002,
        InvalidPassword = 3003,
        UsernameEmpty = 3004,
        UserProfileNotFound = 3005,
        FriendsLoadError = 3006,
        InvalidEmail = 3007,
        FieldLengthExceeded = 3008,
        ChatOpenError = 3009,
        NavigationError = 3010,
        SoundVolumeInvalid = 3011,
        OperationInterrupted = 3012,
        CodeSendingError = 3013,
        CodeSentSuccessfully = 3014,
        ChatUnavailable = 3015,
        UsernameExists = 3016,

        // ========================
        // Validaciones específicas
        // ========================

        // Name
        InvalidNameEmpty = 3100,
        InvalidNameLength = 3101,
        InvalidNameCharacters = 3102,

        // Username
        InvalidUsernameEmpty = 3110,
        InvalidUsernameLength = 3111,
        InvalidUsernameCharacters = 3112,

        // Password
        InvalidPasswordEmpty = 3120,
        InvalidPasswordLength = 3121,
        InvalidPasswordUppercase = 3122,
        InvalidPasswordLowercase = 3123,
        InvalidPasswordDigit = 3124,
        InvalidPasswordSpecial = 3125,

        // Email
        InvalidEmailEmpty = 3130,
        InvalidEmailTooLong = 3131,
        InvalidEmailFormat = 3132,

        // ========================
        // Sonido
        // ========================
        SoundSettingsUpdated = 4001,
        SoundSettingsError = 4002,
    }
}



