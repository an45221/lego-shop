using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ecommerce_lego
{
    public partial class home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AddToCart_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;

            string data = btn.CommandArgument;
            string[] product = data.Split('|');

            string name = product[0];
            string price = product[1];

            // Create cart if not exists
            if (Session["cart"] == null)
            {
                List<string> cart = new List<string>();
                cart.Add(name + " - Rs." + price);
                Session["cart"] = cart;
            }
            else
            {
                List<string> cart = (List<string>)Session["cart"];
                cart.Add(name + " - Rs." + price);
                Session["cart"] = cart;
            }
        }

        protected void CartList_Click(object sender, BulletedListEventArgs e)
        {
            if (Session["cart"] != null)
            {
                List<string> cart = (List<string>)Session["cart"];
                CartList.DataSource = cart;
                CartList.DataBind();
            }
        }
    }
}