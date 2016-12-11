package controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// this controller protected by filters, only LoginController have access.
@WebServlet(urlPatterns="/home")
public class HomeController extends AbstractServlet {
	private static final long serialVersionUID = -5092581875966576535L;
		
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		forwardToPage("home.jsp", req, resp);
	}
	

}
