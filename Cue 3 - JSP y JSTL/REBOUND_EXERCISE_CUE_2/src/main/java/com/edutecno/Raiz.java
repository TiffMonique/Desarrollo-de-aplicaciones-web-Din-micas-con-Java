package com.edutecno;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Servlet implementation class Raiz
 */
public class Raiz extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Raiz() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		  response.setContentType("text/html");
			
			PrintWriter printWriter = response.getWriter();
			
			String pass = request.getParameter("password");
			char c;
			int hasNum=0, hasCap=0 , hasLow = 0;
			boolean validar;
			
			if(pass.length()>10) {
				for (int i=0; i<pass.length(); i++) {
					c= pass.charAt(i);
					if(Character.isDigit(c)) {
						hasNum++;
					}else if(Character.isUpperCase(c)) {
						hasCap++;
					}
					else if(Character.isLowerCase(c)) {
						hasLow++;
					}
					if(hasNum>=3 && hasLow>=3 && hasCap>=4) {
						validar= true;
						request.setAttribute("pass",pass);
						RequestDispatcher rd = request.getRequestDispatcher("Respuesta.jsp");
						rd.forward(request, response);
						printWriter.println("Contraseña aceptada");
						
					}
					
				}
				
			}else {
				validar= false;
				request.setAttribute("password", pass);
				RequestDispatcher rd=request.getRequestDispatcher("Respuesta.jsp");
				rd.forward(request, response);
				printWriter.println("Esta contraseña es debil");
				
			}
			
			
			
			printWriter.println("Contraseña: "+ pass);
		doGet(request, response);
	}

}
