using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTLLW
{
    public partial class trangconchitiet : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Gọi DS fix cứng data
            List<product> ProductList = (List<product>)Application["ProductList"];
            //Lấy id của sản phẩm được click (qua QueryString)
            string id = Request.QueryString.Get("id");
            //Tìm kiếm sản phẩm trong DS đc gọi
            foreach (product product in ProductList)
            {
                //Thấy sản phẩm trùng ID thì tạo 1 ds khác, thêm sp và bind ra màn hình qua thẻ id = productData
                if (product.Id == int.Parse(id))
                {
                    List<product> Details = new List<product>();
                    Details.Add(product);
                    productData.DataSource = Details;
                    productData.DataBind();
                    break;
                }
            }
        }
    }
}