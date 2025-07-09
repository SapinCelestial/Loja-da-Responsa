using System;

public partial class Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void SalvarItem_Click(object sender, EventArgs e)
    {
        Response.Write("<script>alert('Item salvo com sucesso!');</script>");
    }
}

