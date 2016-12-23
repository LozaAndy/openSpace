package controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.User;
import serviceImpl.UserServiceImpl;
import services.DataService;

@WebServlet(urlPatterns = "/login")
public class LoginController extends AbstractServlet {
	private static final long serialVersionUID = -1511760609397773472L;

	// here will be called layer is responsible for processing your login and
	// password
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		DataService<User> userService = new UserServiceImpl();
		if(userService.getData(req) != null){
				resp.sendRedirect("/home");
				}
		else{
			resp.sendRedirect("/welcome");
		}
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

	}
}
