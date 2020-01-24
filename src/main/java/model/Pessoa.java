package model;

import java.util.Date;

public class Pessoa {
	
	private String nome;
	private Integer idade;
	private Double peso;
	private Date nasc;
	public Pessoa() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Pessoa(String nome, Integer idade, Double peso, Date nasc) {
		super();
		this.nome = nome;
		this.idade = idade;
		this.peso = peso;
		this.nasc = nasc;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public Integer getIdade() {
		return idade;
	}
	public void setIdade(Integer idade) {
		this.idade = idade;
	}
	public Double getPeso() {
		return peso;
	}
	public void setPeso(Double peso) {
		this.peso = peso;
	}
	public Date getNasc() {
		return nasc;
	}
	public void setNasc(Date nasc) {
		this.nasc = nasc;
	}
}
