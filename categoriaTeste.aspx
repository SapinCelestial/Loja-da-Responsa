<!DOCTYPE html>
<html>
<head runat="server">
    <title>Categorias</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="form-container">
            <h2>Cadastro de Categorias</h2>
            <asp:Label runat="server" Text="Nome da Categoria:" />
            <asp:TextBox runat="server" ID="txtCategoria" />
            <asp:Button runat="server" Text="Salvar" CssClass="btn" OnClick="SalvarCategoria_Click" />
        </div>
    </form>
</body>
</html>
