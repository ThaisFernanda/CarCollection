package br.com.carcollection.teste;

import java.sql.Connection;

import br.com.carcollection.util.ConnectionFactory;



public class TestaConexao {
	public static void main(String[] args) {
		try {
			Connection connection = new ConnectionFactory().getConnection();
			connection.close();
			System.out.println("Conexão realizada.");
			connection.close();
			System.out.println("Conxão fechada");
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
	}
}
