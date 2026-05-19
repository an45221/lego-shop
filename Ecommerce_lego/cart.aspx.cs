using System;
using System.Data;

namespace Ecommerce_lego
{
    public partial class cart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["cart"] != null)
            {
                DataTable dt = (DataTable)Session["cart"];

                rptCart.DataSource = dt;
                rptCart.DataBind();

                double total = 0;

                foreach (DataRow row in dt.Rows)
                {
                    total += Convert.ToDouble(row["Price"])
                    * Convert.ToInt32(row["Quantity"]);
                }

                lblTotal.Text = total.ToString();
            }
        }
    }
}