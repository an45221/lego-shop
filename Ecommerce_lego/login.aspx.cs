using System;
using System.Data.SqlClient;

namespace Ecommerce_lego
{
    public partial class login : System.Web.UI.Page
    {
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(
                @"Data Source=(localdb)\MSSQLLocalDB; database = lego; Integrated Security=True");

            SqlCommand cmd = new SqlCommand(
                "SELECT * FROM legoshop WHERE Email=@Email AND Password=@Password", con);

            cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
            cmd.Parameters.AddWithValue("@Password", txtPassword.Text);

            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                
                Session["user"] = txtEmail.Text;

                
                Response.Redirect("home.aspx");
            }
            else
            {
                lblMessage.Text = "Invalid Email or Password";
            }

            con.Close();
        }
    }
}