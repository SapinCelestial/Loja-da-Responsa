<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Distribuições.aspx.vb" Inherits="WebApplication6.Distribuições" %>

<!DOCTYPE html>
<html lang="pt-br">
<head runat="server">
    <meta charset="UTF-8">
    <title>Lista de Distribuições</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.4/css/bulma.min.css">
</head>
<body>
    <form id="form1" runat="server">
        <section class="section">
            <div class="container">
                <h1 class="title has-text-primary">Cadastro de Distribuições</h1>

                <div class="columns is-multiline">
                    <div class="column is-6">
                        <label class="label">Item</label>
                        <asp:TextBox ID="txtItem" runat="server" CssClass="input" />
                    </div>
                    <div class="column is-6">
                        <label class="label">Benificiário</label>
                        <asp:TextBox ID="txtBeneficiario" runat="server" CssClass="input" />
                    </div>
                    <div class="column is-6">
    <label class="label">DataDistribuição</label>
    <asp:TextBox ID="txtDataDistruicao" runat="server" CssClass="input" />
</div>

                  
                    <div class="column is-12">
                        <asp:Button ID="btnSalvar" runat="server" Text="Salvar Distribuição" CssClass="button is-primary" OnClick="btnSalvar_Click" />
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:bdlojaConnectionString2 %>" DeleteCommand="DELETE FROM [Distribuicoes] WHERE [DistribuicaoID] = @original_DistribuicaoID AND (([DataDistribuicao] = @original_DataDistribuicao) OR ([DataDistribuicao] IS NULL AND @original_DataDistribuicao IS NULL)) AND (([ItemID] = @original_ItemID) OR ([ItemID] IS NULL AND @original_ItemID IS NULL)) AND (([BeneficiarioID] = @original_BeneficiarioID) OR ([BeneficiarioID] IS NULL AND @original_BeneficiarioID IS NULL))" InsertCommand="INSERT INTO [Distribuicoes] ([DataDistribuicao], [ItemID], [BeneficiarioID]) VALUES (@DataDistribuicao, @ItemID, @BeneficiarioID)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Distribuicoes]" UpdateCommand="UPDATE [Distribuicoes] SET [DataDistribuicao] = @DataDistribuicao, [ItemID] = @ItemID, [BeneficiarioID] = @BeneficiarioID WHERE [DistribuicaoID] = @original_DistribuicaoID AND (([DataDistribuicao] = @original_DataDistribuicao) OR ([DataDistribuicao] IS NULL AND @original_DataDistribuicao IS NULL)) AND (([ItemID] = @original_ItemID) OR ([ItemID] IS NULL AND @original_ItemID IS NULL)) AND (([BeneficiarioID] = @original_BeneficiarioID) OR ([BeneficiarioID] IS NULL AND @original_BeneficiarioID IS NULL))">
                            <DeleteParameters>
           
                                <asp:Parameter Name="original_DistribuicaoID" Type="Int32" />
                                <asp:Parameter Name="original_DataDistribuicao" DbType="Date"></asp:Parameter>
                                <asp:Parameter Name="original_ItemID" Type="Int32" />
                                <asp:Parameter Name="original_BeneficiarioID" Type="Int32" />
              
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:ControlParameter ControlID="txtDataDistruicao" DbType="Date" Name="DataDistribuicao" PropertyName="Text" />
                                <asp:ControlParameter ControlID="txtItem" Name="ItemID" PropertyName="Text" Type="Int32" />
                                <asp:ControlParameter ControlID="txtBeneficiario" Name="BeneficiarioID" PropertyName="Text" Type="Int32" />
                               
                            </InsertParameters>
                            <UpdateParameters>

                                <asp:Parameter Name="DataDistribuicao" DbType="Date" />
                                <asp:Parameter Name="ItemID" Type="Int32" />
                                <asp:Parameter Name="BeneficiarioID" Type="Int32" />
                           
                                <asp:Parameter Name="original_DistribuicaoID" Type="Int32" />
                                <asp:Parameter DbType="Date" Name="original_DataDistribuicao" />
                                <asp:Parameter Name="original_ItemID" Type="Int32" />
                                <asp:Parameter Name="original_BeneficiarioID" Type="Int32" />
                           
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </div>
                </div>

                <hr />

                <h2 class="title is-4">Lista de Beneficiarios</h2>
                <asp:GridView ID="GridViewBeneficiarios" runat="server" CssClass="table is-striped is-fullwidth" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" AllowPaging="True" AllowSorting="True" DataKeyNames="DistribuicaoID">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                        <asp:BoundField DataField="DistribuicaoID" HeaderText="DistribuicaoID" SortExpression="DistribuicaoID" InsertVisible="False" ReadOnly="True" />
                        <asp:BoundField DataField="DataDistribuicao" HeaderText="DataDistribuicao" SortExpression="DataDistribuicao" />
                        <asp:BoundField DataField="ItemID" HeaderText="ItemID" SortExpression="ItemID" />

                        <asp:BoundField DataField="BeneficiarioID" HeaderText="BeneficiarioID" SortExpression="BeneficiarioID" />

                    </Columns>
                </asp:GridView>
            </div>
        </section>
    </form>
</body>
</html>

