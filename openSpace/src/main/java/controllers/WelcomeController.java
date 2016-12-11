package controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// start 
@WebServlet(urlPatterns = {"/index.jsp","/index", "/welcome"})
public class WelcomeController extends AbstractServlet {
	private static final long serialVersionUID = -7325170126537075555L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		forwardToPage("index.jsp", req, resp);
	}

}
