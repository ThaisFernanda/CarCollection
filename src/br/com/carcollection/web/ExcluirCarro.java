package br.com.carcollection.web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.carcollection.DAOImpl.CarDao;

@WebServlet("/excluiCarro")
public class ExcluirCarro extends HttpServlet {
	
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		CarDao dao = new CarDao();
		
		try {
			
			String idCarro =  req.getParameter("idCarro");
			
			dao.deleta(Integer.valueOf(idCarro));
					
			RequestDispatcher dispatcher = req.getRequestDispatcher("/index.jsp");
			dispatcher.forward(req, resp);
					
		} catch (Exception e) {
				 RequestDispatcher dispatcher = req.getRequestDispatcher("/erro.jsp");
				 dispatcher.forward(req, resp);
		}	
	} 
}
