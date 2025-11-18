using DamasChinas_Server.Utilidades;
using System;

namespace DamasChinas_Server.Utilities
{
    internal static class EmailSender
    {
        public static void SendVerificationEmail(string email, string code)
        {
            var subject = "Código de verificación";
            var body = $"Tu código de verificación es: <b>{code}</b><br>Este código expirará en 5 minutos.";

            Email.SendAsync(email, subject, body, html: true).GetAwaiter().GetResult();
        }
    }
}
