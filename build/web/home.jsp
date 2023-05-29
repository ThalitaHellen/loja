<%--
    Document   : home
    Created on : 26 de abr. de 2023, 21:12:55
    Author     : QI
--%>

<%@page import="model.User" %>
<%
    User uSession = (User)session.getAttribute("userLoggedSession");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Inicio</title>
    <style>
        body{
            
        }
    .logout-button,
.cadastro-button,
.lista-button {
  width: 150px;
  padding: 5px 0;
  font-size: 10pt;
  font-weight: bold;
  cursor: pointer;
  border-radius: 8px;
  background-color:#800000;
  color: white;
  margin: 10px;
}

.cadastro-button,
.lista-button {
  background-color: #800000;
  color: white;
}

.home-container {
  text-align: center;
}

.welcome-message {
    font-family: 'Dosis', sans-serif;
      font-weight: bold;
      
}

</style>
</head>
    <body>
        <%@include file="session/verify.jsp" %>
        <main class="home-container">
    <p class="welcome-message">
        Bem-vindo <%= (uSession != null) ? uSession.getUserName() : "visitante" %>
        <br><br>
        <button class="logout-button" onclick="window.location.href='session/logout.jsp'">Logout</button>
    </p>
   
    <section class="home-buttons">
        <button class="cadastro-button" onclick="window.location.href='cadastro.jsp'">Cadastrar</button>
       <button class="lista-button" onclick="window.location.href='lista.jsp'">Listar</button>
    </section>
</main>

    </body>
</html>
