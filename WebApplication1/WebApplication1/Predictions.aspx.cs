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
      
        public partial class Predictions : System.Web.UI.Page
    {

        private const string baseURL = "http://api.openweathermap.org/data/2.5/weather?";
        private const string DATA = @"{""object"":{""name"":""Name""}}";

        protected void Page_Load(object o, EventArgs e)
        {
            if (Session["userid"] == null) { Response.Redirect("./Default.aspx"); }
        }
        protected async void getPredictionsAsync(object sender, EventArgs e)
        {
            string completeurl = baseURL + "lat=" + (latitude.Text).ToString() + "&lon=" + longitude.Text.ToString() + "&APPID=eef404c8337787b067be0f7e371cd380";
            //Weather responseJson = null;
            HttpWebRequest apiRequest =
       WebRequest.Create(completeurl) as HttpWebRequest;
            string apiResponse = "";
            using (HttpWebResponse response = apiRequest.GetResponse() as HttpWebResponse)
            {
                StreamReader reader = new StreamReader(response.GetResponseStream());
                apiResponse = reader.ReadToEnd();
            }

            //if (response.IsSuccessStatusCode)
            //{
            ResponseWeather rootObject = JsonConvert.DeserializeObject<ResponseWeather>(apiResponse);

            StringBuilder sb = new StringBuilder();
            sb.Append("<table><tr><th>Weather Description</th></tr>");
            sb.Append("<tr><td>City:</td><td>" +
            rootObject.name + "</td></tr>");
            sb.Append("<tr><td>Country:</td><td>" +
            rootObject.sys.country + "</td></tr>");
            sb.Append("<tr><td>Wind:</td><td>" +
            rootObject.wind.speed + " Km/h</td></tr>");
            sb.Append("<tr><td>Current Temperature:</td><td>" +
            rootObject.main.temp + " °C</td></tr>");
            sb.Append("<tr><td>Humidity:</td><td>" +
            rootObject.main.humidity + "</td></tr>");
            sb.Append("<tr><td>Weather:</td><td>" +
            rootObject.weather[0].description + "</td></tr>");
            sb.Append("</table>");
            string c = sb.ToString();
            Response.Write("Temperature in the current Location :" + rootObject.main.temp.ToString());
        }

            //HttpWebRequest request = (HttpWebRequest)WebRequest.Create(completeurl);
            //request.Method = "GET";
            //request.ContentType = "application/json";
            //request.ContentLength = DATA.Length;
            //StreamWriter requestWriter = new StreamWriter(request.GetRequestStream(), System.Text.Encoding.ASCII);
            //requestWriter.Write(DATA);
            //requestWriter.Close();

            //try
            //{
            //    WebResponse webResponse = request.GetResponse();
            //    Stream webStream = webResponse.GetResponseStream();
            //    StreamReader responseReader = new StreamReader(webStream, Encoding.UTF8);
            //    string response = responseReader.ReadToEnd();


            //    responseReader.Close();
            //}
            //catch (Exception ex)
            //{
            //    Console.Out.WriteLine("-----------------");
            //    Console.Out.WriteLine(ex.Message);
            //    Response.Write(ex.Message);
            //}
        
    }
public class Coord
{
    public double lon { get; set; }
    public double lat { get; set; }
}

public class Weather
{
    public int id { get; set; }
    public string main { get; set; }
    public string description { get; set; }
    public string icon { get; set; }
}

public class Main
{
    public double temp { get; set; }
    public int pressure { get; set; }
    public int humidity { get; set; }
    public double temp_min { get; set; }
    public double temp_max { get; set; }
}

public class Wind
{
    public double speed { get; set; }
    public int deg { get; set; }
}

public class Clouds
{
    public int all { get; set; }
}

public class Sys
{
    public int type { get; set; }
    public int id { get; set; }
    public double message { get; set; }
    public string country { get; set; }
    public int sunrise { get; set; }
    public int sunset { get; set; }
}

public class ResponseWeather
{
    public Coord coord { get; set; }
    public List<Weather> weather { get; set; }
    public string @base { get; set; }
    public Main main { get; set; }
    public int visibility { get; set; }
    public Wind wind { get; set; }
    public Clouds clouds { get; set; }
    public int dt { get; set; }
    public Sys sys { get; set; }
    public int id { get; set; }
    public string name { get; set; }
    public int cod { get; set; }
}
}

