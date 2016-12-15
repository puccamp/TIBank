package models;

import java.text.SimpleDateFormat;
import java.util.Calendar;

/**
 *
 * @author Breno Antunes
 */
public class Lancamento {
    private Calendar data;
    private String local;
    private Double valor;

    public Lancamento(Calendar data, String local, Double valor) {
        this.data = data;
        this.local = local;
        this.valor = valor;
    }

   
    public String getData() {
        String data_compra = new SimpleDateFormat("MM/yyyy").format(data.getTime());
        return data_compra;
    }

    public void setData(Calendar data) {
        this.data = data;
    }

    public String getLocal() {
        return local;
    }

    public void setLocal(String local) {
        this.local = local;
    }

    public Double getValor() {
        return valor;
    }

    public void setValor(Double valor) {
        this.valor = valor;
    }

    
}
