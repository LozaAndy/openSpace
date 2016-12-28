package controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import exceptions.ValidationException;
import models.User;
import services.ServiceManager;
import servicesImpl.ServiceManagerImpl;

@WebServlet(urlPatterns = "/login")
public class LoginController extends AbstractServlet {
	private static final long serialVersionUID = -1511760609397773472L;

	// here will be called layer is responsible for processing your login and
	// password
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ServiceManager serviceManager = new ServiceManagerImpl();
		try {
			User user = serviceManager.getUserService().getUserByCredentials(req.getParameter("inputLogin"),
					req.getParameter("inputPassword"));
			
			
			if ( user != null) {
				
				req.getSession().setAttribute("currentUser", user );
				
				resp.sendRedirect("/home");
			}
		} catch (ValidationException e) {
			req.setAttribute("validationError", e.getMessage());
			// need add logging
			forwardToPage("index.jsp", req, resp);
		}
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

	}
}
