using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Ecommerce_lego
{
    public partial class product : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblQuantity.Text = "1";
            }
        }

        protected void btnAddBag_Click(object sender, EventArgs e)
        {
            DataTable dt;

            
            if (Session["cart"] == null)
            {
                dt = new DataTable();

                dt.Columns.Add("ProductName");
                dt.Columns.Add("Price");
                dt.Columns.Add("Quantity");
                dt.Columns.Add("Image");

            }
            else
            {
                dt = (DataTable)Session["cart"];
            }

            DataRow dr = dt.NewRow();

            dr["ProductName"] = "LEGO Formula 1";
            dr["Price"] = 179.99;
            dr["Quantity"] = lblQuantity.Text;
            dr["Image"] = "images/77243_Prod_en-gb.png";

            dt.Rows.Add(dr);

            
            Session["cart"] = dt;

            
            Session["cartCount"] = dt.Rows.Count;

            Response.Redirect("cart.aspx");
        }

        protected void btnBuyNow_Click(object sender, EventArgs e)
        {
            Response.Redirect("checkout.aspx");
        }

        protected void btnPlus_Click(object sender, EventArgs e)
        {
            quantity = Convert.ToInt32(lblQuantity.Text);

            quantity++;

            lblQuantity.Text = quantity.ToString();
        }

        protected void btnMinus_Click(object sender, EventArgs e)
        {
            quantity = Convert.ToInt32(lblQuantity.Text);

            if (quantity > 1)
            {
                quantity--;
            }

            lblQuantity.Text = quantity.ToString();
        }
    }
}