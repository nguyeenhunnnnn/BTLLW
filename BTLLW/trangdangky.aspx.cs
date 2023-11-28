using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTLLW
{
    public partial class trangdangky : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<user> UList = (List<user>)Application["User"];
            if (IsPostBack)
            {
                string nameU = Request.Form["txtTenKH"];
                string emailU = Request.Form["txtEmail"];
                string passU = Request.Form["txtPassword"];
                string rePassU = Request.Form["txtRePassword"];
                errmes1.InnerText = "";
                errmesEmail.InnerText = "";
                errpass.InnerText = "";
                errRepass.InnerText = "";
                bool check = true;
                user uKH = new user(nameU, emailU, passU);

              
                foreach(user u in UList)
                {
                    if(u.Username==nameU && u.Password==passU)
                    {
                        check = false;
                        errmes1.InnerText = "Da co tai khoan";
                        break;
                    }
                }
                    if(check)
                    {
                        UList.Add(uKH);
                        Response.Redirect("trangdangnhap.aspx");
                    }
               }

            }
        }
    }
