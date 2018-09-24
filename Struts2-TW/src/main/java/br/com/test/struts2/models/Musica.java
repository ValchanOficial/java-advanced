package br.com.test.struts2.models;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "MUS_MUSICAS")
public class Musica implements Serializable{

	private static final long serialVersionUID = 4726665056108270474L;
	
	@Id
	@GeneratedValue
	@Column(name = "MUS_ID")
	private int id;
	@Column(name = "MUS_NOME")
	private String nome;
	
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
}