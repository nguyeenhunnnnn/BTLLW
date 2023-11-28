using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BTLLW
{
    public class product
    {
        public int Id { get; set; }
        public string Name { get; set; }
       
        public string Image { get; set; }
        public int Price { get; set; }
        public int Quantity { get; set; }
        public int Total { get; set; }
        public product() { }
        public product(int id, string name, string img, int price, int quantity)
        {
            Id = id;
            Name = name;
            Image = img;
            Price = price;
            Quantity = quantity;
            Total = price * quantity;
           
        }
    }
}