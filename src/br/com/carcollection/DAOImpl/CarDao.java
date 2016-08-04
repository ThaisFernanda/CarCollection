package br.com.carcollection.DAOImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import br.com.carcollection.modelo.Car;
import br.com.carcollection.util.ConnectionFactory;
import br.com.carcollection.util.SQL;

public class CarDao implements InterfaceCrudDAO<Car>{
	
	private Connection conexaoJDBC;

	public CarDao() {
		conexaoJDBC = new ConnectionFactory().getConnection();
	}
	
	@Override
	public void insert(Car carro) {
		// TODO Auto-generated method stub
		try {
			PreparedStatement stmt = conexaoJDBC.prepareStatement(SQL.INSERE_CARRO);
					
			stmt.setInt(1, carro.getPortas());
			stmt.setInt(2, carro.getOcupantes());
			stmt.setString(3, carro.getMarca());
			stmt.setString(4, carro.getModelo());
			stmt.setString(5, carro.getCor());
			stmt.setString(6, carro.getAnoFabricacao());
			stmt.setString(7, carro.getDimensoesCLA());
			stmt.setString(8, carro.getPlaca());
			stmt.setBoolean(9, carro.isConversivel());
			stmt.setDouble(10, carro.getQuilometragem());
			stmt.setDouble(11, carro.getValor());
			
			stmt.execute();
			stmt.close();

			this.insereMecanica(carro);

		} catch (Exception e) {
			System.out.println("Erro na inclusão do carro: " + e.getMessage());
			e.printStackTrace();

		}
	}

	@Override
	public void update(Car carro) {
		// TODO Auto-generated method stub
		try {
			PreparedStatement stmt = conexaoJDBC.prepareStatement(SQL.UPDATE_CARRO);
			stmt.setString(1, carro.getMarca());
			stmt.setInt(2, carro.getPortas());
			stmt.setInt(3, carro.getOcupantes());
			stmt.setString(4, carro.getModelo());
			stmt.setString(5, carro.getCor());
			stmt.setString(6, carro.getAnoFabricacao());
			stmt.setString(8, carro.getDimensoesCLA());
			stmt.setString(9, carro.getPlaca());
			stmt.setInt(10,  carro.getId());

			stmt.execute();
			stmt.close();

		} catch (SQLException e) {
			System.out.println("Erro na atualização do carro: " + e.getMessage());
			e.printStackTrace();

		}
	}

	@Override
	public void deleta(Integer id) {
		
		try {
			PreparedStatement stmt = conexaoJDBC.prepareStatement(SQL.DELETA_CARRO);
			PreparedStatement stmt2 = conexaoJDBC.prepareStatement(SQL.DELETA_MEC_SEG);
			stmt.setInt(1,  id);
			stmt2.setInt(1,  id);

			stmt.execute();
			stmt2.execute();
			stmt.close();
			stmt2.close();
		} catch (SQLException e) {
			System.out.println("Erro ao tentar deletar CARRO: " + e.getMessage());
			e.printStackTrace();
		}
	}

	@Override
	public List<Car> recuperaTodos() {
		
		List<Car> carros = new ArrayList<>();

		try {
			PreparedStatement stmt = conexaoJDBC.prepareStatement(SQL.BUSCA_TODOS_CARRO);
			
			ResultSet rs = stmt.executeQuery();			
			while (rs.next()){
				Car carro = new Car();
				carro.setPortas(rs.getInt("portas"));
				carro.setOcupantes(rs.getInt("ocupantes"));
				carro.setId(rs.getInt("id_carro"));
				carro.setMarca(rs.getString("marca"));
				carro.setModelo(rs.getString("modelo"));
				carro.setCor(rs.getString("cor"));
				carro.setAnoFabricacao(rs.getString("anoFabricacao"));
				carro.setDimensoesCLA(rs.getString("dimensoesCLA"));
				carro.setPlaca(rs.getString("placa"));
				carro.setConversivel(rs.getBoolean("conversivel"));
				carro.setQuilometragem(rs.getDouble("quilometragem"));
				carro.setValor(rs.getDouble("valor"));
				carros.add(carro);
			}

			rs.close();
			stmt.close();
			conexaoJDBC.close();

		} catch (SQLException e) {
			System.out.println("Erro ao BUSCAR TODOS CARROS: " + e.getMessage());
		}
		return carros;
	}

	@Override
	public Car recupera(int id) {
		
		Car carro = new Car();
		try {
			PreparedStatement stmt = conexaoJDBC.prepareStatement(SQL.BUSCA_CARRO);
			stmt.setInt(1, id);
			
			ResultSet rs = stmt.executeQuery();
			if (rs.next()) {
				carro.setPortas(rs.getInt("portas"));
				carro.setOcupantes(rs.getInt("ocupantes"));
				carro.setId(rs.getInt("id"));
				carro.setMarca(rs.getString("marca_id"));
				carro.setModelo(rs.getString("modelo"));
				carro.setCor(rs.getString("cor"));
				carro.setAnoFabricacao(rs.getString("anoFabricacao"));
				carro.setDimensoesCLA(rs.getString("dimensoesCLA"));
				carro.setPlaca(rs.getString("placa"));
				carro.setConversivel(rs.getBoolean("conversivel"));
				carro.setQuilometragem(rs.getDouble("quilometragem"));
				carro.setValor(rs.getDouble("valor"));				
			}

			rs.close();
			stmt.close();
			conexaoJDBC.close();
		} catch (Exception e) {
			System.out.println("Erro ao BUSCAR CARRO POR ID: " + e.getMessage());
		}
		return carro;
	}


private void insereMecanica(Car carro){
	try {
		PreparedStatement stmt = conexaoJDBC.prepareStatement(SQL.INSERE_MECANICA);
				
		stmt.setString(1, carro.getMecSseg().getCombustivel());
		stmt.setString(2, carro.getMecSseg().getMotor());
		stmt.setInt(3, carro.getMecSseg().getPotencia());
		stmt.setInt(4, carro.getMecSseg().getVelocidadeMax());
		stmt.setString(5, carro.getMecSseg().getCambio());
		stmt.setString(6, carro.getMecSseg().getTracao());
		stmt.setDouble(7, carro.getMecSseg().getAceleracao());
		stmt.setString(8, carro.getMecSseg().getFreios());
		stmt.setString(9, carro.getMecSseg().getRodas());
		stmt.setString(10, carro.getMecSseg().getAirBag());
		
		stmt.execute();
		stmt.close();


	} catch (Exception e) {
		System.out.println("Erro na inclusão do carro: " + e.getMessage());
		e.printStackTrace();

	}
	
}


public Car recuperaCarroMecanica(Integer idCarro){
	
	Car carro = new Car();
	try {
	
		PreparedStatement stmt = conexaoJDBC.prepareStatement(SQL.SELECT_CARRO_MECANICA);
		stmt.setInt(1, idCarro);
		
		ResultSet rs = stmt.executeQuery();
		if (rs.next()) {
			carro.setPortas(rs.getInt("portas"));
			carro.setOcupantes(rs.getInt("ocupantes"));
			carro.setId(rs.getInt("id"));
			carro.setMarca(rs.getString("marca"));
			carro.setModelo(rs.getString("modelo"));
			carro.setCor(rs.getString("cor"));
			carro.setAnoFabricacao(rs.getString("anoFabricacao"));
			carro.setDimensoesCLA(rs.getString("dimensoesCLA"));
			carro.setPlaca(rs.getString("placa"));
			carro.setConversivel(rs.getBoolean("conversivel"));
			carro.setQuilometragem(rs.getDouble("quilometragem"));
			carro.setValor(rs.getDouble("valor"));	
			carro.getMecSseg().setCombustivel(rs.getString("combustivel"));
			carro.getMecSseg().setMotor(rs.getString("motor"));
			carro.getMecSseg().setPotencia(rs.getInt("potencia"));
			carro.getMecSseg().setVelocidadeMax(rs.getInt("velocidade_Max"));
			carro.getMecSseg().setCambio(rs.getString("cambio"));
			carro.getMecSseg().setTracao(rs.getString("tracao"));
			carro.getMecSseg().setAceleracao(rs.getDouble("aceleracao_0a100"));
			carro.getMecSseg().setFreios(rs.getString("freios"));
			carro.getMecSseg().setRodas(rs.getString("rodas"));
			carro.getMecSseg().setAirBag(rs.getString("airBag"));
			
		}
	
		
	} catch (Exception e) {
		System.out.println("Erro na inclusão do carro: " + e.getMessage());
		e.printStackTrace();
	}
	
	return carro ;
}





}
