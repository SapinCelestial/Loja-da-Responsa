Public Class Beneficiarios
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnSalvar_Click(sender As Object, e As EventArgs) Handles btnSalvar.Click
        'Aqui está o C do CRUD

        SqlDataSource2.Insert()


    End Sub

    Protected Sub SqlDataSource2_Selecting(sender As Object, e As SqlDataSourceSelectingEventArgs) Handles SqlDataSource2.Selecting

    End Sub
End Class