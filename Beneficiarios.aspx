<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Beneficiarios.aspx.vb" Inherits="WebApplication6.Beneficiarios" %>

<!DOCTYPE html>

<html lang="pt-br">
<head runat="server">
    <meta charset="UTF-8">
    <title>Lista de Beneficiarios</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.4/css/bulma.min.css">
</head>
<body>
    <form id="form1" runat="server">
        <section class="section">
            <div class="container">
                <h1 class="title has-text-primary">Cadastro de Beneficiarios</h1>

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
     <label class="label">Necessidade</label>
     <asp:TextBox ID="txtNecessidade" runat="server" CssClass="input" />
 </div>
                  
                    <div class="column is-12">
                        <asp:Button ID="btnSalvar" runat="server" Text="Salvar Beneficiario" CssClass="button is-primary" OnClick="btnSalvar_Click" />
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:BDLOJAConnectionString %>" DeleteCommand="DELETE FROM [Beneficiarios] WHERE [ID] = @original_ID AND [Nome] = @original_Nome AND [Email] = @original_Email AND (([Telefone] = @original_Telefone) OR ([Telefone] IS NULL AND @original_Telefone IS NULL)) AND (([Endereco] = @original_Endereco) OR ([Endereco] IS NULL AND @original_Endereco IS NULL)) AND (([Necessidade] = @original_Necessidade) OR ([Necessidade] IS NULL AND @original_Necessidade IS NULL))" InsertCommand="INSERT INTO [Beneficiarios] ([Nome], [Email], [Telefone], [Endereco], [Necessidade]) VALUES (@Nome, @Email, @Telefone, @Endereco, @Necessidade)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Beneficiarios]" UpdateCommand="UPDATE [Beneficiarios] SET [Nome] = @Nome, [Email] = @Email, [Telefone] = @Telefone, [Endereco] = @Endereco, [Necessidade] = @Necessidade WHERE [ID] = @original_ID AND [Nome] = @original_Nome AND [Email] = @original_Email AND (([Telefone] = @original_Telefone) OR ([Telefone] IS NULL AND @original_Telefone IS NULL)) AND (([Endereco] = @original_Endereco) OR ([Endereco] IS NULL AND @original_Endereco IS NULL)) AND (([Necessidade] = @original_Necessidade) OR ([Necessidade] IS NULL AND @original_Necessidade IS NULL))">
                            <DeleteParameters>
                                <asp:Parameter Name="original_ID" Type="Int32" />
                                <asp:Parameter Name="original_Nome" Type="String" />
<asp:Parameter Name="original_Email" Type="String"></asp:Parameter>
                                <asp:Parameter Name="original_Telefone" Type="String" />
                                <asp:Parameter Name="original_Endereco" Type="String" />
                                <asp:Parameter Name="original_Necessidade" Type="String" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:ControlParameter ControlID="txtNome" Name="Nome" PropertyName="Text" Type="String" />
                                <asp:ControlParameter ControlID="txtEmail" Name="Email" PropertyName="Text" Type="String" />
                                <asp:ControlParameter ControlID="txtTelefone" Name="Telefone" PropertyName="Text" Type="String" />
                                <asp:ControlParameter ControlID="txtEndereco" Name="Endereco" PropertyName="Text" Type="String" />
                                <asp:ControlParameter ControlID="txtNecessidade" Name="Necessidade" PropertyName="Text" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="Nome" Type="String" />
<asp:Parameter Name="Email" Type="String"></asp:Parameter>
                                <asp:Parameter Name="Telefone" Type="String" />
                                <asp:Parameter Name="Endereco" Type="String" />
<asp:Parameter Name="Necessidade" Type="String"></asp:Parameter>
                                <asp:Parameter Name="original_ID" Type="Int32" />
                                <asp:Parameter Name="original_Nome" Type="String" />
                                <asp:Parameter Name="original_Email" Type="String" />
                                <asp:Parameter Name="original_Telefone" Type="String" />
                                <asp:Parameter Name="original_Endereco" Type="String" />
                                <asp:Parameter Name="original_Necessidade" Type="String" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </div>
                </div>

                <hr />

                <h2 class="title is-4">Lista de Beneficiarios</h2>
                <asp:GridView ID="GridViewBeneficiarios" runat="server" CssClass="table is-striped is-fullwidth" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" AllowPaging="True" AllowSorting="True" DataKeyNames="ID">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                        <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" />
                        <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" InsertVisible="False" ReadOnly="True" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        <asp:BoundField DataField="Telefone" HeaderText="Telefone" SortExpression="Telefone" />
                        <asp:BoundField DataField="Endereco" HeaderText="Endereco" SortExpression="Endereco" />
                        <asp:BoundField DataField="Necessidade" HeaderText="Necessidade" SortExpression="Necessidade" />
                    </Columns>
                </asp:GridView>
            </div>
        </section>
    </form>
</body>
</html>

