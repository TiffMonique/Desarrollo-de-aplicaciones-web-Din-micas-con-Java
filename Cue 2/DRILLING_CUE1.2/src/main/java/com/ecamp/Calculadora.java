package com.ecamp;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Servlet implementation class Calculadora
 */
@WebServlet("/Calculadora")
public class Calculadora extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	
    public Calculadora() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	PrintWriter out = response.getWriter();
		
		out.println("<html>");
		out.println("<body>");
		out.println("<form method='post' action='/DRILLING_CUE1.2/Calculadora'>");
		out.println("<p> Numero 1: \r\n"+"<input type=\"text\"name=\"valor1\" size=\"30\"><p>");
		out.println("<p> Numero 2: \r\n"+"<input type=\"text\"name=\"valor2\" size=\"30\"><p>");
		out.println("<input type=\"submit\" value=\"Submit\" name=\"SubmitButton\">");
		out.println("</form>");
		out.println("</html></body>");
		

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		double Num1 = Double.parseDouble(request.getParameter("valor1"));
		double Num2 = Double.parseDouble(request.getParameter("valor2"));
	
		
		PrintWriter printWriter= response.getWriter();
		
		printWriter.println("<html><body>");
		printWriter.println("<p> La suma de valores es:");
		printWriter.println(Num1+Num2);
		printWriter.println("</p><br>");
		printWriter.println("<p> La multipliacion de valores es: ");
		printWriter.println(Num1*Num2);
		printWriter.println("</p></html></body>");
		doGet(request, response);
		
	}

}
