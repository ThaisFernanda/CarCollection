package br.com.carcollection.modelo;

public class MecanicaSeguranca {
	private int potencia;
	private int velocidadeMax;
	private String combustivel;
	private String motor;
	private String cambio;
	private String tracao;
	private String freios;
	private String rodas;
	private String airBag;
	private double aceleracao;
	
	public int getPotencia() {
		return potencia;	
	}
	public void setPotencia(int potencia) {
		this.potencia = potencia;
	}
	public int getVelocidadeMax() {
		return velocidadeMax;
	}
	public void setVelocidadeMax(int velocidadeMax) {
		this.velocidadeMax = velocidadeMax;
	}
	public String getCombustivel() {
		return combustivel;
	}
	public void setCombustivel(String combustivel) {
		this.combustivel = combustivel;
	}
	public String getMotor() {
		return motor;
	}
	public void setMotor(String motor) {
		this.motor = motor;
	}
	public String getCambio() {
		return cambio;
	}
	public void setCambio(String cambio) {
		this.cambio = cambio;
	}
	public String getTracao() {
		return tracao;
	}
	public void setTracao(String tracao) {
		this.tracao = tracao;
	}
	public String getFreios() {
		return freios;
	}
	public void setFreios(String freios) {
		this.freios = freios;
	}
	public String getRodas() {
		return rodas;
	}
	public void setRodas(String rodas) {
		this.rodas = rodas;
	}
	public String getAirBag() {
		return airBag;
	}
	public void setAirBag(String airBag) {
		this.airBag = airBag;
	}
	public double getAceleracao() {
		return aceleracao;
	}
	public void setAceleracao(double aceleracao) {
		this.aceleracao = aceleracao;
	}
	public String getDirecao() {
		return direcao;
	}
	public void setDirecao(String direcao) {
		this.direcao = direcao;
	}
	private String direcao;

	
}
