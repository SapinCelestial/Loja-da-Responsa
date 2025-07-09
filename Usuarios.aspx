<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Usuarios.aspx.vb" Inherits="WebApplication6.Usuarios" %>

<!DOCTYPE html>
<html lang="pt-br">
<head runat="server">
    <meta charset="UTF-8">
    <title>Usuário</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.4/css/bulma.min.css">
</head>
<body>
    <form id="form1" runat="server">
        <section class="section">
            <div class="container">
                <h1 class="title has-text-primary">Cadastro de Usuarios</h1>

                <div class="columns is-multiline">
                    <div class="column is-6">
                        <label class="label">Nome</label>
                        <asp:TextBox ID="txtNome" runat="server" CssClass="input" />
                    </div>
                    <div class="column is-6">
                        <label class="label">Email</label>
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="input" />
                    </div>                
                    <div class="column is-6">
                        <label class="label">Senha</label>
                        <asp:TextBox ID="txtSenha" runat="server" CssClass="input" />
                    </div> 
                    <div class="column is-6">
      
                    <div class="column is-12">
                        <asp:Button ID="btnSalvar" runat="server" Text="Salvar Usuario" CssClass="button is-primary" OnClick="btnSalvar_Click" />
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:bdlojaConnectionString2 %>" DeleteCommand="DELETE FROM [Usuarios] WHERE [UsuarioID] = @original_UsuarioID AND (([Nome] = @original_Nome) OR ([Nome] IS NULL AND @original_Nome IS NULL)) AND (([Senha] = @original_Senha) OR ([Senha] IS NULL AND @original_Senha IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL))" InsertCommand="INSERT INTO [Usuarios] ([Nome], [Senha], [Email]) VALUES (@Nome, @Senha, @Email)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [Nome], [Senha], [Email], [UsuarioID] FROM [Usuarios]" UpdateCommand="UPDATE [Usuarios] SET [Nome] = @Nome, [Senha] = @Senha, [Email] = @Email WHERE [UsuarioID] = @original_UsuarioID AND (([Nome] = @original_Nome) OR ([Nome] IS NULL AND @original_Nome IS NULL)) AND (([Senha] = @original_Senha) OR ([Senha] IS NULL AND @original_Senha IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL))">
                            <DeleteParameters>

                                <asp:Parameter Name="original_UsuarioID" Type="Int32" />
                                <asp:Parameter Name="original_Nome" Type="String" />
                                <asp:Parameter Name="original_Senha" Type="String" />
                                <asp:Parameter Name="original_Email" Type="String" />
                             
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:ControlParameter ControlID="txtNome" Name="Nome" PropertyName="Text" Type="String" />
                                <asp:ControlParameter ControlID="txtSenha" Name="Senha" PropertyName="Text" Type="String" />
                                <asp:ControlParameter ControlID="txtEmail" Name="Email" PropertyName="Text" Type="String" />
                               
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="Nome" Type="String" />
                                <asp:Parameter Name="Senha" Type="String" />

                                <asp:Parameter Name="Email" Type="String" />
                               
                               
                                
                                <asp:Parameter Name="original_UsuarioID" Type="Int32" />
                                <asp:Parameter Name="original_Nome" Type="String" />
                                <asp:Parameter Name="original_Senha" Type="String" />
                                <asp:Parameter Name="original_Email" Type="String" />
                               
                                
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </div>
                </div>

                <hr />

                <h2 class="title is-4">Lista de Fale Conosco</h2>
                <asp:GridView ID="GridViewUsuarios" runat="server" CssClass="table is-striped is-fullwidth" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" DataKeyNames="UsuarioID">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
          
                        <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" />
                        <asp:BoundField DataField="Senha" HeaderText="Senha" SortExpression="Senha" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />

                        <asp:BoundField DataField="UsuarioID" HeaderText="UsuarioID" SortExpression="UsuarioID" InsertVisible="False" ReadOnly="True" />
                      
                     
                      
                    </Columns>
                </asp:GridView>
            </div>
        </section>
    </form>
</body>
</html>
