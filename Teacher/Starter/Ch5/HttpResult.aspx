<%@ Page Language="C#" %>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
     // Response.Write("Welcome:");
      Response.Write("Welcome:" + Request.Params["id"].ToString() );
    }
</script>

