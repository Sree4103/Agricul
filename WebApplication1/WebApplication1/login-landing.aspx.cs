using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class login_landing : System.Web.UI.Page
    {
        protected void Page_Load(object o, EventArgs e)
        {
            if (Session["userid"] == null) { Response.Redirect("./Default.aspx"); }
        }
      protected void predict(object sender, EventArgs e)
        {
            Response.Redirect("./Predictions.aspx");
        }

        protected void getSoilHealthCard(object sender, EventArgs e)
        {
            Response.Redirect("./SoilHealthCard.aspx");
        }
        protected void getProfile(object sender, EventArgs e)
        {
            Response.Redirect("./Profile.aspx");
        }
        protected void getSuggestions(object sender, EventArgs e)
        {
            Response.Redirect("./Suggestions.aspx");
        }
        
    }
}