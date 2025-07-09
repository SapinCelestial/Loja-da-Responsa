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
        nav input[type="submit"] {
            background-color: transparent;
            border: none;
            color: white;
            font-size: 1em;
            margin: 0 15px;
            cursor: pointer;
            text-decoration: underline;
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
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <header>
            <div class="logo">Loja da Resposta</div>
            <div>Você doa, cadastra, distribui e organiza como um gestor de verdade!</div>
        </header>
        <nav>
            <asp:Button runat="server" Text="Itens Doado" PostBackUrl="ItensDoado.aspx" />
            <asp:Button runat="server" Text="Categorias" PostBackUrl="Categorias.aspx" />
            <asp:Button runat="server" Text="Doadores" PostBackUrl="Doadores.aspx" />
            <asp:Button runat="server" Text="Beneficiários" PostBackUrl="Beneficiarios.aspx" />
            <asp:Button runat="server" Text="Distribuições" PostBackUrl="Distribuicoes.aspx" />
            <asp:Button runat="server" Text="Usuários" PostBackUrl="Usuarios.aspx" />
            <asp:Button runat="server" Text="Fale Conosco" PostBackUrl="FaleConosco.aspx" />
        </nav>
        <div class="content">
            <h2>Bem-vindo ao sistema de doações!</h2>
            <p>Aqui você pode cadastrar doações, beneficiários, distribuí-las e muito mais com transparência e responsabilidade.</p>
            <asp:Button runat="server" Text="Começar Agora" CssClass="btn" PostBackUrl="ItensDoado.aspx" />
        </div>
    </form>
</body>
</html>