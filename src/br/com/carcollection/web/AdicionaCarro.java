package br.com.carcollection.web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.carcollection.DAOImpl.CarDao;
import br.com.carcollection.modelo.Car;
import br.com.carcollection.modelo.MecanicaSeguranca;

@WebServlet("/adicionaCarro")
public class AdicionaCarro extends HttpServlet {

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Car carro = new Car();
		MecanicaSeguranca mecanica = new MecanicaSeguranca();
		CarDao dao = new CarDao();
		
		// populando o carro
		carro.setPortas(Integer.valueOf(req.getParameter("portas")));
		carro.setOcupantes(Integer.valueOf(req.getParameter("ocupantes")));
		carro.setMarca(req.getParameter("marca"));
		carro.setModelo(req.getParameter("modelo"));
		carro.setCor(req.getParameter("cor"));
		carro.setAnoFabricacao(req.getParameter("anoFabricacao"));
		carro.setDimensoesCLA(req.getParameter("dimensoesCLA"));
		carro.setPlaca(req.getParameter("placa"));
		carro.setConversivel(Boolean.valueOf(req.getParameter("conversivel")));
		carro.setQuilometragem(Double.valueOf(req.getParameter("quilometragem")));
		carro.setValor(Double.valueOf(req.getParameter("valor")));

		// populando a mecanica
		mecanica.setPotencia(Integer.valueOf(req.getParameter("potencia")));
		mecanica.setVelocidadeMax(Integer.valueOf(req.getParameter("velocidadeMax")));
		mecanica.setCombustivel(req.getParameter("combustivel"));
		mecanica.setMotor(req.getParameter("motor"));
		mecanica.setCambio(req.getParameter("cambio"));
		mecanica.setTracao(req.getParameter("tracao"));
		mecanica.setFreios(req.getParameter("freios"));
		mecanica.setAirBag(req.getParameter("airBag"));
		mecanica.setAceleracao(Double.valueOf(req.getParameter("aceleracao")));
		mecanica.setDirecao(req.getParameter("direcao"));
		mecanica.setRodas(req.getParameter("rodas"));

		carro.setMecSseg(mecanica);
		dao.insert(carro);
		
		 RequestDispatcher dispatcher = req.getRequestDispatcher("/sucesso.jsp");
		 dispatcher.forward(req, resp);
		

	}
}