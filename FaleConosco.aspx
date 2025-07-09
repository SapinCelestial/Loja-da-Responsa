<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="FaleConosco.aspx.vb" Inherits="WebApplication6.FaleConosco" %>

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
                <h1 class="title has-text-primary">Cadastro de Fale Conosco</h1>

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
                        <label class="label">Mensagem</label>
                        <asp:TextBox ID="txtMensagem" runat="server" CssClass="input" />
                    </div> 
                    <div class="column is-6">
    <label class="label">DataEnvio</label>
    <asp:TextBox ID="txtDataEnvio" runat="server" CssClass="input" />
</div>        
                    <div class="column is-12">
                        <asp:Button ID="btnSalvar" runat="server" Text="Salvar Usuario" CssClass="button is-primary" OnClick="btnSalvar_Click" />
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:bdlojaConnectionString2 %>" DeleteCommand="DELETE FROM [FaleConosco] WHERE [MensagemID] = @original_MensagemID AND (([Nome] = @original_Nome) OR ([Nome] IS NULL AND @original_Nome IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([Mensagem] = @original_Mensagem) OR ([Mensagem] IS NULL AND @original_Mensagem IS NULL)) AND (([DataEnvio] = @original_DataEnvio) OR ([DataEnvio] IS NULL AND @original_DataEnvio IS NULL))" InsertCommand="INSERT INTO [FaleConosco] ([Nome], [Email], [Mensagem], [DataEnvio]) VALUES (@Nome, @Email, @Mensagem, @DataEnvio)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [MensagemID], [Nome], [Email], [Mensagem], [DataEnvio] FROM [FaleConosco]" UpdateCommand="UPDATE [FaleConosco] SET [Nome] = @Nome, [Email] = @Email, [Mensagem] = @Mensagem, [DataEnvio] = @DataEnvio WHERE [MensagemID] = @original_MensagemID AND (([Nome] = @original_Nome) OR ([Nome] IS NULL AND @original_Nome IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([Mensagem] = @original_Mensagem) OR ([Mensagem] IS NULL AND @original_Mensagem IS NULL)) AND (([DataEnvio] = @original_DataEnvio) OR ([DataEnvio] IS NULL AND @original_DataEnvio IS NULL))">
                            <DeleteParameters>

                                <asp:Parameter Name="original_MensagemID" Type="Int32" />
                                <asp:Parameter Name="original_Nome" Type="String" />
                                <asp:Parameter Name="original_Email" Type="String" />
                                <asp:Parameter Name="original_Mensagem" Type="String" />
                                <asp:Parameter Name="original_DataEnvio" Type="DateTime" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:ControlParameter ControlID="txtNome" Name="Nome" PropertyName="Text" Type="String" />
                                <asp:ControlParameter ControlID="txtEmail" Name="Email" PropertyName="Text" Type="String" />
                                <asp:ControlParameter ControlID="txtMensagem" Name="Mensagem" PropertyName="Text" Type="String" />
                                <asp:ControlParameter ControlID="txtDataEnvio" Name="DataEnvio" PropertyName="Text" Type="DateTime" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="Nome" Type="String" />
                                <asp:Parameter Name="Email" Type="String" />

                                <asp:Parameter Name="Mensagem" Type="String" />
                                <asp:Parameter Name="DataEnvio" Type="DateTime" />
                               
                                
                                <asp:Parameter Name="original_MensagemID" Type="Int32" />
                                <asp:Parameter Name="original_Nome" Type="String" />
                                <asp:Parameter Name="original_Email" Type="String" />
                                <asp:Parameter Name="original_Mensagem" Type="String" />
                                <asp:Parameter Name="original_DataEnvio" Type="DateTime" />
                               
                                
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </div>
                </div>

                <hr />

                <h2 class="title is-4">Lista de Fale Conosco</h2>
                <asp:GridView ID="GridViewUsuarios" runat="server" CssClass="table is-striped is-fullwidth" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" DataKeyNames="MensagemID">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
          
                        <asp:BoundField DataField="MensagemID" HeaderText="MensagemID" SortExpression="MensagemID" InsertVisible="False" ReadOnly="True" />
                        <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />

                        <asp:BoundField DataField="Mensagem" HeaderText="Mensagem" SortExpression="Mensagem" />
                      
                        <asp:BoundField DataField="DataEnvio" HeaderText="DataEnvio" SortExpression="DataEnvio" />
                      
                    </Columns>
                </asp:GridView>
            </div>
        </section>
    </form>
</body>
</html>
