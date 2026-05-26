using System;
using System.Web.UI;

namespace Ecommerce_lego
{
    public partial class home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBuyNow_Click(object sender, EventArgs e)
        {
            Response.Redirect("product.aspx");
        }
    }
}
