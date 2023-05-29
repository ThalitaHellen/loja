<%-- 
    Document   : cadastro
    Created on : 10 de mai. de 2023, 19:24:55
    Author     : QI
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro de Funcionários</title>
        <link rel="stylesheet" href="css/style.css"/>
    </head>
    <body class="cadastro">
        <header>
            <h1>Cadastro</h1>
        </header>
        
        <div class="content">
            <form action="CadastroFuncionario" method="post" id="form_funcionario">
                <h3>Dados do funcionário</h3>
                
                <label for="funcionario" class="custom-label">Nome completo:</label>
                <br>
                <input type="text" name="funcionario" class="fields" placeholder="Nome">
                <br><br>
                
                <label for="data_nascimento" class="custom-label">Data de nascimento:</label>
                <br>
                <input type="date" name="data_nascimento">
                <br><br>
                
                <label for="salario" class="custom-label">Salário:</label>
                <br>
                <input type="text" class="fields" name="salario" placeholder="Salário" value="">
                <br><br>
                
                <select name="cargo" class="fields" required>
                    <option value="">Cargo</option>
                    <option value="Gerente">Gerente</option>
                    <option value="Vendedor">Vendedor</option>
                    <option value="Estoquista">Estoquista</option>
                </select>
                <br><br>
                
                <input type="submit" value="Cadastrar" name="name"><br>                
                <a href="home.jsp">Pagina inicial</a>
            </form>
        </div>
    </body>
</html>
