using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTLLW
{
    public partial class tangsl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Tăng số lượng sản phẩm trong giỏ hàng
            user user = (user)Session["user"];
            List<product> ProductCart = (List<product>)Application["ProductCart"];
            //Lấy id mặt hàng cần xóa (id được gửi qua QueryString khi click vào mặt hàng đó)
            string id = Request.QueryString.Get("id");
            //Tìm kiếm bằng id, trùng thì tăng số lượng
            foreach (product product in ProductCart)
            {
                if (product.Id == int.Parse(id))
                {
                    product.Quantity++;
                    Response.Redirect("tranggiohang.aspx");
                    break;
                }
            }
        }
    }
}