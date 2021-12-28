package cl.edutecno.cookies;

import jakarta.servlet.ServletException;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Servlet implementation class RecuperacionCookies
 */

@WebServlet("/RecuperacionCookies")
public class RecuperacionCookies extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Cookie [] cookies = request.getCookies();
		PrintWriter print = response.getWriter();
		
		print.println("<html><body>");
		print.println("<h2><i>Cookie recuperada correctamente: </i><h2>");
		
		for(int i=0; i<cookies.length; i++) {
			print.println("Valor de la cookie: "+"<strong>"+ cookies[i].getValue()+"</strong");
			print.println("<br>");
			print.println("Nombre de la cookie: "+"<strong>"+ cookies[i].getName()+"</strong");
			print.println("<br>");
			print.println("</body></html>");
			
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
