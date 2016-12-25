package controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/change/photo")
public class ChangePhotoController extends AbstractServlet {
	private static final long serialVersionUID = 6287738723332873699L;

	// call DataService and reload page ( maybe ajax?)

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		forwardToPage("account-settings.jsp", req, resp);
	}

}
