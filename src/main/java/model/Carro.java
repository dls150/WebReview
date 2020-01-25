package model;

import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

import javax.validation.constraints.AssertFalse;
import javax.validation.constraints.Future;
import javax.validation.constraints.Max;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import validator.ValidadorDeEmail;

public class Carro implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = -8294173180190622560L;

	@NotNull(message = "Modelo n�o pode ficar em branco")
	@Size(min = 2, max = 40, message = "O modelo deve possuir entre {min} e {max} caracteres")
	private String modelo;

	@NotNull(message = "Placa n�o pode ficar em branco")
	@Pattern(regexp = "^[A-Z]{3}\\-\\d{4}", message = "Placa inv�lida")
	private String placa;

	@NotNull(message = "Cor n�o pode ficar em branco")
	@Size(min = 4, message = "A cor deve possuir no m�nimo {min} caracteres")
	private String cor;

	@NotNull(message = "E-mail do Propriet�rio n�o pode ficar em branco")
	@ValidadorDeEmail
	private String emailProprietario;

	@Future(message = "A data da pr�xima revis�o deve ser uma data futura")
	private Date dataProximaRevisao;

	@AssertFalse(message = "O carro n�o pode ser cadastrado como roubado")
	private Boolean roubado;

	@Max(value = 2013, message = "Ano de fabrica��o n�o pode ser maior que {value}. Voc� digitou "
			+ "${validatedValue}")
	private Integer anoFabricacao;

	@Max(value = 2014, message = "Ano do modelo n�o pode ser maior que {value}. Voc� digitou " + "${validatedValue}")
	private Integer anoModelo;

	public Carro() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Carro(String modelo, String placa, String cor, String emailProprietario, Date dataProximaRevisao,
			Boolean roubado, Integer anoFabricacao, Integer anoModelo) {
		super();
		this.modelo = modelo;
		this.placa = placa;
		this.cor = cor;
		this.emailProprietario = emailProprietario;
		this.dataProximaRevisao = dataProximaRevisao;
		this.roubado = roubado;
		this.anoFabricacao = anoFabricacao;
		this.anoModelo = anoModelo;
	}

	public String getModelo() {
		return modelo;
	}

	public void setModelo(String modelo) {
		this.modelo = modelo;
	}

	public String getPlaca() {
		return placa;
	}

	public void setPlaca(String placa) {
		this.placa = placa;
	}

	public String getCor() {
		return cor;
	}

	public void setCor(String cor) {
		this.cor = cor;
	}

	public String getEmailProprietario() {
		return emailProprietario;
	}

	public void setEmailProprietario(String emailProprietario) {
		this.emailProprietario = emailProprietario;
	}

	public Date getDataProximaRevisao() {
		return dataProximaRevisao;
	}

	public void setDataProximaRevisao(Date dataProximaRevisao) {
		this.dataProximaRevisao = dataProximaRevisao;
	}

	public Boolean getRoubado() {
		return roubado;
	}

	public void setRoubado(Boolean roubado) {
		this.roubado = roubado;
	}

	public Integer getAnoFabricacao() {
		return anoFabricacao;
	}

	public void setAnoFabricacao(Integer anoFabricacao) {
		this.anoFabricacao = anoFabricacao;
	}

	public Integer getAnoModelo() {
		return anoModelo;
	}

	public void setAnoModelo(Integer anoModelo) {
		this.anoModelo = anoModelo;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	/* continuar
	public String retornaNumeroMesDataProximaRevisao(
			@NotNull(message = "Par�metro data de revis�o" + "no m�todo n�o pode ser nulo") Date dataRevisao) {
		SimpleDateFormat sdf = new SimpleDateFormat("MMMM", new Locale(pt, BR));

		return (sdf.format(dataRevisao));
	}*/
}
