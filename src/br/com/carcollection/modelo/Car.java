package br.com.carcollection.modelo;


public class Car {
	
	private MecanicaSeguranca mecSseg = new MecanicaSeguranca();
	private int portas;
	private int ocupantes;
	private int id;
	private String marca;
	private String img;
	private String modelo;
	private String cor;
	private String anoFabricacao;
	private String dimensoesCLA;
	private String placa;
	private boolean conversivel;
	private double quilometragem;
	private double valor;
	private int idProprietario;
	
	
	public boolean isConversivel() {
		return conversivel;
	}
	public void setConversivel(boolean conversivel) {
		this.conversivel = conversivel;
	}
	public MecanicaSeguranca getMecSseg() {
		return mecSseg;
	}
	public void setMecSseg(MecanicaSeguranca mecSseg) {
		this.mecSseg = mecSseg;
	}
	public int getPortas() {
		return portas;
	}
	public void setPortas(int portas) {
		this.portas = portas;
	}
	public int getOcupantes() {
		return ocupantes;
	}
	public void setOcupantes(int ocupantes) {
		this.ocupantes = ocupantes;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getMarca() {
		return marca;
	}
	public String setMarca(String marca) {
		return this.marca = marca;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getModelo() {
		return modelo;
	}
	public void setModelo(String modelo) {
		this.modelo = modelo;
	}
	public String getCor() {
		return cor;
	}
	public void setCor(String cor) {
		this.cor = cor;
	}
	public String getAnoFabricacao() {
		return anoFabricacao;
	}
	public void setAnoFabricacao(String anoFabricacao) {
		this.anoFabricacao = anoFabricacao;
	}
	public String getDimensoesCLA() {
		return dimensoesCLA;
	}
	public void setDimensoesCLA(String dimensoesCLA) {
		this.dimensoesCLA = dimensoesCLA;
	}
	public String getPlaca() {
		return placa;
	}
	public void setPlaca(String placa) {
		this.placa = placa;
	}

	public double getQuilometragem() {
		return quilometragem;
	}
	public void setQuilometragem(double quilometragem) {
		this.quilometragem = quilometragem;
	}
	public double getValor() {
		return valor;
	}
	public void setValor(double valor) {
		this.valor = valor;
	}
	public int getIdProprietario() {
		return idProprietario;
	}
	public void setIdProprietario(int idProprietario) {
		this.idProprietario = idProprietario;
	}
	
	
	
}
