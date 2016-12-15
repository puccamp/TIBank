package dao;

import models.Cliente;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import models.Cartao;
import models.Conta;
import models.Lancamento;


/**
 *
 * @author Breno Antunes
 */
public class ClienteDao {
    private List<Cliente> clientes;
    public ClienteDao(){
        this.clientes = new ArrayList<>();
        Cliente c1;
        Conta co1;
        Cartao ca1;
        Calendar c;
        List<Lancamento> lancamentos;
        List<Cartao> cartoes;

        Lancamento l1;
        int num_clientes = 10;
        int num_cartoes = 2;
        int num_lancamentos = 10;
        for (int z = 0; z < num_clientes; z++) {  
            c1 = new Cliente();
            c1.setNome("cliente"+z);
            c1.setCpf("000.000.000-0"+z);
            co1 = new Conta();
            co1.setAgencia(1000+z);
            co1.setNumero(11*z + 200);
            co1.setSaldo(153.12*z + 40);
            co1.setSenha("senha"+z);
            cartoes = new ArrayList<>();
            for(int y = 0; y< num_cartoes;y++){
                c = Calendar.getInstance();
                c.set(2020, 12, 1);
                if(y%2 ==0)
                    ca1 = new Cartao("000000000000000"+z, "Cliente"+z, Double.parseDouble("10"+10*z), c, 100+z,true, false);
                else
                    ca1 = new Cartao("00000000000000"+z, "Cliente"+z, Double.parseDouble("10"+10*z), c, 100+z,true, true);

                lancamentos = new ArrayList<>();
                for(int i = 0; i< num_lancamentos;i++){
                    c = Calendar.getInstance();
                    c.set(2016,i,10,Integer.parseInt("1"+z),30);
                    l1 = new Lancamento(c, "Campinas", Double.parseDouble("1"+31*z*i));
                    lancamentos.add(l1);
                }
                ca1.setLancamentos(lancamentos);
                cartoes.add(ca1);
            }
            co1.setCartoes(cartoes);
            c1.setConta(co1);
            clientes.add(c1);
        }
    }
  
    public void addCliente(Cliente cliente) {
        clientes.add(cliente);
    }
    
    public List<Cliente> getClientes() {
        return clientes;
    }
    
    public Cliente getClienteByCpf(String cpf_cliente){
        Cliente c1 = null;
        for (Cliente cli : this.clientes) {
            if (cli.getCpf().equals(cpf_cliente)){
                c1= cli;
                break;
            }
        }
        return c1;
    }
    
    public boolean bloquearCartao(String cpf_cliente, String num_cartao){
        boolean desativado = false;
        for (Cliente cli : this.clientes) {
            if (cli.getCpf().equals(cpf_cliente)){
                for(Cartao ca : cli.getConta().getCartoes()){
                    if (ca.getNumero().equals(num_cartao)){
                        ca.setAtivo(false);
                        ca.setDesativar(false);
                    }
                }
            }
        }
        return desativado;
        
    }
}
