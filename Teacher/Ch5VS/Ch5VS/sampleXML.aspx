<%@ Page Language="C#" %>


<script runat="server">

  protected void Page_Load( object sender , EventArgs e ) {
    Response.ContentType = "text/xml";
    Response.Write( "<Employee><id>1</id><name>mary</name></Employee>");
  }
</script>

