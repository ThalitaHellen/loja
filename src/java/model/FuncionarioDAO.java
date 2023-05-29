package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class FuncionarioDAO {
    private static Connection conn;

    public FuncionarioDAO() throws ClassNotFoundException, SQLException {
        conn = MyDatabase.getDatabase();
    }

    //****Métodos do CRUD****
    //INSERT (Create)
    public void insertFuncionario(Funcionario f) throws SQLException {
        // Criando a query para inserir o registro
        String query = "INSERT INTO funcionario(id, nome, cargo, salario, data_nascimento)"
                + "VALUES(?,?,?,?,?)";

        // Preparar a query para ser executada no BD
        PreparedStatement prep = conn.prepareStatement(query);

        prep.setInt(1, f.getId());
        prep.setString(2, f.getNome());
        prep.setString(3, f.getCargo());
        prep.setDouble(4, f.getSalario());
        prep.setString(5, f.getData_nascimento());

        // Converter a data de nascimento em uma string
        //String dataNascimentoStr = new SimpleDateFormat("yyyy-MM-dd").format(f.getData_nascimento());
        //prep.setString(5, dataNascimentoStr);

        // Executando a query pronta
        prep.execute();
        prep.close();
    }

    //SELECT
    public ArrayList<Funcionario> listAll() throws SQLException {
        // Criar lista vazia
        ArrayList<Funcionario> list = new ArrayList<>();

        // Criar query para pesquisa no BD
        String query = "SELECT * FROM funcionario";

        // Preparar query para executar no BD
        PreparedStatement prep = conn.prepareStatement(query);

        // Pegar o resultado da pesquisa no BD
        ResultSet res = prep.executeQuery();

        // Varrer "res" mapeando os registros do BD
        // Para objetos da classe "Funcionario"
        while (res.next()) {
            // Criar objeto Funcionario vazio
            Funcionario func = new Funcionario();

            // Inserir os valores nos atributos com
            // os dados vindos das colunas do BD
            func.setId(res.getInt("id"));
            func.setNome(res.getString("nome"));
            func.setCargo(res.getString("cargo"));
            func.setSalario(res.getDouble("salario"));
            func.setData_nascimento(res.getString("data_nascimento"));

           

            // Inserir o objeto completo na lista
            list.add(func);
        }

        // Retornar lista cheia
        return list;
    }

    //SELECT
    public Funcionario listById(int i) throws SQLException {
        String query = "SELECT * FROM funcionario "
                + "WHERE id = " + i;

        PreparedStatement prep = conn.prepareStatement(query);
        ResultSet res = prep.executeQuery();

        Funcionario func = new Funcionario();

        if (res.next()) {
            func.setId(res.getInt("id"));
            func.setNome(res.getString("nome"));
            func.setCargo(res.getString("cargo"));
            func.setSalario(res.getDouble("salario"));
            func.setData_nascimento(res.getString("data_nascimento"));
            
// Converter a string da data de nascimento para java.util.Date
//            String dataNascimentoStr = res.getString("data_nascimento");
//            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
//            try {
//                java.util.Date dataNascimento = dateFormat.parse(dataNascimentoStr);
//                func.setDataNascimento(dataNascimento);
//            } catch (Exception e) {
//                e.printStackTrace();
//            }
        }

        return func;
    }

    //UPDATE
    public void updateFuncionario(Funcionario func) throws SQLException {
        String query = "UPDATE funcionario SET nome = ?,"
                + "cargo = ?, salario = ?, data_nascimento = ? WHERE id = ?";

        PreparedStatement prep = conn.prepareStatement(query);
        prep.setString(1, func.getNome());
        prep.setString(2, func.getCargo());
        prep.setDouble(3, func.getSalario());
        prep.setString(4, func.getData_nascimento());
        prep.setInt(5, func.getId());

        prep.execute();
        prep.close();
    }

    public void deleteFuncionario(int id) throws SQLException {
        String query = "DELETE FROM funcionario "
                + "WHERE id = " + id;
        
        PreparedStatement prep = conn.prepareStatement(query);
        prep.execute();
        prep.close();
    }
}