package br.com.carcollection.DAOImpl;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import br.com.carcollection.modelo.Oferta;
import br.com.carcollection.util.ConnectionFactory;
import br.com.carcollection.util.SQL;


public class OfertaDao implements InterfaceCrudDAO<Oferta>{
	private Connection conexaoJDBC;

	public OfertaDao() {
		conexaoJDBC = new ConnectionFactory().getConnection();
	}
	@Override
	public void insert(Oferta obj) {
		// TODO Auto-generated method stub
		try {
			PreparedStatement stmt = conexaoJDBC.prepareStatement(SQL.INSERE_USUARIO);

			stmt.setInt(1, obj.getUsuarioId());
			stmt.setInt(2, obj.getCarroId());
			stmt.setString(3, obj.getMensagem());
			stmt.setDate(4, new Date(obj.getData().getTimeInMillis()));
			
			stmt.execute();
			stmt.close();
		} catch (Exception e) {
			System.out.println("Erro na inclusão da oferta: " + e.getMessage());
			e.printStackTrace();
		}
	}

	@Override
	public void update(Oferta obj) {
		try {
			PreparedStatement stmt = conexaoJDBC.prepareStatement(SQL.UPDATE_OFERTA);
			stmt.setInt(1, obj.getUsuarioId());
			stmt.setInt(2, obj.getCarroId());
			stmt.setString(3, obj.getMensagem());
			stmt.setDate(4, new Date(obj.getData().getTimeInMillis()));
			stmt.setInt(5,  obj.getCod());

			stmt.execute();
			stmt.close();

		} catch (SQLException e) {
			System.out.println("Erro na atualização da oferta: " + e.getMessage());
			e.printStackTrace();
		}
	}

	@Override
	public void deleta(Integer id) {
		// TODO Auto-generated method stub
		try {
			PreparedStatement stmt = conexaoJDBC.prepareStatement(SQL.DELETA_OFERTA);
			stmt.setInt(1,  id);

			stmt.execute();
			stmt.close();

		} catch (SQLException e) {
			System.out.println("Erro ao tentar deletar oferta: " + e.getMessage());
			e.printStackTrace();
		}
	}

	@Override
	public List<Oferta> recuperaTodos() {
		// TODO Auto-generated method stub
		List<Oferta> ofertas = new ArrayList<>();

		try {
			PreparedStatement stmt = conexaoJDBC.prepareStatement(SQL.BUSCA_OFERTAS);
			ResultSet rs = stmt.executeQuery();			

			while (rs.next()){
				Oferta oferta = new Oferta();
				oferta.setUsuarioId(rs.getInt("usuario_id"));
				oferta.setCarroId(rs.getInt("carro_id"));
				oferta.setMensagem(rs.getString("mensagem"));
				
				Calendar data = Calendar.getInstance();
				data.setTime(rs.getDate("data"));
				oferta.setData(data);
				
				ofertas.add(oferta);
			}

			rs.close();
			stmt.close();
			conexaoJDBC.close();

		} catch (SQLException e) {
			System.out.println("Erro ao BUSCAR TODOS: " + e.getMessage());
		}
		return ofertas;
	}

	@Override
	public Oferta recupera(int id) {
		// TODO Auto-generated method stub
		Oferta oferta = new Oferta();
		try {
			PreparedStatement stmt = conexaoJDBC.prepareStatement(SQL.BUSCA_OFERTA_USUARIO);
			stmt.setInt(1, id);
			
			ResultSet rs = stmt.executeQuery();
			if (rs.next()) {
				oferta.setUsuarioId(Integer.parseInt(rs.getString("usuario_id")));
				oferta.setCarroId(Integer.parseInt(rs.getString("carro_id")));
				oferta.setMensagem(rs.getString("mensagem"));
				Calendar data = Calendar.getInstance();
				data.setTime(rs.getDate("data"));
				oferta.setData(data);
			}

			rs.close();
			stmt.close();
			conexaoJDBC.close();
		} catch (Exception e) {
			System.out.println("Erro ao BUSCAR POR: " + e.getMessage());
		}
		return oferta;
	}
	

}
