<%-- 
    Document   : lista
    Created on : 10 de mai. de 2023, 19:25:10
    Author     : QI
--%>

<%@page import="model.FuncionarioDAO" %>
<%@page import="model.Funcionario" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar</title>
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <style>
            body {
                font-family: 'Dosis', sans-serif;
            }
        </style>
    </head>
    <body>
        <h1>Lista</h1>
        <hr>
        
        <table class="employee-table">
            <thead>
                <tr>
                    <th>COD</th>
                    <th>NOME</th>
                    <th>CARGO</th>
                    <th>SALARIO</th>
                    <th>DATA DE NASCIMENTO</th>
                    <th></th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <%
                    FuncionarioDAO fundao = new FuncionarioDAO();
                    for(Funcionario func : fundao.listAll()) {
                %>
                <tr>
                    <td><%= func.getId() %></td>
                    <td><%= func.getNome() %></td>
                    <td><%= func.getCargo() %></td>
                    <td><%= func.getSalario() %></td>
                    <td><%= func.getData_nascimento() %></td>
                    <td>
                        <a href="FuncionarioUpdate?id=<%= func.getId() %>">EDITAR</a>
                    </td>
                    <td>
                        <a onclick="confirmDelete(<%= func.getId() %>)">EXCLUIR</a>
                    </td>
                </tr>
                <% } %>
            </tbody>
        </table>
            <br>

        
        
       <a href="home.jsp" style="display: block; text-align: center; color: #800000;">Página inicial</a>

        
        <script>
            function confirmDelete(id) {
                if(confirm("Deseja realmente excluir?")) {
                    window.location.replace("FuncionarioDelete?cod=" + id);
                } else {
                    alert("Exclusão cancelada!");
                }
            }
        </script>
    </body>
</html>
