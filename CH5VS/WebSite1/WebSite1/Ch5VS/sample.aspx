<%@ Page Language="C#" %>
<script runat="server">

  protected void Page_Load( object sender , EventArgs e ) {
    var s="";
    //if (Request.Params["id"] != null)
    //  s = Request.Params["id"];

    if (Request.QueryString["id"] != null)
      s = Request.QueryString["id"];
    
    Response.Write( "hello, " + s + " " + System.DateTime.Now.ToString( ) );
  }
</script>

