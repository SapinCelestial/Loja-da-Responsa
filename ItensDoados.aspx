<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ItensDoados.aspx.vb" Inherits="WebApplication6.ItensDoados" %>

<!DOCTYPE html>
<html lang="pt-br">
<head runat="server">
    <meta charset="UTF-8">
    <title>Itens Doados</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.4/css/bulma.min.css">
</head>
<body>
    <form id="form1" runat="server">
        <section class="section">
            <div class="container">
                <h1 class="title has-text-primary">Cadastro de ItensDoados</h1>

                <div class="columns is-multiline">
                    <div class="column is-6">
                        <label class="label">Nome</label>
                        <asp:TextBox ID="txtNome" runat="server" CssClass="input" />
                    </div>
                    <div class="column is-6">
                        <label class="label">Descricao</label>
                        <asp:TextBox ID="txtDescricao" runat="server" CssClass="input" />
                    </div>                
                    <div class="column is-6">
                        <label class="label">Categoria</label>
                        <asp:TextBox ID="txtCategoria" runat="server" CssClass="input" />
                    </div> 
                    <div class="column is-6">
    <label class="label">Doador</label>
    <asp:TextBox ID="txtDoador" runat="server" CssClass="input" />
</div>        
                    <div class="column is-12">
                        <asp:Button ID="btnSalvar" runat="server" Text="Salvar ItemDoado" CssClass="button is-primary" OnClick="btnSalvar_Click" />
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:bdlojaConnectionString2 %>" DeleteCommand="DELETE FROM [ItensDoados] WHERE [ItemID] = @original_ItemID AND (([Nome] = @original_Nome) OR ([Nome] IS NULL AND @original_Nome IS NULL)) AND (([Descricao] = @original_Descricao) OR ([Descricao] IS NULL AND @original_Descricao IS NULL)) AND (([CategoriaID] = @original_CategoriaID) OR ([CategoriaID] IS NULL AND @original_CategoriaID IS NULL)) AND (([DoadorID] = @original_DoadorID) OR ([DoadorID] IS NULL AND @original_DoadorID IS NULL))" InsertCommand="INSERT INTO [ItensDoados] ([Nome], [Descricao], [CategoriaID], [DoadorID]) VALUES (@Nome, @Descricao, @CategoriaID, @DoadorID)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [ItensDoados]" UpdateCommand="UPDATE [ItensDoados] SET [Nome] = @Nome, [Descricao] = @Descricao, [CategoriaID] = @CategoriaID, [DoadorID] = @DoadorID WHERE [ItemID] = @original_ItemID AND (([Nome] = @original_Nome) OR ([Nome] IS NULL AND @original_Nome IS NULL)) AND (([Descricao] = @original_Descricao) OR ([Descricao] IS NULL AND @original_Descricao IS NULL)) AND (([CategoriaID] = @original_CategoriaID) OR ([CategoriaID] IS NULL AND @original_CategoriaID IS NULL)) AND (([DoadorID] = @original_DoadorID) OR ([DoadorID] IS NULL AND @original_DoadorID IS NULL))">
                            <DeleteParameters>

                                <asp:Parameter Name="original_ItemID" Type="Int32" />
                                <asp:Parameter Name="original_Nome" Type="String" />
                                <asp:Parameter Name="original_Descricao" Type="String" />
                                <asp:Parameter Name="original_Categoria" Type="String" />
                                <asp:Parameter Name="original_Doador" Type="String" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:ControlParameter ControlID="txtNome" Name="Nome" PropertyName="Text" Type="String" />
                                <asp:ControlParameter ControlID="txtDescricao" Name="Descricao" PropertyName="Text" Type="String" />
                                <asp:ControlParameter ControlID="txtCategoria" Name="CategoriaID" PropertyName="Text" Type="Int32" />
                                <asp:ControlParameter ControlID="txtDoador" Name="DoadorID" PropertyName="Text" Type="Int32" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="Nome" Type="String" />
                                <asp:Parameter Name="Descricao" Type="String" />

                                <asp:Parameter Name="CategoriaID" Type="Int32" />
                                <asp:Parameter Name="DoadorID" Type="Int32" />
                               








                                
                             
                               
                                
                                <asp:Parameter Name="original_ItemID" Type="Int32" />
                                <asp:Parameter Name="original_Nome" Type="String" />
                                <asp:Parameter Name="original_Descricao" Type="String" />
                                <asp:Parameter Name="original_CategoriaID" Type="Int32" />
                                <asp:Parameter Name="original_DoadorID" Type="Int32" />
                               








                                
                             
                               
                                
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </div>
                </div>

                <hr />

                <h2 class="title is-4">Lista de ItensDoados</h2>
                <asp:GridView ID="GridViewUsuarios" runat="server" CssClass="table is-striped is-fullwidth" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" DataKeyNames="ItemID" >
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
          
                       
                        <asp:BoundField DataField="ItemID" HeaderText="ItemID" SortExpression="ItemID" InsertVisible="False" ReadOnly="True" />
                        <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" />

                        <asp:BoundField DataField="Descricao" HeaderText="Descricao" SortExpression="Descricao" />
                      
                        <asp:BoundField DataField="CategoriaID" HeaderText="CategoriaID" SortExpression="CategoriaID" />
                      
                        <asp:BoundField DataField="DoadorID" HeaderText="DoadorID" SortExpression="DoadorID" />
                      
                    </Columns>
                </asp:GridView>
            </div>
        </section>
    </form>
</body>
</html>
