Imports System
Imports System.Data
Imports System.Data.SqlClient

Public Class Categoria
    Inherits System.Web.UI.Page

    ' String de conexão (ajuste conforme necessário)
    Private connectionString As String = "Data Source=.\SQLEXPRESS;Initial Catalog=SeuBanco;Integrated Security=True"

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        If Not IsPostBack Then
            CarregarDoadores()
        End If
    End Sub

    Protected Sub btnSalvar_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnSalvar.Click
        Using conn As New SqlConnection(connectionString)
            Dim query As String = "INSERT INTO Doadores (Id, Categoria, Descricao) VALUES (@Id, @Categoria, @Descricao)"
            Using cmd As New SqlCommand(query, conn)
                cmd.Parameters.AddWithValue("@Nome", txtId.Text)
                cmd.Parameters.AddWithValue("@Email", txtCategoria.Text)
                cmd.Parameters.AddWithValue("@Senha", txtDescricao.Text)




                conn.Close()

                SqlDataSource1.Insert()
            End Using
        End Using

        ' Limpa campos e recarrega a grid
        LimparCampos()
        CarregarDoadores()
    End Sub

    Private Sub CarregarDoadores()
        Using conn As New SqlConnection(connectionString)
            Dim query As String = "SELECT ID, Nome, Email, Telefone, Endereco, Cidade, Estado, DataCadastro FROM Doadores ORDER BY DataCadastro DESC"
            Using cmd As New SqlCommand(query, conn)
                Dim dt As New DataTable()
                Using da As New SqlDataAdapter(cmd)

                End Using
            End Using
        End Using
    End Sub

    Private Sub LimparCampos()
        txtId.Text = ""
        txtCategoria.Text = ""
        txtDescricao.Text = ""

    End Sub
End Class
