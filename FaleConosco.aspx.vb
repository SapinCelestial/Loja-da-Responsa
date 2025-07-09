Public Class FaleConosco
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnSalvar_Click(sender As Object, e As EventArgs) Handles btnSalvar.Click
        'fdsf
        SqlDataSource1.Insert()
    End Sub
End Class