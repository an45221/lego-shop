using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication
{
    public partial class crudindex : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txtName_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=(localdb)\\mssqllocaldb; database=fifthdb_kathford123; integrated Security= true");

            SqlCommand cmd = new SqlCommand(
                "INSERT INTO student (Name, Email, Gender) VALUES (@a,@b,@c)", conn);

            cmd.Parameters.AddWithValue("@a", txtName.Text);
            cmd.Parameters.AddWithValue("@b", txtEmail.Text);
            cmd.Parameters.AddWithValue("@c", rblGender.SelectedValue);

            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();

            lblMsg.Text = "Data Saved";

        }
    }
}