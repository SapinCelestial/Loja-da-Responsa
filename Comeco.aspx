<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Comeco.aspx.vb" Inherits="WebApplication6.Comeco" %>

<!DOCTYPE html>
<html lang="pt-br">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>DoeMais - Conectando Generosidade</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      background-color: #f9f9f9;
    }

    header {
      background-color: #009688;
      color: white;
      padding: 20px;
      display: flex;
      justify-content: space-between;
      align-items: center;
    }

    header h1 {
      margin: 0;
      font-size: 24px;
    }

    nav a {
      color: white;
      margin-left: 20px;
      text-decoration: none;
      font-weight: bold;
    }

    .hero {
      background-color: #e0f2f1;
      text-align: center;
      padding: 60px 20px;
    }

    .hero h2 {
      font-size: 32px;
      margin-bottom: 20px;
    }

    .hero p {
      font-size: 18px;
      margin-bottom: 30px;
    }

    .btn {
      background-color: #00796b;
      color: white;
      padding: 12px 24px;
      border: none;
      font-size: 16px;
      border-radius: 5px;
      text-decoration: none;
    }

    .cards {
      display: flex;
      flex-wrap: wrap;
      justify-content: center;
      margin: 40px 10px;
      gap: 20px;
    }

    .card {
      background-color: white;
      border-radius: 10px;
      box-shadow: 0 2px 5px rgba(0,0,0,0.1);
      width: 280px;
      padding: 20px;
      text-align: center;
    }

    .card img {
      width: 100%;
      border-radius: 10px;
      margin-bottom: 15px;
    }

    .card h3 {
      font-size: 20px;
      margin-bottom: 10px;
    }

    footer {
      background-color: #004d40;
      color: white;
      text-align: center;
      padding: 20px;
      margin-top: 40px;
    }
  </style>
</head>
<body>

  <header>
    <h1>DoeMais</h1>
    <nav>
      <a href="#">Início</a>
      <a href="#">Causas</a>
      <a href="#">Como Ajudar</a>
      <a href="#">Contato</a>
    </nav>
  </header>

  <section class="hero">
    <h2>Transforme vidas com um clique</h2>
    <p>Faça uma doação e apoie projetos sociais em todo o Brasil</p>
    <a class="btn" href="#">Doe Agora</a>
  </section>

  <section class="cards">
    <div class="card">
      <img src="https://via.placeholder.com/280x180?text=Causa+1" alt="Causa 1">
      <h3>Ajuda a famílias carentes</h3>
      <p>Contribua com alimentos e itens essenciais para quem mais precisa.</p>
    </div>
    <div class="card">
      <img src="https://via.placeholder.com/280x180?text=Causa+2" alt="Causa 2">
      <h3>Educação para Todos</h3>
      <p>Doe para projetos que oferecem ensino gratuito e inclusão digital.</p>
    </div>
    <div class="card">
      <img src="https://via.placeholder.com/280x180?text=Causa+3" alt="Causa 3">
      <h3>Saúde e Bem-estar</h3>
      <p>Ajude ONGs que atuam na prevenção e cuidado com a saúde.</p>
    </div>
  </section>

  <footer>
    <p>&copy; 2025 DoeMais - Todos os direitos reservados.</p>
  </footer>

</body>
</html>

