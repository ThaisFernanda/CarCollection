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


@WebServlet("/exibeDetalhes")
public class ExibeDetalhesCarro extends HttpServlet   {
	
	
	String id;
	CarDao dao = new CarDao();
	Car car = new Car();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String idCarro =  req.getParameter("idCarro");
		id = idCarro;
		try {
			car = dao.recuperaCarroMecanica(Integer.valueOf(idCarro));

			req.setAttribute("carro", car);
			
			RequestDispatcher dispatcher = req.getRequestDispatcher("/detalhesCarro.jsp");
			dispatcher.forward(req, resp);
			
		} catch (Exception e) {
			 RequestDispatcher dispatcher = req.getRequestDispatcher("/erro.jsp");
			 dispatcher.forward(req, resp);
		}
	}
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String funcao =  req.getParameter("funcao");
		
		if("excluir".equals(funcao)){
				try {
					dao.deleta(Integer.valueOf(id));
					
					RequestDispatcher dispatcher = req.getRequestDispatcher("/index.jsp");
					dispatcher.forward(req, resp);
					
				} catch (Exception e) {
					 RequestDispatcher dispatcher = req.getRequestDispatcher("/erro.jsp");
					 dispatcher.forward(req, resp);
				}
		} else if("editar".equals(funcao)){
			
			Car carro = new Car();
			MecanicaSeguranca mecanica = new MecanicaSeguranca();
			CarDao dao = new CarDao();
			
			try {
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
				dao.updateCarro(carro, mecanica);
				
				 RequestDispatcher dispatcher = req.getRequestDispatcher("/sucesso.jsp");
				 dispatcher.forward(req, resp);
				
			} catch (Exception e) {
				RequestDispatcher dispatcher = req.getRequestDispatcher("/erro.jsp");
				dispatcher.forward(req, resp);
				e.printStackTrace();
			}
			
		}
	
	}
		
}
