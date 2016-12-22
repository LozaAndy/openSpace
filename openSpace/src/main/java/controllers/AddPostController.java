package controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import models.Post;
import serviceImpl.PostServiceImpl;
import services.DataService;

@WebServlet(urlPatterns = "/add-post")
public class AddPostController extends HttpServlet {
	private static final long serialVersionUID = -125227494236473177L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		DataService<Post> postService = new PostServiceImpl();
		postService.addData(req);
	}

}
