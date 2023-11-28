using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTLLW
{
    public partial class trangdangxuat : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            user user = (user)Session["user"];
            List<user> Users = (List<user>)Application["User"];
            int index = Users.FindIndex(u => u.Username == user.Username);
            List<product> ProductCart = (List<product>)Application["ProductCart"];
            Users[index].userCart.Clear();
            Users[index].userCart = new List<product>();
            foreach (product product in ProductCart)
            {
                Users[index].userCart.Add(product);
            }
            ProductCart.Clear();
            ProductCart = new List<product>();
            //Đưa session user về dữ liệu = null
            user.Username = null;
            user.Password = null;
            user.Email = null;

            Response.Redirect("trangchu.aspx");
        }
    }
}