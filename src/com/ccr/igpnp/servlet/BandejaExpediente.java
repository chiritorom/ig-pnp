package com.ccr.igpnp.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ccr.igpnp.dao.impl.DocumentDAOImpl;

/**
 * Servlet implementation class BandejaExpediente
 */
@WebServlet("/BandejaExpediente")
public class BandejaExpediente extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BandejaExpediente() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		processRequest(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		processRequest(request, response);
	}
	
	protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(true);
		
		DocumentDAOImpl objDocument = new DocumentDAOImpl();
		
		if(session.getAttribute("User") != null) {
			request.setAttribute("breadcrumb", "Bandeja de expedientes");
			request.setAttribute("findAllDocument", objDocument.findAll());
			request.getRequestDispatcher("ig-bandeja-expedientes.jsp").forward(request, response);
		
		} else {
			request.getRequestDispatcher("404.jsp").forward(request, response);
		}
	}
}
