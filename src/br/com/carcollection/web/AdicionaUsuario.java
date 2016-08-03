package br.com.carcollection.web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import br.com.carcollection.DAOImpl.UserDaoImpl;
import br.com.carcollection.modelo.User;


@WebServlet("/adicionaUsuario")
public class AdicionaUsuario extends HttpServlet {
	
	
	private static final long serialVersionUID = 1L;
	private final String USUARIO = "usuario";

	protected void doPost(HttpServletRequest req, HttpServletResponse resp)	throws ServletException, IOException {

		String funcao =  req.getParameter("funcao");
			
		User user = new User();
		UserDaoImpl dao = new UserDaoImpl();
		
		if ("cadastro".equals(funcao)){

			
			user.setNome(req.getParameter("nome"));
			user.setLogin( req.getParameter("login")); 
			user.setSenha( req.getParameter("senha"));
			user.setEmail(req.getParameter("email"));
			user.setEndereco(req.getParameter("endereco"));
			user.setTelefone(req.getParameter("telefone"));
			
			 RequestDispatcher dispatcher = req.getRequestDispatcher("/sucesso.jsp");
			 dispatcher.forward(req, resp);
			
			
			dao.insert(user);
			req.setAttribute("user", user);
		
		} else {
			
			user.setLogin( req.getParameter("login")); 
			user.setSenha( req.getParameter("senha"));
			
			User usuario = dao.validaUsuario(user.getLogin(), user.getSenha());
			
			verificaUsuario(req, resp, usuario);
			
		}
		
	}

	private void verificaUsuario(HttpServletRequest req, HttpServletResponse resp, User usuario)
			throws ServletException, IOException {
		if (usuario != null){
			HttpSession session = req.getSession();
			session.setAttribute("USUARIO", usuario);
			
			
			RequestDispatcher dispatcher = req.getRequestDispatcher("/sucesso.jsp");
			dispatcher.forward(req, resp);
		
		} else {
			RequestDispatcher dispatcher = req.getRequestDispatcher("/erro.jsp");
			 dispatcher.forward(req, resp);	
			 usuario = null;

		}
	}
	public String logout(HttpSession session) {
		  session.invalidate();
		  return "redirect:index.jsp";
		}
}
