
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Loja da Responsa - Gestão de Doações</title>
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
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <header>
            <div class="logo">Loja da Responsa</div>
            <div>Você doa, cadastra, distribui e organiza como um gestor de verdade!</div>
        </header>
        <nav>
            <a href="ItensDoado.aspx.cs">Itens Doado</a>
            <a href="Categoria.aspx">Categorias</a>
            <a href="Doadores.aspx">Doadores</a>
            <a href="Beneficiarios.aspx">Beneficiários</a>
            <a href="Distribuicoes.aspx">Distribuições</a>
            <a href="Usuarios.aspx">Usuários</a>
            <a href="FaleConosco.aspx">Fale Conosco</a>
        </nav>
        <div class="content">
            <h2>Bem-vindo ao sistema de doações!</h2>
            <p>Aqui você pode cadastrar doações, beneficiários, distribuí-las e muito mais com transparência e responsabilidade.</p>
         
        </div>
    </form>
</body>
</html>