<%--
    Document   : cadastro
    Created on : 10 de mai. de 2023, 19:24:55
    Author     : QI
--%>

<%@page import="model.Funcionario"%>

<%
    Funcionario func = (Funcionario)request.getAttribute("funcionario");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar</title>
        <style>
            body {
                background-color: #F4E9A6;
                font-family: 'Dosis', sans-serif;
                background-image: url(img/mapaMaroto.gif);
                background-position: center;
                background-size: 90%;
                
            }
            
            h1 {
                color: #800000;
                text-align: center;
            }
            
            form {
                
                margin: 5% auto;
                width: 300px;
                padding: 20px;
                border: 1px solid #800000;
                border-radius: 4px;
                background-color: white;
            }
            
            input[type="text"],
            input[type="date"],
            select {
                width: 100%;
                padding: 5px;
                font-size: 16px;
                border-radius: 4px;
                border: 1px solid #800000;
            }
            
            input[type="submit"],
            input[type="reset"] {
                width: 100%;
                padding: 10px;
                font-size: 16px;
                font-weight: bold;
                border-radius: 4px;
                background-color: #800000;
                color: white;
                cursor: pointer;
                margin-top: 10px;
            }
            
            input[type="reset"] {
                margin-top: 5px;
            }
            
            a {
                color: #800000;
                display: block;
                text-align: center;
                margin-top: 10px;
            }
           header {
    background-color: white;
    padding: 20px;
    opacity: 0.8;
    width: 100%; /* Ocupa toda a largura */
    margin-top: 0; /* Remove a margem superior */
}

        </style>
    </head>
    <body>
        <header>
        <h1>Edição</h1>
        </header>
        
        <br><br>
        <form action="CadastroFuncionario" method="post">
            <input type="text" name="id" value="<%= func.getId() %>" readonly>
            <br><br>
            
            <input type="text" name="funcionario" value="<%= func.getNome() %>" placeholder="Nome">
            <br><br>
            <select name="cargo" required>
                <option value="<%= func.getCargo() %>"><%= func.getCargo() %></option>
                <option value="Gerente">Gerente</option>
                <option value="Vendedor">Vendedor</option>
                <option value="Estoquista">Estoquista</option>
            </select>
            <br><br>
            <input type="text" name="salario" value="<%= func.getSalario() %>" placeholder="Salario">
            <br><br>
            <input type="date" name="data_nascimento" value="<%= func.getData_nascimento() %>" placeholder="Data de Nascimento">
            
            <br><br>
            
            <input type="submit" value="Finalizar edição">
            <br>
            <input type="reset" value="Restaurar">
            
        </form>
        <a href="home.jsp">Página inicial</a>
    </body>
</html>
