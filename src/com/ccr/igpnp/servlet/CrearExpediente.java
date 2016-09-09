package com.ccr.igpnp.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ccr.igpnp.dao.impl.GenderDAOImpl;
import com.ccr.igpnp.dao.impl.IdentityCardDAOImpl;
import com.ccr.igpnp.model.PersonDTO;

/**
 * Servlet implementation class CrearExpediente
 */
@WebServlet("/CrearExpediente")
public class CrearExpediente extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CrearExpediente() {
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
		
		IdentityCardDAOImpl objIdentityCard = new IdentityCardDAOImpl();
		GenderDAOImpl objGender = new GenderDAOImpl();
		
		List<PersonDTO> arrPerson = new ArrayList<PersonDTO>();
		
		if(session.getAttribute("User") != null) {
			
			session.setAttribute("ArrPerson", arrPerson);
			request.setAttribute("breadcrumb", "Crear expediente");
			request.setAttribute("findAllIdentityCard", objIdentityCard.findAll());
			request.setAttribute("findAllGender", objGender.findAll());
			request.getRequestDispatcher("ig-crear-expediente.jsp").forward(request, response);
		
		} else {
			request.getRequestDispatcher("404.jsp").forward(request, response);
		}
	}

}
