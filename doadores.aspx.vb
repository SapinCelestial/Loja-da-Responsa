Imports System
Imports System.Data
Imports System.Data.SqlClient

Public Class doadores
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
            Dim query As String = "INSERT INTO Doadores (Nome, Email, Telefone, Endereco, Cidade, Estado, DataCadastro) VALUES (@Nome, @Email, @Telefone,  @Endereco,  @Cidade,  @Estado, @DataCadastro)"
            Using cmd As New SqlCommand(query, conn)
                cmd.Parameters.AddWithValue("@Nome", txtNome.Text)
                cmd.Parameters.AddWithValue("@Email", txtEmail.Text)
                cmd.Parameters.AddWithValue("@Telefone", txtTelefone.Text)
                cmd.Parameters.AddWithValue("@Endereco", txtEndereco.Text)
                cmd.Parameters.AddWithValue("@Cidade", txtCidade.Text)
                cmd.Parameters.AddWithValue("@Estado", txtEstado.Text)
                cmd.Parameters.AddWithValue("@DataCadastro", txtDataCadastro.Text)




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
        txtNome.Text = ""
        txtEmail.Text = ""
        txtTelefone.Text = ""
        txtEndereco.Text = ""
        txtCidade.Text = ""
        txtEstado.Text = ""
        txtDataCadastro.Text = ""

    End Sub
End Class
