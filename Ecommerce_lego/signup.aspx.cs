using System;
using System.Data.SqlClient;

namespace Ecommerce_lego
{
    public partial class signup : System.Web.UI.Page
    {
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB; database = lego; Integrated Security=True");

            SqlCommand cmd = new SqlCommand(
                "INSERT INTO legoshop (FullName, Email, Password) VALUES(@FullName, @Email, @Password)", con);

            cmd.Parameters.AddWithValue("@FullName", txtFullName.Text);
            cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
            cmd.Parameters.AddWithValue("@Password", txtPassword.Text);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}