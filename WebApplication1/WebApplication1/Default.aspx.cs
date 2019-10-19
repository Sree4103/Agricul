using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication1
{
    public partial class _Default : Page
    {
        SqlConnection con;
        SqlDataAdapter da;
        SqlCommand cmd;
      

        protected void Button1_Click(object sender, EventArgs e)
        {

            if (!Page.IsPostBack)
            {
                string username = TextBox1.Text;
                string password = TextBox2.Text;
                con = new SqlConnection(@"Server=tcp:captivatorsagri.database.windows.net,1433;Initial Catalog=CaptiavatorsAgri;Persist Security Info=False;User ID=sgunda;Password=Marvels@123;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");

                con.Open();
                cmd = new SqlCommand("INSERT INTO dbo.LoginUser (EmailID,Password) VALUES (@EmailID,@Password)", con);
                cmd.Parameters.Add("@EmailID", username);
                cmd.Parameters.Add("@Password", password);
                cmd.ExecuteNonQuery();

                Response.Write("user signed successfully");
            }
        }
      
    }
}