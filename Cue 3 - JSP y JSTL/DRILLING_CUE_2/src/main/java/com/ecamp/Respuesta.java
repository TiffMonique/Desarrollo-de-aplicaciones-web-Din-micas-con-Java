package com.ecamp;



import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Respuesta
 */

@WebServlet("/Respuesta")
public class Respuesta extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Respuesta() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");

		String nombre;
		nombre = request.getParameter("nombre");
		String direccion =request.getParameter("direccion");
		
		int cantidad1 = Integer.parseInt(request.getParameter("cantidad1"));
		int cantidad2 = Integer.parseInt(request.getParameter("cantidad2"));
		int cantidad3 = Integer.parseInt(request.getParameter("cantidad3"));
		int cantidad4 = Integer.parseInt(request.getParameter("cantidad4"));
		
		List<Integer> lista=new ArrayList<Integer>();
		lista.add(cantidad1);
		lista.add(cantidad2);
		lista.add(cantidad3);
		lista.add(cantidad4);
		request.setAttribute("cantidades", lista);
		   
	   request.getRequestDispatcher("destino.jsp").forward(request, response);
	    
	  
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
	}

}
