<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="doadores.aspx.vb" Inherits="WebApplication6.doadores" %>

<!DOCTYPE html>
<html lang="pt-br">
<head runat="server">
    <meta charset="UTF-8">
    <title>Lista de Doadores</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.4/css/bulma.min.css">
</head>
<body>
    <form id="form1" runat="server">
        <section class="section">
            <div class="container">
                <h1 class="title has-text-primary">Cadastro de Doadores</h1>

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
                        <label class="label">Telefone</label>
                        <asp:TextBox ID="txtTelefone" runat="server" CssClass="input" />
                    </div>
                    <div class="column is-6">
                        <label class="label">Endereço</label>
                        <asp:TextBox ID="txtEndereco" runat="server" CssClass="input" />
                    </div>
                    <div class="column is-6">
                        <label class="label">Cidade</label>
                        <asp:TextBox ID="txtCidade" runat="server" CssClass="input" />
                    </div>

                    <div class="column is-6">
                        <label class="label">Estado</label>
                        <asp:TextBox ID="txtEstado" runat="server" CssClass="input" MaxLength="2" />
                    </div>
                     
                    <div class="column is-6">
     <label class="label">DataCadastro</label>
     <asp:TextBox ID="txtDataCadastro" runat="server" CssClass="input" />
 </div>
                    <div class="column is-12">
                        <asp:Button ID="btnSalvar" runat="server" Text="Salvar Doador" CssClass="button is-primary" OnClick="btnSalvar_Click" />
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:BDLOJAConnectionString %>" DeleteCommand="DELETE FROM [Doadores] WHERE [ID] = @original_ID AND [Nome] = @original_Nome AND [Email] = @original_Email AND (([Telefone] = @original_Telefone) OR ([Telefone] IS NULL AND @original_Telefone IS NULL)) AND (([Endereco] = @original_Endereco) OR ([Endereco] IS NULL AND @original_Endereco IS NULL)) AND (([Cidade] = @original_Cidade) OR ([Cidade] IS NULL AND @original_Cidade IS NULL)) AND (([Estado] = @original_Estado) OR ([Estado] IS NULL AND @original_Estado IS NULL)) AND (([DataCadastro] = @original_DataCadastro) OR ([DataCadastro] IS NULL AND @original_DataCadastro IS NULL))" InsertCommand="INSERT INTO [Doadores] ([Nome], [Email], [Telefone], [Endereco], [Cidade], [Estado], [DataCadastro]) VALUES (@Nome, @Email, @Telefone, @Endereco, @Cidade, @Estado, @DataCadastro)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Doadores]" UpdateCommand="UPDATE [Doadores] SET [Nome] = @Nome, [Email] = @Email, [Telefone] = @Telefone, [Endereco] = @Endereco, [Cidade] = @Cidade, [Estado] = @Estado, [DataCadastro] = @DataCadastro WHERE [ID] = @original_ID AND [Nome] = @original_Nome AND [Email] = @original_Email AND (([Telefone] = @original_Telefone) OR ([Telefone] IS NULL AND @original_Telefone IS NULL)) AND (([Endereco] = @original_Endereco) OR ([Endereco] IS NULL AND @original_Endereco IS NULL)) AND (([Cidade] = @original_Cidade) OR ([Cidade] IS NULL AND @original_Cidade IS NULL)) AND (([Estado] = @original_Estado) OR ([Estado] IS NULL AND @original_Estado IS NULL)) AND (([DataCadastro] = @original_DataCadastro) OR ([DataCadastro] IS NULL AND @original_DataCadastro IS NULL))">
                            <DeleteParameters>
                                <asp:Parameter Name="original_ID" Type="Int32" />
                                <asp:Parameter Name="original_Nome" Type="String" />
                                <asp:Parameter Name="original_Email" Type="String" />
                                <asp:Parameter Name="original_Telefone" Type="String" />
                               
                                <asp:Parameter Name="original_Endereco" Type="String" />
                                <asp:Parameter Name="original_Cidade" Type="String" />
                                <asp:Parameter Name="original_Estado" Type="String" />

                                <asp:Parameter Name="original_DataCadastro" Type="DateTime" />

                            </DeleteParameters>
                            <InsertParameters>
                                <asp:ControlParameter ControlID="txtNome" Name="Nome" PropertyName="Text" Type="String" />
                                <asp:ControlParameter ControlID="txtEmail" Name="Email" PropertyName="Text" Type="String" />
                                <asp:ControlParameter ControlID="txtTelefone" Name="Telefone" PropertyName="Text" Type="String" />
                                <asp:ControlParameter ControlID="txtEndereco" Name="Endereco" PropertyName="Text" Type="String" />
                                <asp:ControlParameter ControlID="txtCidade" Name="Cidade" PropertyName="Text" Type="String" />
                                <asp:ControlParameter ControlID="txtEstado" Name="Estado" PropertyName="Text" Type="String" />
                                <asp:ControlParameter Name="DataCadastro" Type="DateTime" ControlID="txtDataCadastro" PropertyName="Text" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="Nome" Type="String" />
                                <asp:Parameter Name="Email" Type="String" />
                                <asp:Parameter Name="Telefone" Type="String" />
                                <asp:Parameter Name="Endereco" Type="String" />
                                <asp:Parameter Name="Cidade" Type="String" />
                                <asp:Parameter Name="Estado" Type="String" />
                                <asp:Parameter Name="DataCadastro" Type="DateTime" />
                                <asp:Parameter Name="original_ID" Type="Int32" />
                                <asp:Parameter Name="original_Nome" Type="String" />
                                <asp:Parameter Name="original_Email" Type="String" />
                                <asp:Parameter Name="original_Telefone" Type="String" />
                                <asp:Parameter Name="original_Endereco" Type="String" />
                                <asp:Parameter Name="original_Cidade" Type="String" />
                                <asp:Parameter Name="original_Estado" Type="String" />
                                <asp:Parameter Name="original_DataCadastro" Type="DateTime" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </div>
                </div>

                <hr />

                <h2 class="title is-4">Lista de Doadores</h2>
                <asp:GridView ID="GridViewDoadores" runat="server" CssClass="table is-striped is-fullwidth" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" DataKeyNames="ID">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                        <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                        <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        <asp:BoundField DataField="Telefone" HeaderText="Telefone" SortExpression="Telefone" />
                   
                        <asp:BoundField DataField="Endereco" HeaderText="Endereco" SortExpression="Endereco" />
                        <asp:BoundField DataField="Cidade" HeaderText="Cidade" SortExpression="Cidade" />
                        <asp:BoundField DataField="Estado" HeaderText="Estado" SortExpression="Estado" />
                        <asp:BoundField DataField="DataCadastro" HeaderText="DataCadastro" SortExpression="DataCadastro" />
                        </Columns>
                </asp:GridView>
            </div>
        </section>
    </form>
</body>
</html>
