package com.edutecno.servlets;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;



/**
 * Servlet implementation class ProcesaLogin
 */

@WebServlet(name="ProcesaLogin" , urlPatterns={"/ProcesaLogin"})
public class ProcesaLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProcesaLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter writer = response.getWriter();
		HttpSession sesion= request.getSession();
		
	
			String nombre= request.getParameter("nombre");
			String pass= request.getParameter("password");
			
			if(nombre.equals("UsuarioRegistrado") && pass.equals("admin")) {		
				sesion.setAttribute("nombre", nombre);
				
				RequestDispatcher dis =getServletContext().getRequestDispatcher("/areaPrivada.jsp");
				dis.forward(request, response);
			
			}else {
				writer.println("<html><body>");
				writer.println("<p>Error , intente ingresar las credenciales correctas</p>");
				writer.println("</body></html>");
			}}
	
		


}
