using DamasChinas_Server.Dtos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace DamasChinas_Server
{
        [ServiceContract]
        public interface IFriendService
        {
                [OperationContract]
                List<FriendDto> GetFriends(string username);

                [OperationContract]
                List<FriendDto> GetFriendRequests(string username);

                [OperationContract]
                bool SendFriendRequest(string senderUsername, string receiverUsername);

                [OperationContract]
                bool DeleteFriend(string username, string friendUsername);

                [OperationContract]
                bool UpdateBlockStatus(string blockerUsername, string blockedUsername, bool block);

                [OperationContract]
                bool UpdateFriendRequestStatus(string receiverUsername, string senderUsername, bool accept);
        }
}
