<%@ Page Language="C#" %>
<%@ Import Namespace="Newtonsoft.Json" %>
<script runat="server">
    void Page_Load(object sender, EventArgs e)
    {
        string key = Request.QueryString["q"];
        if (key == null) return;

        Response.ContentType = "application/json";
        
        string[] data ={"HOME","HTML","HTML4","HTML5","ASP.NET", "ASP.NET Web Form", 
                  "ASP.NET MVC"};

        //string s = JsonConvert.SerializeObject(data.Where(k => k.Contains(key.ToUpper())));
        //Response.Write(s);
        
    }

</script>

