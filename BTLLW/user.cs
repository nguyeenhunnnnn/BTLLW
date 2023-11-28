using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BTLLW
{
    public class user
    {
        public string Username { get; set; }
        public string Email { get; set; }
        public string Password { get; set; }
        public List<product> userCart = new List<product>();
        public user() { }
        public user(string username, string email, string password)
        {
            Username = username;
            Email = email;
            Password = password;
        }
    }
}