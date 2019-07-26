package br.com.casadocodigo.loja.models;

import java.math.BigDecimal;

import javax.persistence.Embeddable;

@Embeddable
public class Preco {
    
    private BigDecimal valor;
    private TipoPreco tipo;

    /**
     * @return BigDecimal return the valor
     */
    public BigDecimal getValor() {
        return valor;
    }

    /**
     * @param valor the valor to set
     */
    public void setValor(BigDecimal valor) {
        this.valor = valor;
    }

    /**
     * @return TipoPreco return the tipo
     */
    public TipoPreco getTipo() {
        return tipo;
    }

    /**
     * @param tipo the tipo to set
     */
    public void setTipo(TipoPreco tipo) {
        this.tipo = tipo;
    }

}