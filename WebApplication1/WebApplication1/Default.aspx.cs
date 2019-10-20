using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace WebApplication1
{
    public partial class _Default : Page
    {



        protected void Page_Load(object sender, EventArgs e)
        {
            Session.Contents.Clear();
        }

           protected void Button1_Click(object sender, EventArgs e)
        {

            string username = TextBox1.Text;
            string password = TextBox2.Text;


            using (SqlConnection con = new SqlConnection(@"Server=tcp:captivatorsagri.database.windows.net,1433;Initial Catalog=CaptiavatorsAgri;Persist Security Info=False;User ID=sgunda;Password=Marvels@123;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;"))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select FarmerID,FarmerUserName,Password from dbo.FarmerDetails where FarmerID='" + username + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                DataTable ds = new DataTable();
                ds.Load(dr);
                if (!ds.Equals(null))
                {
                    foreach (DataRow row in ds.Rows)
                    {

                        string user = row["FarmerID"].ToString();
                        string pswd = row["Password"].ToString();
                        Session["userid"] = username;
                        Session["user"]= row["FarmerUserName"].ToString();
                        if (user.Contains(username) && pswd.Equals(pswd))
                        {
                            Console.Write("user name and password verified successfully.");
                            Response.Redirect("./login-landing.aspx");
                        }
                    }
                }

            }


        }

    }
}