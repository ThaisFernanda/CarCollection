package br.com.carcollection.modelo;

import java.util.Calendar;


public class Oferta {
	
	private Car carro;
	private int cod;
	private int usuarioId;
	private int carroId;
	private String mensagem;
	private Calendar data;
	
	public Car getCarro() {
		return carro;
	}
	public void setCarro(Car carro) {
		this.carro = carro;
	}
	public int getCod() {
		return cod;
	}
	public void setCod(int cod) {
		this.cod = cod;
	}
	public int getUsuarioId() {
		return usuarioId;
	}
	public void setUsuarioId(int usuarioId) {
		this.usuarioId = usuarioId;
	}
	public int getCarroId() {
		return carroId;
	}
	public void setCarroId(int carroId) {
		this.carroId = carroId;
	}
	public String getMensagem() {
		return mensagem;
	}
	public void setMensagem(String mensagem) {
		this.mensagem = mensagem;
	}
	public Calendar getData() {
		return data;
	}
	public void setData(Calendar data) {
		this.data = data;
	}
	
	
	
}
