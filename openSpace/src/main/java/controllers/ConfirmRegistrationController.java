package controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import models.User;
import serviceImpl.UserServiceImpl;
import services.DataService;

@WebServlet(urlPatterns = "/reg/confirm")
public class ConfirmRegistrationController extends AbstractServlet {
	private static final long serialVersionUID = 8153480774459732092L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		DataService<User> userService = new UserServiceImpl();
		userService.addData(req);

		resp.sendRedirect("/welcome");
	}

}
