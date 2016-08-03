package br.com.carcollection.teste;

import java.util.List;

import br.com.carcollection.DAOImpl.CarDao;
import br.com.carcollection.modelo.Car;

public class TestaDAO {
	
	public static void main(String[] args) {
		CarDao dao = new CarDao();
		Car car = new Car();
//		
//		carro.setAnoFabricacao("2012");
//		carro.setConversivel(false);
//		carro.setCor("Vermelhar");
//		carro.setDimensoesCLA("1.10x2.20x.1.10");
//		carro.setMarca("Mustang");
//		carro.setModelo("F350");
//		carro.setOcupantes(3);
//		carro.setPlaca("kkk 9898");
//		carro.setPortas(2);
//		carro.setQuilometragem(124);
//		carro.setValor(222000.00);
//		carro.setImg("view/carroMustangF350");
//		
//		
//		dao.insert(carro);
		
		car = dao.recuperaCarroMecanica(2);
		System.out.println(" === CARRO ===");
			System.out.println(car.getPortas());
			System.out.println(car.getOcupantes());
			System.out.println(car.getMarca());
			System.out.println(car.getImg());
			System.out.println(car.getModelo());
			System.out.println(car.getCor());
			System.out.println(car.getAnoFabricacao());
			System.out.println(car.getDimensoesCLA());
			System.out.println(car.getPlaca());
			System.out.println(car.isConversivel());
			System.out.println(car.getQuilometragem());
			System.out.println(car.getValor());
			System.out.println(" === MECANICA ===");
			System.out.println(car.getMecSseg().getCombustivel());
			System.out.println(car.getMecSseg().getMotor());
			System.out.println(car.getMecSseg().getPotencia());
			System.out.println(car.getMecSseg().getVelocidadeMax());
			System.out.println(car.getMecSseg().getCambio());
			System.out.println(car.getMecSseg().getTracao());
			System.out.println(car.getMecSseg().getAceleracao());
			System.out.println(car.getMecSseg().getFreios());
			System.out.println(car.getMecSseg().getRodas());
			System.out.println(car.getMecSseg().getAirBag());
			
		
	}
	

}
