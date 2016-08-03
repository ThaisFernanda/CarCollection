package br.com.carcollection.DAOImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import br.com.carcollection.modelo.User;
import br.com.carcollection.util.ConnectionFactory;
import br.com.carcollection.util.SQL;

public class UserDaoImpl implements InterfaceCrudDAO<User>{

	private Connection conexaoJDBC;

	public UserDaoImpl() {
		conexaoJDBC = new ConnectionFactory().getConnection();
	}

	@Override
	public void insert(User obj) {
		try {
			PreparedStatement stmt = conexaoJDBC.prepareStatement(SQL.INSERE_USUARIO);

			stmt.setString(1, obj.getNome());
			stmt.setString(2, obj.getCpf());
			stmt.setString(3, obj.getEmail());
			stmt.setString(4, obj.getEndereco());
			stmt.setString(5, obj.getTelefone());
			stmt.setString(6, obj.getLogin());
			stmt.setString(7, obj.getSenha());
			
			stmt.execute();
			stmt.close();


		} catch (Exception e) {
			System.out.println("Erro na inclusão: " + e.getMessage());
			e.printStackTrace();

		}
	}


	@Override
	public void update(User obj) {
		try {
			PreparedStatement stmt = conexaoJDBC.prepareStatement(SQL.UPDATE_USUARIO);
			stmt.setString(1, obj.getNome());
			stmt.setString(2, obj.getCpf());
			stmt.setString(3, obj.getEmail());
			stmt.setString(4, obj.getEndereco());
			stmt.setString(5, obj.getTelefone());
			stmt.setString(6, obj.getLogin());
			stmt.setString(7, obj.getSenha());
			stmt.setInt(8,  obj.getId());

			stmt.execute();
			stmt.close();

		} catch (SQLException e) {
			System.out.println("Erro na atualização: " + e.getMessage());
			e.printStackTrace();

		}

	}

	@Override
	public void deleta(Integer id)   {
		try {
			PreparedStatement stmt = conexaoJDBC.prepareStatement(SQL.DELETA_USUARIO);
			stmt.setInt(1,  id);

			stmt.execute();
			stmt.close();

		} catch (SQLException e) {
			System.out.println("Erro ao tentar deletar: " + e.getMessage());
			e.printStackTrace();
		}

	}

	@Override
	public User recupera(int id) {
		User usuario = new User();
		try {
			PreparedStatement stmt = conexaoJDBC.prepareStatement(SQL.BUSCA_USUARIO);
			stmt.setInt(1, id);
			
			ResultSet rs = stmt.executeQuery();
			if (rs.next()) {
				usuario.setNome(rs.getString("nome"));
				usuario.setCpf(rs.getString("cpf"));
				usuario.setEmail(rs.getString("email"));
				usuario.setTelefone(rs.getString("telefone"));
				usuario.setLogin(rs.getString("login"));
				usuario.setSenha(rs.getString("senha"));
				usuario.setTipoUsuario(rs.getString("tipo"));
				usuario.setEndereco("endereco");
			
			}

			rs.close();
			stmt.close();
			conexaoJDBC.close();
		} catch (Exception e) {
			System.out.println("Erro ao BUSCAR POR MATRICULA: " + e.getMessage());
		}
		return usuario;
		
	}

	@Override
	public List<User> recuperaTodos() {
		List<User> usuarios = new ArrayList<>();

		try {
			PreparedStatement stmt = conexaoJDBC.prepareStatement(SQL.BUSCA_TODOS_USUARIOS);
			//executa um select
			ResultSet rs = stmt.executeQuery();			

			// inclui todos os registros provenientes do banco de dados
			//   na lista
			while (rs.next()){
				User usuario = new User();
				usuario.setNome(rs.getString("nome"));
				usuario.setCpf(rs.getString("cpf"));
				usuario.setEmail(rs.getString("email"));
				usuario.setTelefone(rs.getString("telefone"));
				usuario.setLogin(rs.getString("login"));
				usuario.setSenha(rs.getString("senha"));
				usuario.setTipoUsuario(rs.getString("tipo"));
				usuarios.add(usuario);
			}

			rs.close();
			stmt.close();
			conexaoJDBC.close();

		} catch (SQLException e) {
			System.out.println("Erro ao BUSCAR TODOS: " + e.getMessage());
		}
		return usuarios;

	}
	
	public User validaUsuario( String login, String senha){
		
		User user;
		try {
			user = new User();
			PreparedStatement stmt = conexaoJDBC.prepareStatement(SQL.USUARIO_AUTENTICA);
	
			stmt.setString(1, login);
			stmt.setString(2, senha);
	
			ResultSet rs = stmt.executeQuery();
			
			if(rs.next()){
				user.setNome(rs.getString("nome"));
				user.setEmail(rs.getString("email"));
				user.setLogin(rs.getString("login"));
				return user;
			}
			
		} catch (Exception e) {
			System.out.println("Erro ao autenticar");
		}
		
		user = null;
		return user;
	}

}
