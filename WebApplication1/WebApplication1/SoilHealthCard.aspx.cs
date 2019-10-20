using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class SoilHealthCard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userid"] == null) { Response.Redirect("./Default.aspx"); }
            using (SqlConnection con = new SqlConnection(@"Server=tcp:captivatorsagri.database.windows.net,1433;Initial Catalog=CaptiavatorsAgri;Persist Security Info=False;User ID=sgunda;Password=Marvels@123;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;"))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from dbo.Landdetails where SurveyNo in (select SurveyNo from dbo.FarmerDetails where FarmerID='" + Session["userid"] + "')", con);
                SqlDataReader dr = cmd.ExecuteReader();
                DataTable ds = new DataTable();
                ds.Load(dr);
                if (!ds.Equals(null))
                {
                    if (ds.Rows.Count >= 1)
                    {
                        foreach (DataRow row in ds.Rows)
                        {
                            TableRow tr = new TableRow();
                            tr.CssClass = "row";
                            foreach (DataColumn dc in ds.Columns)
                            {
                                TableCell tc1 = new TableCell();
                                TableCell tc2 = new TableCell();
                                tc1.Text = dc.ColumnName;
                                tc2.Text = row[dc.ColumnName].ToString();
                                tr.Cells.Add(tc1);
                                tr.Cells.Add(tc2);

                            }
                            landDetails.Rows.Add(tr);
                        }
                    }
                }

            }
        }
    }
}