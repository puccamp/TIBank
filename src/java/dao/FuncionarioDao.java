package dao;

import java.util.ArrayList;
import java.util.List;
import models.Funcionario;

/**
 *
 * @author Breno Antunes
 */
public class FuncionarioDao {

    private List<Funcionario> funcionarios;
    public FuncionarioDao() throws ClassNotFoundException {
        funcionarios = new ArrayList<>();
        Funcionario f1 = new Funcionario();
        f1.setEmail("brenoa@gmail.com");
        f1.setNome("Breno Antunes");
        f1.setSenha("senha");

        Funcionario f2 = new Funcionario();
        f2.setEmail("vitor@gmail.com");
        f2.setNome("Vitor Orsolini");
        f2.setSenha("senha2");

        Funcionario f3 = new Funcionario();
        f3.setEmail("tatiane@gmail.com");
        f3.setNome("Tatiane Greco");
        f3.setSenha("senha3");
        this.funcionarios.add(f1);
        this.funcionarios.add(f2);
        this.funcionarios.add(f3);
    }
  
    public void addFuncionario(Funcionario funcionario) {
        this.funcionarios.add(funcionario);
    }
    
    public List<Funcionario> getFuncionarios() {
        return this.funcionarios;
    }
   
    public Funcionario funcLogin(String email, String password){
        Funcionario func = null;
        for (Funcionario f1 : this.funcionarios) {
            if (f1.getEmail().equals(email) && f1.getSenha().equals(password)){
                func = f1;
                break;
            }
        }
        return func;
    }
}
