using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTLLW
{
    public partial class trangDSSP : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
         
            List<product> ProductList = (List<product>)Application["ProductList"];

            //Tạo DS tương ứng vs 6 ds cần in ra màn hình
            List<product> dienthoai = new List<product>();
            

            foreach (product p in ProductList)
            {
                if (p.Id > 0 && p.Id <= 5)
                {
                    dienthoai.Add(p);
                }
            
            }
            dienthoaiList.DataSource = dienthoai;
            dienthoaiList.DataBind();
            
        }
    }
}