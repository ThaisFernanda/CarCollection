package br.com.carcollection.web;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.carcollection.DAOImpl.CarDao;
import br.com.carcollection.modelo.Car;

@WebServlet("/buscaCarro")
public class BuscaCarro  extends HttpServlet  {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		CarDao dao = new CarDao();
		List<Car> lista = new ArrayList<>();
		
		try {
			
			lista = dao.recuperaTodos();
			
		} catch (Exception e) {
			 RequestDispatcher dispatcher = req.getRequestDispatcher("/erro.jsp");
			 dispatcher.forward(req, resp);
		}
		
		 req.setAttribute("carros", lista);
		 
		 RequestDispatcher dispatcher = req.getRequestDispatcher("/catalogo.jsp");
		 dispatcher.forward(req, resp);
	}
	

}
