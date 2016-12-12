package controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns="/confirm/changes")
public class SettingsConfirmController extends AbstractServlet {
	private static final long serialVersionUID = 4388792111967326750L;
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// call update_service and reload page
		
		forwardToPage("account-settings.jsp", req, resp);
	}

}
