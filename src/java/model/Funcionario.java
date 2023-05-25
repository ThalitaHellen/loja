package model;

public class Funcionario {
    private int id;
    private String nome;
    private String cargo;
    private double salario;
    private String dataNascimento;

    // Construtor, getters e setters
    public Funcionario(String nome, String cargo, double salario, String dataNascimento) {
        this.nome = nome;
        this.cargo = cargo;
        this.salario = salario;
        this.dataNascimento = dataNascimento;
    }
    
    public Funcionario( int id, String nome, double salario, String cargo, String dataNascimento) {
        this.id = id;
        this.nome = nome;
        this.cargo = cargo;
        this.salario = salario;
        this.dataNascimento = dataNascimento;
    }
    
    public Funcionario(){}

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getCargo() {
        return cargo;
    }

    public void setCargo(String cargo) {
        this.cargo = cargo;
    }

    public  double getSalario() {
        return salario;
    }

    public void setSalario(double salario) {
        this.salario = salario;
    }
    
    public String getData_nascimento(){
     return dataNascimento;
    }
    
    public void setData_nascimento(String dataNascimento){
        this.dataNascimento = dataNascimento;
    }
    
}