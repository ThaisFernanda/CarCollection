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

@WebServlet("/exibeDetalhes")
public class ExibeDetalhesCarro extends HttpServlet   {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String idCarro =  req.getParameter("idCarro");
		CarDao dao = new CarDao();
		Car car = new Car();
		
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
	
}
