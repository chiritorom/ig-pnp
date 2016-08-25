package com.ccr.igpnp.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ccr.igpnp.dao.impl.DocumentDAOImpl;
import com.ccr.igpnp.dao.impl.GenderDAOImpl;
import com.ccr.igpnp.dao.impl.IdentityCardDAOImpl;
import com.ccr.igpnp.dao.impl.MaritalStatusDAOImpl;

/**
 * Servlet implementation class Index
 */
@WebServlet("/Index")
public class Index extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Index() {
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
		PrintWriter out = response.getWriter();
		String page = String.valueOf(request.getParameter("page"));
		
		DocumentDAOImpl objDocument = new DocumentDAOImpl();
		IdentityCardDAOImpl objIdentityCard = new IdentityCardDAOImpl();
		GenderDAOImpl objGender = new GenderDAOImpl();
		MaritalStatusDAOImpl objMaritalStatus = new MaritalStatusDAOImpl();
		
		switch(page) {
			case "null":
				request.getRequestDispatcher("login.jsp").forward(request, response);
				break;
			case "dashboard":
				request.setAttribute("breadcrumb", "Dashboard");
				request.getRequestDispatcher("ig-principal.jsp").forward(request, response);
				break;
			case "bandeja-de-expedientes":
				request.setAttribute("breadcrumb", "Bandeja de expedientes");
				request.setAttribute("findAllDocument", objDocument.findAll());
				request.getRequestDispatcher("ig-bandeja-expedientes.jsp").forward(request, response);
				break;
			case "crear-expediente":
				request.setAttribute("breadcrumb", "Crear expediente");
				request.setAttribute("findAllIdentityCard", objIdentityCard.findAll());
				request.setAttribute("findAllGender", objGender.findAll());
				request.setAttribute("findAllMaritalStatus", objMaritalStatus.findAll());
				request.getRequestDispatcher("ig-crear-expediente.jsp").forward(request, response);
				break;
			default:
				request.getRequestDispatcher("404.jsp").forward(request, response);
		}
	}


}
