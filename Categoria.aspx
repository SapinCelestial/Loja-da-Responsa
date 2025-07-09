<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Categoria.aspx.vb" Inherits="WebApplication6.Categoria" %>

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
                <h1 class="title has-text-primary">Cadastro de Categorias</h1>

                <div class="columns is-multiline">
                    <div class="column is-6">
                        <label class="label">Id</label>
                        <asp:TextBox ID="txtId" runat="server" CssClass="input" />
                    </div>
                    <div class="column is-6">
                        <label class="label">Categoria</label>
                        <asp:TextBox ID="txtCategoria" runat="server" CssClass="input" />
                    </div>                
                    <div class="column is-6">
                        <label class="label">Descricao</label>
                        <asp:TextBox ID="txtDescricao" runat="server" CssClass="input" />
                    </div> 
                    <div class="column is-6">
      
                    <div class="column is-12">
                        <asp:Button ID="btnSalvar" runat="server" Text="Salvar Usuario" CssClass="button is-primary" OnClick="btnSalvar_Click" />
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:BDLOJAConnectionString %>" DeleteCommand="DELETE FROM [Categoria] WHERE [id] = @original_id AND (([Categoria] = @original_Categoria) OR ([Categoria] IS NULL AND @original_Categoria IS NULL)) AND (([Descricao] = @original_Descricao) OR ([Descricao] IS NULL AND @original_Descricao IS NULL))" InsertCommand="INSERT INTO [Categoria] ([id], [Categoria], [Descricao]) VALUES (@id, @Categoria, @Descricao)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Categoria]" UpdateCommand="UPDATE [Categoria] SET [Categoria] = @Categoria, [Descricao] = @Descricao WHERE [id] = @original_id AND (([Categoria] = @original_Categoria) OR ([Categoria] IS NULL AND @original_Categoria IS NULL)) AND (([Descricao] = @original_Descricao) OR ([Descricao] IS NULL AND @original_Descricao IS NULL))">
                            <DeleteParameters>

                                <asp:Parameter Name="original_id" Type="Int32" />
                                <asp:Parameter Name="original_Categoria" Type="String" />
                                <asp:Parameter Name="original_Descricao" Type="String" />
                             
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:ControlParameter ControlID="txtId" Name="id" PropertyName="Text" Type="Int32" />
                                <asp:ControlParameter ControlID="txtCategoria" Name="Categoria" PropertyName="Text" Type="String" />
                                <asp:ControlParameter ControlID="txtDescricao" Name="Descricao" PropertyName="Text" Type="String" />
                               
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="Categoria" Type="String" />
                                <asp:Parameter Name="Descricao" Type="String" />

                                <asp:Parameter Name="original_id" Type="Int32" />
                               
                               
                                
                                <asp:Parameter Name="original_Categoria" Type="String" />
                                <asp:Parameter Name="original_Descricao" Type="String" />
                               
                                
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </div>
                </div>

                <hr />

                <h2 class="title is-4">Lista de Categorias</h2>
                <asp:GridView ID="GridViewUsuarios" runat="server" CssClass="table is-striped is-fullwidth" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" DataKeyNames="id">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
          
                        <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" ReadOnly="True" />
                        <asp:BoundField DataField="Categoria" HeaderText="Categoria" SortExpression="Categoria" />
                        <asp:BoundField DataField="Descricao" HeaderText="Descricao" SortExpression="Descricao" />

                     
                      
                    </Columns>
                </asp:GridView>
            </div>
        </section>
    </form>
</body>
</html>
