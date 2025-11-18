using DamasChinas_Client.UI.AccountManagerServiceProxy;
using DamasChinas_Client.UI.PopUps;
using DamasChinas_Client.UI.Utilities;
using System;
using System.Diagnostics;
using System.ServiceModel;
using System.Windows;
using System.Windows.Controls;


namespace DamasChinas_Client.UI.Pages
{
    public partial class ChangeData : Page
    {
        private PublicProfile _profile;

        public ChangeData()
        {
            InitializeComponent();
        }

        public ChangeData(PublicProfile profile)
            : this()
        {
            _profile = profile;
            LoadProfileData();
        }

    

        private void OnBackClick(object sender, RoutedEventArgs e)
        {
            try
            {
                NavigationService?.GoBack();
            }
            catch (InvalidOperationException ex)
            {
                Debug.WriteLine($"[ChangeData.OnBackClick - InvalidOperation] {ex.Message}");

                MessageHelper.ShowPopup(
                    MessageTranslator.GetLocalizedMessage("msg_NavigationError"),
                    "error"
                );
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"[ChangeData.OnBackClick - General] {ex.Message}");

                MessageHelper.ShowPopup(
                    MessageTranslator.GetLocalizedMessage("msg_UnknownError"),
                    "error"
                );
            }
        }

        private void OnSendCodeClick(object sender, RoutedEventArgs e)
        {
            TryExecuteAction(() =>
            {
        
                MessageHelper.ShowPopup(
                    MessageTranslator.GetLocalizedMessage("msg_CodeSentSuccessfully"),
                    "success"
                );
            }, "msg_CodeSendingError");
        }

        private void OnSoundClick(object sender, RoutedEventArgs e)
        {
            TryExecuteAction(() =>
            {
                NavigationService?.Navigate(new ConfiSound());
            }, "msg_NavigationError");
        }

        private void OnLanguageClick(object sender, RoutedEventArgs e)
        {
            TryExecuteAction(() =>
            {
                NavigationService?.Navigate(new SelectLanguage());
            }, "msg_NavigationError");
        }

     
        private void OnSaveUsernameClick(object sender, RoutedEventArgs e)
        {
            TryExecuteAction(() =>
            {
                if (!ValidateUsernameInput())
                {
                    return;
                }

                ChangeUsername(txtUsername.Text.Trim());
            }, "msg_UnknownError");
        }

        private bool ValidateUsernameInput()
        {
            if (string.IsNullOrWhiteSpace(txtUsername.Text))
            {
                MessageHelper.ShowPopup(
                    MessageTranslator.GetLocalizedMessage("msg_UsernameEmpty"),
                    "warning"
                );
                return false;
            }

            return true;
        }

        private void ChangeUsername(string newUsername)
        {
            try
            {
                using (var client = new AccountManagerClient())
                {
                    var result = client.ChangeUsername(_profile.Username, newUsername);

                    string message = MessageTranslator.GetLocalizedMessage(result.Code);

                    if (result.Success)
                    {
                        UpdateUsernameState(newUsername);

                        MessageHelper.ShowPopup(message, "success");
                        NavigationService?.GoBack();
                    }
                    else
                    {
                        MessageHelper.ShowPopup(message, "warning");
                    }
                }
            }
            catch (CommunicationException ex)
            {
                Debug.WriteLine($"[ChangeData.ChangeUsername - Communication] {ex.Message}");

                MessageHelper.ShowPopup(
                    MessageTranslator.GetLocalizedMessage("msg_ServerUnavailable"),
                    "error"
                );
            }
            catch (TimeoutException ex)
            {
                Debug.WriteLine($"[ChangeData.ChangeUsername - Timeout] {ex.Message}");

                MessageHelper.ShowPopup(
                    MessageTranslator.GetLocalizedMessage("msg_ServerUnavailable"),
                    "error"
                );
            }
            catch (InvalidOperationException ex)
            {
                Debug.WriteLine($"[ChangeData.ChangeUsername - InvalidOperation] {ex.Message}");

                MessageHelper.ShowPopup(
                    MessageTranslator.GetLocalizedMessage("msg_UnknownError"),
                    "error"
                );
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"[ChangeData.ChangeUsername - General] {ex.Message}");

                MessageHelper.ShowPopup(
                    MessageTranslator.GetLocalizedMessage("msg_UnknownError"),
                    "error"
                );
            }
        }

        private void UpdateUsernameState(string newUsername)
        {
            _profile.Username = newUsername;
            txtCurrentUsername.Text = newUsername;

            if (ClientSession.IsLoggedIn)
            {
                ClientSession.CurrentProfile.Username = newUsername;
            }
        }

 

        private void OnSavePasswordClick(object sender, RoutedEventArgs e)
        {
            TryExecuteAction(() =>
            {
           
                if (!ValidateVerificationCodeInput())
                {
                    return;
                }

                if (!ValidatePasswordInputs())
                {
                    return;
                }

             
                if (!ValidatePasswordStrength(txtPassword.Password))
                {
                    return;
                }

           
                string hashedPassword = Hasher.HashPassword(txtPassword.Password.Trim());
                ChangePassword(_profile.Username, hashedPassword);
            }, "msg_UnknownError");
        }

        private bool ValidateVerificationCodeInput()
        {
          
            string code = txtVerificationCode.Text.Trim();

            if (string.IsNullOrWhiteSpace(code))
            {
                MessageHelper.ShowPopup(
                    MessageTranslator.GetLocalizedMessage("msg_EmptyVerificationCode"),
                    "warning"
                );
                return false;
            }

            return true;
        }

        private bool ValidatePasswordInputs()
        {
            if (string.IsNullOrWhiteSpace(txtPassword.Password) ||
                string.IsNullOrWhiteSpace(txtConfirmPassword.Password))
            {
                MessageHelper.ShowPopup(
                    MessageTranslator.GetLocalizedMessage("msg_EmptyCredentials"),
                    "warning"
                );
                return false;
            }

            if (txtPassword.Password != txtConfirmPassword.Password)
            {
                MessageHelper.ShowPopup(
                    MessageTranslator.GetLocalizedMessage("msg_PasswordsDontMatch"),
                    "warning"
                );
                return false;
            }

            return true;
        }

        private bool ValidatePasswordStrength(string password)
        {
            try
            {
                Validator.ValidatePassword(password);
               
                return true;
            }
            catch (ArgumentException ex)
            {
                Debug.WriteLine($"[ChangeData.ValidatePasswordStrength - Argument] {ex.Message}");

                MessageHelper.ShowPopup(
                    MessageTranslator.GetLocalizedMessage("msg_InvalidPassword"),
                    "warning"
                );
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"[ChangeData.ValidatePasswordStrength - General] {ex.Message}");

                MessageHelper.ShowPopup(
                    MessageTranslator.GetLocalizedMessage("msg_InvalidPassword"),
                    "warning"
                );
            }

            return false;
        }

        private void ChangePassword(string username, string hashedPassword)
        {
            try
            {
                using (var client = new AccountManagerClient())
                {
                    var result = client.ChangePassword(username, hashedPassword);

                    string message = MessageTranslator.GetLocalizedMessage(result.Code);

                    if (result.Success)
                    {
                 
                        MessageHelper.ShowPopup(message, "success");
                        ClearPasswordInputs();
                    }
                    else
                    {
                        MessageHelper.ShowPopup(message, "warning");
                    }
                }
            }
            catch (CommunicationException ex)
            {
                Debug.WriteLine($"[ChangeData.ChangePassword - Communication] {ex.Message}");

                MessageHelper.ShowPopup(
                    MessageTranslator.GetLocalizedMessage("msg_ServerUnavailable"),
                    "error"
                );
            }
            catch (TimeoutException ex)
            {
                Debug.WriteLine($"[ChangeData.ChangePassword - Timeout] {ex.Message}");

                MessageHelper.ShowPopup(
                    MessageTranslator.GetLocalizedMessage("msg_ServerUnavailable"),
                    "error"
                );
            }
            catch (InvalidOperationException ex)
            {
                Debug.WriteLine($"[ChangeData.ChangePassword - InvalidOperation] {ex.Message}");

                MessageHelper.ShowPopup(
                    MessageTranslator.GetLocalizedMessage("msg_UnknownError"),
                    "error"
                );
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"[ChangeData.ChangePassword - General] {ex.Message}");

                MessageHelper.ShowPopup(
                    MessageTranslator.GetLocalizedMessage("msg_UnknownError"),
                    "error"
                );
            }
        }

        private void ClearPasswordInputs()
        {
            txtPassword.Password = string.Empty;
            txtConfirmPassword.Password = string.Empty;
            
        }

    

        private void LoadProfileData()
        {
            try
            {
                if (_profile != null)
                {
                    txtFirstName.Text = _profile.Name;
                    txtLastName.Text = _profile.LastName;
                    txtEmail.Text = _profile.Email;
                    txtCurrentUsername.Text = _profile.Username;
                }
                else
                {
                    MessageHelper.ShowPopup(
                        MessageTranslator.GetLocalizedMessage("msg_UserProfileNotFound"),
                        "warning"
                    );
                }
            }
            catch (NullReferenceException ex)
            {
                Debug.WriteLine($"[ChangeData.LoadProfileData - NullReference] {ex.Message}");

                MessageHelper.ShowPopup(
                    MessageTranslator.GetLocalizedMessage("msg_UserProfileNotFound"),
                    "error"
                );
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"[ChangeData.LoadProfileData - General] {ex.Message}");

                MessageHelper.ShowPopup(
                    MessageTranslator.GetLocalizedMessage("msg_UnknownError"),
                    "error"
                );
            }
        }

        private void TryExecuteAction(Action action, string errorKey)
        {
            try
            {
                action.Invoke();
            }
            catch (InvalidOperationException ex)
            {
                Debug.WriteLine($"[ChangeData.TryExecuteAction - InvalidOperation] {ex.Message}");

                MessageHelper.ShowPopup(
                    MessageTranslator.GetLocalizedMessage(errorKey),
                    "error"
                );
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"[ChangeData.TryExecuteAction - General] {ex.Message}");

                MessageHelper.ShowPopup(
                    MessageTranslator.GetLocalizedMessage(errorKey),
                    "error"
                );
            }
        }
    }
}
