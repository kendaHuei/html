<%@ Page Language="C#" %>



<script runat="server">


  protected void Page_Load( object sender , EventArgs e ) {
    Response.ContentType = @"application/json";
    
    
    string s = "JSON string";
    if ( Request.Params[ "name" ] != null )
      s = Request.Params[ "name" ];
    
    Response.Write( "{\"name\":\"" + s +"\"}" );
  }
</script>

