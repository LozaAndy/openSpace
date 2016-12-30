package controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import exceptions.OperationException;
import models.User;
import services.ServiceManager;
import servicesImpl.ServiceManagerImpl;

// this controller protected by filters, only LoginController have access.
@WebServlet(urlPatterns = "/home")
public class HomeController extends AbstractServlet {
	private static final long serialVersionUID = -5092581875966576535L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		User user = (User) req.getSession().getAttribute("currentUser");
		ServiceManager serviceManager = new ServiceManagerImpl();
		req.setAttribute("currentUser", user);
		try {
			req.setAttribute("posts", serviceManager.getPostService().getAllPosts(user.getId()));
		} catch (OperationException e) {
			e.printStackTrace();
		}
		forwardToPage("home.jsp", req, resp);
	}

}
