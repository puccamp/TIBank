package models;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

/**
 *
 * @author Breno Antunes
 */
public class Cartao {
    private String numero;
    private String nome;
    private Double limite;
    private Calendar vencimento;
    private int cod_seguranca;
    private boolean ativo;
    private boolean desativar;
    private List<Lancamento> lancamentos;

    public Cartao(String numero, String nome, Double limite, Calendar vencimento, int cod_seguranca,boolean ativo, boolean desativar) {
        this.numero = numero;
        this.nome = nome;
        this.limite = limite;
        this.vencimento = vencimento;
        this.cod_seguranca = cod_seguranca;
        this.ativo = ativo;
        this.desativar = desativar;
    }

    public boolean isAtivo() {
        return ativo;
    }

    public void setAtivo(boolean ativo) {
        this.ativo = ativo;
    }

    public boolean isDesativar() {
        return desativar;
    }

    public void setDesativar(boolean desativar) {
        this.desativar = desativar;
    }

    
    
    public List<Lancamento> getLancamentos() {
        return lancamentos;
    }

    public void setLancamentos(List<Lancamento> lancamentos) {
        this.lancamentos = lancamentos;
    }

    

    public String getNumero() {
        return numero;
    }

    public void setNumero(String numero) {
        this.numero = numero;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public Double getLimite() {
        return limite;
    }

    public void setLimite(Double limite) {
        this.limite = limite;
    }

    public String getVencimento() {
        String data_vencimento = new SimpleDateFormat("MM/yyyy").format(vencimento.getTime());
        return data_vencimento;
    }

    public void setVencimento(Calendar vencimento) {
        this.vencimento = vencimento;
    }

    public int getCod_seguranca() {
        return cod_seguranca;
    }

    public void setCod_seguranca(int cod_seguranca) {
        this.cod_seguranca = cod_seguranca;
    }

    

}
