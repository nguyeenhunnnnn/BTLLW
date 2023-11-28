using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTLLW
{
    public partial class trangchu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            //Xử lý dữ liệu trang chủ Home.aspx
            //Lấy User từ Session User
            //Lấy danh sách User và thứ tự của User đang đăng nhập
            user user = (user)Session["user"];
            if (user.Username != null && user.Email != null)
            {//Nếu đã đăng nhập thì hiện tên, email và nút đăng xuất
                userinfo.InnerHtml = "<p><a id=\"btndn\" class=\"btn1\">"+user.Username+"</a></p><p><a href=\"trangdangxuat.aspx\" id =\"btndk\" class=\"btn1\">Đăng xuất</a></p>";
            }
            List<product> ProductList = (List<product>)Application["ProductList"];
          
            //Tạo DS tương ứng vs 6 ds cần in ra màn hình
            List<product> dienthoaiList = new List<product>();
            List<product> tulanhList = new List<product>();

            foreach (product p in ProductList)
            {
                if(p.Id>0 && p.Id<=5)
                {
                    dienthoaiList.Add(p);
                }
                if (p.Id > 5 && p.Id <= 10)
                {
                    tulanhList.Add(p);
                }
            }
            Dienthoai.DataSource = dienthoaiList;
            Dienthoai.DataBind();
            Tulanh.DataSource = tulanhList;
            Tulanh.DataBind();
        }
    }
}