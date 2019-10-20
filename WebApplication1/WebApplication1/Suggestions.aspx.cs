using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Http;
using System.Net.Http.Headers;
using Newtonsoft.Json;


namespace WebApplication1
{
    public partial class Suggestions : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userid"]==null) { Response.Redirect("./Default.aspx"); }
        }
        protected void getPrediction(object sender, EventArgs e)
        {
            HttpWebRequest apiRequest =
      WebRequest.Create("http://131.163.211.221:4020/predict") as HttpWebRequest;
            string apiResponse = "";
            using (HttpWebResponse response = apiRequest.GetResponse() as HttpWebResponse)
            {
                StreamReader reader = new StreamReader(response.GetResponseStream());
                apiResponse = reader.ReadToEnd();
            }

            //if (response.IsSuccessStatusCode)
            //{
            string rootObject = JsonConvert.DeserializeObject<string>(apiResponse);
            Response.Write("Suitable crop for prediction based on soil report is :" + rootObject);
        }
    }
}