using DamasChinas_Server.Dtos;
using DamasChinas_Server.Services;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;

namespace DamasChinas_Server
{
        public class FriendRepository
        {
                private readonly RepositoryUsers _userRepo = new RepositoryUsers();

                protected virtual damas_chinasEntities CreateDbContext()
                {
                        return new damas_chinasEntities();
                }

                public List<FriendDto> GetFriends(string username)
                {
                        int id = _userRepo.GetUserIdByUsername(username);

                        using (var db = CreateDbContext())
                        {
                                var friends = db.amistades
                                                .Include(a => a.usuarios.perfiles)
                                                .Include(a => a.usuarios1.perfiles)
                                                .Where(a => a.id_usuario1 == id || a.id_usuario2 == id)
                                                .ToList();

                                if (friends == null || friends.Count == 0)
                                        return new List<FriendDto>();

                                var friendships = friends.Select(a =>
                                {
                                        var friendUser = a.id_usuario1 == id ? a.usuarios1 : a.usuarios;

                                        var profile = friendUser.perfiles.FirstOrDefault();

                                        string friendUsername = profile?.username ?? "N/A";
                                        bool isOnline = !string.IsNullOrWhiteSpace(friendUsername) &&
                                                        SessionManager.IsOnline(friendUsername);

                                        return new FriendDto
                                        {
                                                IdFriend = friendUser.id_usuario,
                                                Username = friendUsername,
                                                ConnectionState = isOnline,
                                                Avatar = profile?.imagen_perfil ?? "default.png"
                                        };
                                }).ToList();

                                return friendships;
                        }
                }

                public List<FriendDto> GetFriendRequests(string username)
                {
                        int userId = _userRepo.GetUserIdByUsername(username);

                        using (var db = CreateDbContext())
                        {
                                var pendingRequests = db.solicitudes_amistad
                                                .Include(s => s.usuarios.perfiles)
                                                .Where(s => s.id_receptor == userId && s.estado == "pendiente")
                                                .ToList();

                                if (!pendingRequests.Any())
                                {
                                        return new List<FriendDto>();
                                }

                                return pendingRequests.Select(s =>
                                {
                                        var senderProfile = s.usuarios.perfiles.FirstOrDefault();
                                        string senderUsername = senderProfile?.username ?? "N/A";
                                        bool isOnline = !string.IsNullOrWhiteSpace(senderUsername) && SessionManager.IsOnline(senderUsername);

                                        return new FriendDto
                                        {
                                                IdFriend = s.id_emisor,
                                                Username = senderUsername,
                                                ConnectionState = isOnline,
                                                Avatar = senderProfile?.imagen_perfil ?? "default.png"
                                        };
                                }).ToList();
                        }
                }

                public bool AddFriend(int idUsuario1, int idUsuario2)
                {
                        if (idUsuario1 == idUsuario2)
                        {
                                throw new Exception("Un usuario no puede agregarse a sí mismo.");
                        }

                        using (var db = CreateDbContext())
                        {
                                var existe1 = db.usuarios.Any(u => u.id_usuario == idUsuario1);
                                var existe2 = db.usuarios.Any(u => u.id_usuario == idUsuario2);

                                if (!existe1 || !existe2)
                                {
                                        throw new Exception("Uno o ambos usuarios no existen.");
                                }
                                bool yaSonAmigos = db.amistades.Any(a =>
                                        (a.id_usuario1 == idUsuario1 && a.id_usuario2 == idUsuario2) ||
                                        (a.id_usuario1 == idUsuario2 && a.id_usuario2 == idUsuario1)
                                );

                                if (yaSonAmigos)
                                {
                                        throw new Exception("Estos usuarios ya son amigos.");
                                }
                                var nuevaAmistad = new amistades
                                {
                                        id_usuario1 = idUsuario1,
                                        id_usuario2 = idUsuario2,
                                        fecha_amistad = DateTime.Now
                                };

                                db.amistades.Add(nuevaAmistad);
                                db.SaveChanges();

                                return true;
                        }
                }

                public bool DeleteFriend(int idUsuario1, int idUsuario2)
                {
                        using (var db = CreateDbContext())
                        {
                                var amistad = db.amistades.FirstOrDefault(a =>
                                        (a.id_usuario1 == idUsuario1 && a.id_usuario2 == idUsuario2) ||
                                        (a.id_usuario1 == idUsuario2 && a.id_usuario2 == idUsuario1)
                                );

                                if (amistad == null)
                                {
                                        throw new Exception("No existe una amistad entre estos usuarios.");
                                }

                                db.amistades.Remove(amistad);
                                db.SaveChanges();
                                return true;
                        }
                }

                public bool SendFriendRequest(string senderUsername, string receiverUsername)
                {
                        int senderId = _userRepo.GetUserIdByUsername(senderUsername);
                        int receiverId = _userRepo.GetUserIdByUsername(receiverUsername);

                        if (senderId == receiverId)
                        {
                                throw new InvalidOperationException("Un usuario no puede enviarse una solicitud a sí mismo.");
                        }

                        using (var db = CreateDbContext())
                        {
                                bool friendshipExists = db.amistades.Any(a =>
                                    (a.id_usuario1 == senderId && a.id_usuario2 == receiverId) ||
                                    (a.id_usuario1 == receiverId && a.id_usuario2 == senderId));

                                if (friendshipExists)
                                {
                                        throw new InvalidOperationException("Los usuarios ya son amigos.");
                                }

                                bool isBlocked = db.bloqueos.Any(b =>
                                    (b.id_bloqueador == senderId && b.id_bloqueado == receiverId) ||
                                    (b.id_bloqueador == receiverId && b.id_bloqueado == senderId));

                                if (isBlocked)
                                {
                                        throw new InvalidOperationException("La relación está bloqueada entre los usuarios.");
                                }

                                bool pendingRequest = db.solicitudes_amistad.Any(s =>
                                    ((s.id_emisor == senderId && s.id_receptor == receiverId) ||
                                     (s.id_emisor == receiverId && s.id_receptor == senderId)) &&
                                    s.estado == "pendiente");

                                if (pendingRequest)
                                {
                                        throw new InvalidOperationException("Ya existe una solicitud pendiente entre los usuarios.");
                                }

                                var request = new solicitudes_amistad
                                {
                                        id_emisor = senderId,
                                        id_receptor = receiverId,
                                        fecha_envio = DateTime.Now,
                                        estado = "pendiente"
                                };

                                db.solicitudes_amistad.Add(request);
                                db.SaveChanges();
                                return true;
                        }
                }

                public bool UpdateFriendRequestStatus(string receiverUsername, string senderUsername, bool accept)
                {
                        int receiverId = _userRepo.GetUserIdByUsername(receiverUsername);
                        int senderId = _userRepo.GetUserIdByUsername(senderUsername);

                        using (var db = CreateDbContext())
                        {
                                var request = db.solicitudes_amistad.FirstOrDefault(s =>
                                    s.id_emisor == senderId &&
                                    s.id_receptor == receiverId &&
                                    s.estado == "pendiente");

                                if (request == null)
                                {
                                        throw new InvalidOperationException("No existe una solicitud pendiente entre los usuarios.");
                                }

                                if (accept)
                                {
                                        bool isBlocked = db.bloqueos.Any(b =>
                                            (b.id_bloqueador == senderId && b.id_bloqueado == receiverId) ||
                                            (b.id_bloqueador == receiverId && b.id_bloqueado == senderId));

                                        if (isBlocked)
                                        {
                                                throw new InvalidOperationException("La relación está bloqueada entre los usuarios.");
                                        }

                                        bool friendshipExists = db.amistades.Any(a =>
                                            (a.id_usuario1 == senderId && a.id_usuario2 == receiverId) ||
                                            (a.id_usuario1 == receiverId && a.id_usuario2 == senderId));

                                        if (!friendshipExists)
                                        {
                                                db.amistades.Add(new amistades
                                                {
                                                        id_usuario1 = senderId,
                                                        id_usuario2 = receiverId,
                                                        fecha_amistad = DateTime.Now
                                                });
                                        }

                                        request.estado = "aceptada";
                                }
                                else
                                {
                                        request.estado = "rechazada";
                                }

                                db.SaveChanges();
                                return true;
                        }
                }

                public bool DeleteFriend(string username, string friendUsername)
                {
                        int userId = _userRepo.GetUserIdByUsername(username);
                        int friendId = _userRepo.GetUserIdByUsername(friendUsername);

                        return DeleteFriend(userId, friendId);
                }

                public bool UpdateBlockStatus(string blockerUsername, string blockedUsername, bool block)
                {
                        int blockerId = _userRepo.GetUserIdByUsername(blockerUsername);
                        int blockedId = _userRepo.GetUserIdByUsername(blockedUsername);

                        if (blockerId == blockedId)
                        {
                                throw new InvalidOperationException("Un usuario no puede bloquearse a sí mismo.");
                        }

                        using (var db = CreateDbContext())
                        {
                                if (block)
                                {
                                        bool alreadyBlocked = db.bloqueos.Any(b => b.id_bloqueador == blockerId && b.id_bloqueado == blockedId);

                                        if (alreadyBlocked)
                                        {
                                                throw new InvalidOperationException("El usuario ya está bloqueado.");
                                        }

                                        var existingFriendship = db.amistades.FirstOrDefault(a =>
                                            (a.id_usuario1 == blockerId && a.id_usuario2 == blockedId) ||
                                            (a.id_usuario1 == blockedId && a.id_usuario2 == blockerId));

                                        if (existingFriendship != null)
                                        {
                                                db.amistades.Remove(existingFriendship);
                                        }

                                        var pendingRequests = db.solicitudes_amistad.Where(s =>
                                            (s.id_emisor == blockerId && s.id_receptor == blockedId) ||
                                            (s.id_emisor == blockedId && s.id_receptor == blockerId)).ToList();

                                        if (pendingRequests.Any())
                                        {
                                                db.solicitudes_amistad.RemoveRange(pendingRequests);
                                        }

                                        db.bloqueos.Add(new bloqueos
                                        {
                                                id_bloqueador = blockerId,
                                                id_bloqueado = blockedId,
                                                fecha_bloqueo = DateTime.Now
                                        });
                                }
                                else
                                {
                                        var bloqueo = db.bloqueos.FirstOrDefault(b => b.id_bloqueador == blockerId && b.id_bloqueado == blockedId);

                                        if (bloqueo == null)
                                        {
                                                throw new InvalidOperationException("No existe un bloqueo entre los usuarios.");
                                        }

                                        db.bloqueos.Remove(bloqueo);
                                }

                                db.SaveChanges();
                                return true;
                        }
                }
        }
}
