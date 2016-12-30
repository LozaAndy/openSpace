package controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import exceptions.OperationException;
import services.ServiceManager;
import servicesImpl.ServiceManagerImpl;

@WebServlet(urlPatterns = "/add-post")
public class AddPostController extends AbstractServlet {
	private static final long serialVersionUID = -125227494236473177L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ServiceManager serviceManager = new ServiceManagerImpl();
		try {
			serviceManager.getPostService().createPost(req);
		} catch (OperationException e) {

			e.printStackTrace();
		}
		
		resp.sendRedirect("/home");
	}

}
