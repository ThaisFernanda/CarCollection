package br.com.carcollection.util;

public class SQL {
	public static final String INSERE_USUARIO = "INSERT INTO USER (nome, cpf, email, endereco, telefone, login, senha)  VALUES (?, ?, ?, ?, ?, ?, ?)";		
	public static final String UPDATE_USUARIO = "update user set nome = ?, cpf = ?, email = ?, telefone = ?, login = ?,senha = ?, tipo = ? where id = ?";	
	public static final String DELETA_USUARIO = "delete from user where id = ?";
	public static final String BUSCA_TODOS_USUARIOS = "select * from user order by nome";
	public static final String BUSCA_USUARIO = "select * from user where id= ?";
	
	public static final String INSERE_CARRO = "INSERT INTO carro (portas,ocupantes,marca,modelo,cor,anoFabricacao,dimensoesCLA,placa,conversivel,quilometragem,valor, id_dono)  VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";		
	public static final String UPDATE_CARRO = "update carro set portas = ?, ocupantes = ?, marca = ?, modelo = ?, cor = ?, anoFabricacao = ? , dimensoesCLA  = ?, placa  = ?,conversivel  = ?, quilometragem = ?, valor = ? where id_carro = ?";	
	public static final String DELETA_CARRO = "delete from carro where  id_carro = ?";
	public static final String BUSCA_TODOS_CARRO = "Select * from carro";
	public static final String BUSCA_CARRO = "Select * from carro where  id_carro = ?";
	
	public static final String INSERE_MEC_SEG = "insert into mecanica_seguranca (carro_id,combustivel,motor,potencia,velocidade_max,cambio,tracao,aceleracao_0a100,freios,rodas,airbag,direcao_hidraulica) values (?,?,?,?,?,?,?,?,?,?,?,?)";	
	public static final String UPDATE_MEC_SEG = "update mecanica_seguranca set combustivel = ?, motor = ?, potencia = ?, velocidade_max = ?, cambio = ?, tracao = ?, aceleracao_0a100 = ?, freios = ?, rodas = ?, airbag = ? where carro_id = ?";	
	public static final String DELETA_MEC_SEG = "delete from mecanica_seguranca where carro_id = ?";
	public static final String BUSCA_MEC_SEG = "Select * from mecanica_seguranca where id = ?";

	public static final String INSERE_OFERTA = "insert into oferta (usuario_id,carro_id,mensagem,data) values (?,?,?,?)";	
	public static final String UPDATE_OFERTA = "update oferta set usuario_id = ?,carro_id = ?,mensagem = ?,data = ? where id = ?";	
	public static final String DELETA_OFERTA = "delete from oferta where id = ?";
	public static final String BUSCA_OFERTA_CARRO = "Select * from oferta where carro_id = ?";
	public static final String BUSCA_OFERTA_USUARIO = "Select * from oferta where usuario_id = ?";
	public static final String BUSCA_OFERTAS = "select * from oferta order by carro_id";
	
	public static final String USUARIO_AUTENTICA = "select * from user where login = ? and senha = ?";
	
	
	public static final String INSERE_MECANICA = "INSERT INTO mecanica_seguranca (combustivel, motor, potencia, velocidade_max, cambio, tracao, aceleracao_0a100, freios, rodas, airbag, carro_id) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, (SELECT MAX(id_carro) FROM carro))";

	public static final String SELECT_CARRO_MECANICA =	"SELECT * FROM carro INNER JOIN mecanica_seguranca ON (carro.id_carro = mecanica_seguranca.carro_id) WHERE carro.id_carro = ?";
	
}