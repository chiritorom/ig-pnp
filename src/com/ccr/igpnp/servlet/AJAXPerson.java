package com.ccr.igpnp.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ccr.igpnp.dao.impl.IdentityCardDAOImpl;
import com.ccr.igpnp.model.IdentityCard;
import com.ccr.igpnp.model.PersonDTO;

/**
 * Servlet implementation class AJAXPerson
 */
@WebServlet("/AJAXPerson")
public class AJAXPerson extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		
		PersonDTO person = null;	
		ArrayList<PersonDTO> arrPerson = (ArrayList<PersonDTO>) session.getAttribute("ArrPerson");
		
		IdentityCardDAOImpl objIdentityCard = new IdentityCardDAOImpl();
		IdentityCard identityCard = new IdentityCard();
		
		String nombres, apPaterno, apMaterno, email, numDocIdentidad, direccion, telfPrincipal, telfSecundario;
		int genero, docIdentidad, departamento, provincia, distrito, count;
		
		count = Integer.parseInt(request.getParameter("count"));
		nombres = request.getParameter("nombres");
		apPaterno = request.getParameter("apPaterno");
		apMaterno = request.getParameter("apMaterno");
		genero = Integer.parseInt(request.getParameter("genero"));
		email = request.getParameter("email");
		docIdentidad = Integer.parseInt(request.getParameter("docIdentidad"));
		numDocIdentidad = request.getParameter("numDocIdentidad");
		departamento = Integer.parseInt(request.getParameter("departamento"));
		provincia = Integer.parseInt(request.getParameter("provincia"));
		distrito = Integer.parseInt(request.getParameter("distrito"));
		direccion = request.getParameter("direccion");
		telfPrincipal = request.getParameter("telfPrincipal");
		telfSecundario = request.getParameter("telfSecundario");

		person = new PersonDTO();
		person.setFirstName(nombres);
		person.setLastName(apPaterno + " " + apMaterno);
		
		arrPerson.add(person);
		
		session.setAttribute("ArrPerson", arrPerson);
		identityCard = objIdentityCard.findById(docIdentidad);
		
		out.printf("<tr>");
		out.printf("<td>" + count + "</td>");
		out.printf("<td>" + nombres + "</td>");
		out.printf("<td>" + apPaterno + " " + apMaterno +  "</td>");
		out.printf("<td>" + identityCard.getDescription() + "</td>");
		out.printf("<td>" + numDocIdentidad + "</td>");
		out.printf("<tr>");
		
	}

}
