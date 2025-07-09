<!DOCTYPE html><html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Loja da Resposta - Gestão de Doações</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        header {
            background-color: #007BFF;
            color: white;
            padding: 1em;
            text-align: center;
        }
        nav {
            background-color: #0056b3;
            padding: 1em;
            text-align: center;
        }
        nav a {
            color: white;
            margin: 0 15px;
            text-decoration: none;
        }
        .content {
            padding: 2em;
            text-align: center;
        }
        .logo {
            font-size: 2em;
            font-weight: bold;
            color: white;
        }
        .btn {
            display: inline-block;
            margin: 10px;
            padding: 10px 20px;
            background-color: #28a745;
            color: white;
            border: none;
            cursor: pointer;
            border-radius: 5px;
        }
        .form-container {
            max-width: 500px;
            margin: auto;
            background: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 5px rgba(0,0,0,0.2);
        }
        label, input, textarea {
            display: block;
            width: 100%;
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <header>
            <div class="logo">Loja da Resposta</div>
            <div>Você doa, cadastra, distribui e organiza como um gestor de verdade!</div>
        </header>
        <nav>
            <a href="Default.aspx">Início</a>
            <a href="ItensDoado.aspx">Itens Doado</a>
            <a href="Categorias.aspx">Categorias</a>
            <a href="Doadores.aspx">Doadores</a>
            <a href="Beneficiarios.aspx">Beneficiários</a>
            <a href="Distribuicoes.aspx">Distribuições</a>
            <a href="Usuarios.aspx">Usuários</a>
            <a href="FaleConosco.aspx">Fale Conosco</a>
        </nav>
        <div class="content">
            <h2>Bem-vindo ao sistema de doações!</h2>
            <p>Aqui você pode cadastrar doações, beneficiários, distribuí-las e muito mais com transparência e responsabilidade.</p>
            <asp:Button runat="server" Text="Começar Agora" CssClass="btn" PostBackUrl="~/ItensDoado.aspx" />
        </div>
    </form>
</body>
</html><!-- Página de Itens Doado - ItensDoado.aspx --><%@ Page Language="C#" AutoEventWireup="true" CodeFile="ItensDoado.aspx.cs" Inherits="ItensDoado" %>

<!DOCTYPE html><html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Itens Doado</title>
</head>
<body>
    <form id="form2" runat="server">
        <div class="form-container">
            <h2>Cadastro de Itens Doado</h2>
            <asp:Label runat="server" Text="Nome do Item:" />
            <asp:TextBox runat="server" ID="txtNome" />
            <asp:Label runat="server" Text="Categoria:" />
            <asp:DropDownList runat="server" ID="ddlCategoria">
                <asp:ListItem Text="Alimentos" />
                <asp:ListItem Text="Roupas" />
                <asp:ListItem Text="Higiene" />
                <asp:ListItem Text="Outros" />
            </asp:DropDownList>
            <asp:Label runat="server" Text="Descrição:" />
            <asp:TextBox runat="server" ID="txtDescricao" TextMode="MultiLine" Rows="4" />
            <asp:Button runat="server" Text="Salvar" CssClass="btn" OnClick="Salvar_Click" />
        </div>
    </form>
</body>
</html>