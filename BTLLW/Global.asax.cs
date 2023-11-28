using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace BTLLW
{
    public class Global : System.Web.HttpApplication
    {
        
        protected void Application_Start(object sender, EventArgs e)
        {
           //them user
            Application["User"] = new List<user>();
            List<user> UserList = (List<user>)Application["User"];
            UserList.Add(new user("huong", "nguyeenhuong12345@gmail.com", "huong123"));
            //them product list
            Application["ProductList"] = new List<product>();
            List<product> ProductList = (List<product>)Application["ProductList"];
            Application["ProductCart"] = new List<product>();
            List<product> ProductCart = (List<product>)Application["ProductCart"];
            ProductList.Add(new product(1, "Iphone 14 Pro Max", "./anh/dt2.jpg", 26900000, 1));
            ProductList.Add(new product(2, "Iphone 15 Pro", "./anh/dt3.jpg", 32900000, 1));
            ProductList.Add(new product(3, "Iphone 15 Pro Max", "./anh/dt4.jpg", 43900000, 1));
            ProductList.Add(new product(4, "Samsung S23 Ultra", "./anh/dt1.jpg", 21900000, 1));
            ProductList.Add(new product(5, "Samsung Zflip 5", "./anh/dt7.jpg", 28900000, 1));
            ProductList.Add(new product(6, "CasperInverter 458 lít RS 460PG", "./anh/tl1.jpg", 9900000, 1));
            ProductList.Add(new product(7, "Samsung Inverter 208 lít RT20HAR8", "./anh/tl2.jpg", 5900000, 1));
            ProductList.Add(new product(8, "Samsung Inverter 488 lít RT20HAR8", "./anh/tl3.jpg", 16900000, 1));
            ProductList.Add(new product(9, "Samsung Inverter 655 lít", "./anh/tl4.jpg", 16990000, 1));
            ProductList.Add(new product(10, "LG Inverter 519 lít GR - B256JDS ", "./anh/tl5.jpg", 12990000, 1));

        }

        protected void Session_Start(object sender, EventArgs e)
        {
            Session["user"] = new user();
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}