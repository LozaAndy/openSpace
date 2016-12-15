package controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns="/logout")
public class LogOutController extends AbstractServlet {
	private static final long serialVersionUID = 1966847365073704514L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		// there should be added clearing of current session
		
		forwardToPage("index.jsp", req, resp);
	}

}
