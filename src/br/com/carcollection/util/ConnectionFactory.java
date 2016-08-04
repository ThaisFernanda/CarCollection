package br.com.carcollection.util;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class ConnectionFactory {
	
	private static final String URL = "jdbc:mysql://localhost:3306/car_collection";		        
	private static final String USER ="root";
	private static final String PASS = "";

	public Connection getConnection() {
		
		Connection con = null;
		try {
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			con = DriverManager.getConnection(URL,USER,PASS);
			System.out.println("Conexão estabelecida com sucesso!!");
		} catch (SQLException e) {
			System.out.println("Erro ao tentar conectar com o banco");
		}catch (Exception e) {
		
			System.out.println("Erro ao tentar criar nova conexao");
			e.printStackTrace();
		}
		
		return con;
		
	}
}
