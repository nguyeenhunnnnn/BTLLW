using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTLLW
{
    public partial class themvaogiohang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<product> ProductList = (List<product>)Application["ProductList"];
            List<product> ProductCart = (List<product>)Application["ProductCart"];
            //Lấy dữ liệu gồm id hàng, số lượng và kiểu (kiểu ở đây là đi tiếp hay ở lại trang tương ứng với 2 nút add to cart với purchase now)
            string id = Request.QueryString.Get("id");
            string type = Request.QueryString.Get("type");
            //Thêm biến để xem mặt hàng đã có trong giỏ hàng chưa
            bool checkInCart = false;
            //Tìm trong giỏ hàng của user, có thì tăng số lượng tương ứng với số lượng được gửi qua querystring và kết thúc vòng lặp, trả về biến đã có trong mặt hàng là true
            foreach (product product in ProductCart)
            {
                if (product.Id == int.Parse(id))
                {
                    product.Quantity += 1;
                    checkInCart = true;
                    break;
                }
            }
            //Nếu chưa có trong mặt hàng (!checkInCart) <=> (checkInCart == false) thì tìm mặt hàng đấy qua ID trong danh sách mặt hàng rồi thêm vào giỏ hàng của user
            if (!checkInCart)
            {
                foreach (product product in ProductList)
                {
                    if (product.Id == int.Parse(id))
                    {
                        product p = new product(product.Id, product.Name, product.Image, product.Price,1);
                        ProductCart.Add(p);
                        break;
                    }
                }
            }
            //Biến kiểu back thì quay lại trang vừa xong và go thì đi tới trang giỏ hàng tiến hành thanh toán
            if (type == "back")
            {
                Response.Redirect("trangconchitiet.aspx?id=" + id);
            }
            else
            {
                Response.Redirect("tranggiohang.aspx");
            }

        }
    }
}