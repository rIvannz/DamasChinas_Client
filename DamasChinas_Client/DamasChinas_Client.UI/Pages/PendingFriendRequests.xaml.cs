using DamasChinas_Client.UI.FriendServiceProxy;
using DamasChinas_Client.UI.LogInServiceProxy;
using DamasChinas_Client.UI.Utilities;
using System;
using System.Collections.ObjectModel;
using System.ServiceModel;
using System.Windows;
using System.Windows.Controls;

namespace DamasChinas_Client.UI.Pages
{
    public partial class PendingFriendRequests : Page
    {
        public ObservableCollection<PendingRequest> Requests { get; } =
            new ObservableCollection<PendingRequest>();

        public PendingFriendRequests()
        {
            InitializeComponent();
            DataContext = this;

            LoadRequestsFromServer();
        }

        private void LoadRequestsFromServer()
        {
            Requests.Clear();

            string currentUsername = ClientSession.CurrentProfile.Username;

            try
            {
                var client = new FriendServiceClient();

                var dtos = client.GetFriendRequests(currentUsername);

                client.Close();

                foreach (var dto in dtos)
                {
                    Requests.Add(new PendingRequest
                    {
                        Username = dto.Username,
                        Avatar = dto.Avatar,
                        IsOnline = dto.ConnectionState
                    });
                }

                if (Requests.Count == 0)
                {
                    MessageHelper.ShowPopup(
                        MessageTranslator.GetLocalizedMessage("msg_NoPendingRequests"),
                        "info");
                    return;
                }
            }
            catch (FaultException fault)
            {
                MessageHelper.ShowPopup(fault.Message, "warning");
            }
            catch (Exception ex)
            {
                // Aquí puedes usar tu mensaje traducido si tienes una clave
                MessageHelper.ShowPopup(
                    "Error al comunicarse con el servidor: " + ex.Message,
                    "error");
            }
        }

        private void OnBackClick(object sender, RoutedEventArgs e)
        {
            try
            {
                NavigationService?.Navigate(new Friends(ClientSession.CurrentProfile.Username));
            }
            catch
            {
                MessageHelper.ShowPopup(
                    MessageTranslator.GetLocalizedMessage("msg_NavigationError"),
                    "error");
            }
        }

        private void OnAcceptClick(object sender, RoutedEventArgs e)
        {
            if (sender is FrameworkElement element && element.DataContext is PendingRequest req)
            {
                string currentUsername = ClientSession.CurrentProfile.Username;

                try
                {
                    var client = new FriendServiceClient();

                    // receiver = el que está logueado, sender = el que envió la solicitud
                    bool success = client.UpdateFriendRequestStatus(
                        receiverUsername: currentUsername,
                        senderUsername: req.Username,
                        accept: true);

                    client.Close();

                    if (success)
                    {
                        Requests.Remove(req);

                        MessageHelper.ShowPopup(
                            MessageTranslator.GetLocalizedMessage("msg_FriendRequestAccepted"),
                            "success");
                    }
                }
                catch (FaultException fault)
                {
                    MessageHelper.ShowPopup(fault.Message, "warning");
                }
                catch (Exception ex)
                {
                    MessageHelper.ShowPopup(
                        "Error al aceptar la solicitud: " + ex.Message,
                        "error");
                }
            }
        }

        private void OnRejectClick(object sender, RoutedEventArgs e)
        {
            if (sender is FrameworkElement element && element.DataContext is PendingRequest req)
            {
                string currentUsername = ClientSession.CurrentProfile.Username;

                try
                {
                    var client = new FriendServiceClient();

                    bool success = client.UpdateFriendRequestStatus(
                        receiverUsername: currentUsername,
                        senderUsername: req.Username,
                        accept: false);

                    client.Close();

                    if (success)
                    {
                        Requests.Remove(req);

                        MessageHelper.ShowPopup(
                            MessageTranslator.GetLocalizedMessage("msg_FriendRequestRejected"),
                            "info");
                    }
                }
                catch (FaultException fault)
                {
                    MessageHelper.ShowPopup(fault.Message, "warning");
                }
                catch (Exception ex)
                {
                    MessageHelper.ShowPopup(
                        "Error al rechazar la solicitud: " + ex.Message,
                        "error");
                }
            }
        }

        public class PendingRequest
        {
            public string Username { get; set; }
            public string Avatar { get; set; }
            public bool IsOnline { get; set; }
        }
    }
}
