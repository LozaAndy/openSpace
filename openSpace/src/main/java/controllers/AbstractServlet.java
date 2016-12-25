package controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public abstract class AbstractServlet extends HttpServlet {
	private static final long serialVersionUID = -109547664721781640L;

	protected void forwardToPage(String page, HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		req.setAttribute("currentPage", page);
		req.getRequestDispatcher("/WEB-INF/views/page-template.jsp").forward(req, resp);
	}

}
