using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTLLW
{
    public partial class tranggiohang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int sum = 0;
            //Tính tổng số lượng và giá trị của từng mặt hàng trong giỏ hàng
            List<product> ProductCart = (List<product>)Application["ProductCart"];
            foreach (product product in ProductCart)
            {
                product.Total = product.Price * product.Quantity;
                sum += product.Total;
            }
            //Truyền data của giỏ hàng vào và hiện lên màn hình qua thẻ html id = cartList
            cartList.DataSource = ProductCart;
            cartList.DataBind();
            //Hiện tổng tiền mặt hàng lên màn hình
            TotalPrices.InnerHtml = $"{sum.ToString()}";
        }
    }
}