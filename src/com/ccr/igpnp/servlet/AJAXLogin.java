package com.ccr.igpnp.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ccr.igpnp.dao.impl.UserDAOImpl;
import com.ccr.igpnp.model.UserDTO;

/**
 * Servlet implementation class AJAXLogin
 */
@WebServlet("/AJAXLogin")
public class AJAXLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AJAXLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		
		String username = request.getParameter("user");
		String password = request.getParameter("password");
		HttpSession session = request.getSession(true);
		UserDAOImpl objUser = new UserDAOImpl();
		UserDTO user = objUser.findByUserAndPassword(username, password);

		if(user != null) {
			session.setAttribute("User", user);
			
			out.print("true");
		} else {
			out.print("false");
		}
		
	}

}
