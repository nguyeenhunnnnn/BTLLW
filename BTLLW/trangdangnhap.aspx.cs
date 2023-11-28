using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTLLW
{
    public partial class trangdangnhap : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           if(IsPostBack)
            {
                List<user> userList = (List<user>)Application["User"];
                string tenkh = Request.Form["txtTenKH"];
                string passkh = Request.Form["txtPassword"];

                bool check = false;
                errmes1.InnerText = "";
                errpass.InnerText = "";
                foreach( user u in userList)
                {
                    if(u.Username==tenkh && u.Password==passkh)
                    {
                        check = true;
                        
                        user user1 = (user)Session["user"];
                        user1.Username = u.Username;
                        user1.Password = u.Password;
                        user1.Email = u.Email;
                        Response.Redirect("trangchu.aspx");
                        break;
                    }
                    
                    if(u.Username == tenkh && u.Password != passkh)
                    {
                        errpass.InnerText = "Sai mat khau";          
                        return;
                    }
                   
                   
                }
                if(!check)
                {
                    errmes1.InnerText = "Tai khoan khong ton tai";
                }


            }
        }
    }
}