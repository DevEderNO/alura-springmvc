package br.com.casadocodigo.loja.models;

import java.math.BigDecimal;
import java.util.Calendar;
import java.util.List;

import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
public class Produto {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String titulo;
    private String descricao;
    private int paginas;

    @ElementCollection
    private List<Preco> precos;

    @DateTimeFormat
    private Calendar dataLancamento;

    private String sumarioPath;

    /**
     * @return int return the id
     */
    public int getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(int id) {
        this.id = id;
    }

    /**
     * @return String return the titulo
     */
    public String getTitulo() {
        return titulo;
    }

    /**
     * @param titulo the titulo to set
     */
    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    /**
     * @return String return the descricao
     */
    public String getDescricao() {
        return descricao;
    }

    /**
     * @param descricao the descricao to set
     */
    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    /**
     * @return int return the paginas
     */
    public int getPaginas() {
        return paginas;
    }

    /**
     * @param paginas the paginas to set
     */
    public void setPaginas(int paginas) {
        this.paginas = paginas;
    }

    /**
     * @return List<Preco> return the precos
     */
    public List<Preco> getPrecos() {
        return precos;
    }

    /**
     * @param precos the precos to set
     */
    public void setPrecos(List<Preco> precos) {
        this.precos = precos;
    }

    /**
     * @return Calendar return the dataLancamento
     */
    public Calendar getDataLancamento() {
        return dataLancamento;
    }

    /**
     * @param dataLancamento the dataLancamento to set
     */
    public void setDataLancamento(Calendar dataLancamento) {
        this.dataLancamento = dataLancamento;
    }

    /**
     * @return String return the sumarioPath
     */
    public String getSumarioPath() {
        return sumarioPath;
    }

    /**
     * @param sumarioPath the sumarioPath to set
     */
    public void setSumarioPath(String sumarioPath) {
        this.sumarioPath = sumarioPath;
    }

    @Override
    public String toString() {
        return "Produto [titulo=" + titulo + ", descricao=" + descricao + ", paginas=" + paginas + "]";
    }

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + id;
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Produto other = (Produto) obj;
		if (id != other.id)
			return false;
		return true;
	}

	public BigDecimal precoPara(TipoPreco tipoPreco) {
		return precos.stream().filter(preco -> preco.getTipo().equals(tipoPreco))
				.findFirst().get().getValor();
	}
    
    
}