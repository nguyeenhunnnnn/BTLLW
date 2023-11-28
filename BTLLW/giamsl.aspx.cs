using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTLLW
{
    public partial class giamsl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Giảm số lượng mặt hàng trong giỏ
            user user = (user)Session["user"];
            List<product> ProductCart = (List<product>)Application["ProductCart"];
            //Lấy id của mặt hàng cần giảm qua QueryString
            string id = Request.QueryString.Get("id");
            //Tìm trong giỏ hàng, id nào trùng thì giảm, số lượng mà =1 thì xóa luôn
            foreach (product product in ProductCart)
            {
                if (product.Id == int.Parse(id))
                {
                    if (product.Quantity > 1)
                    {
                        product.Quantity--;
                        Response.Redirect("tranggiohang.aspx");
                        break;
                    }
                    else
                    {
                        Response.Redirect("xoamathang.aspx?id=" + int.Parse(id));
                        break;
                    }
                }
            }
        }
    }
}