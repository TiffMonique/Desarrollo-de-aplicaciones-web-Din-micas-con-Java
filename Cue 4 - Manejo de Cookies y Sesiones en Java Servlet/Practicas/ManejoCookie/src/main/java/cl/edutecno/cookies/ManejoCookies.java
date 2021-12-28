package cl.edutecno.cookies;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/ManejoCookies")
public class ManejoCookies extends HttpServlet{
	
	
	/**
	 * 
	 */
	
	private static final long serialVersionUID = 1L;
	
	
	
	protected void doGet(HttpServletRequest request , HttpServletResponse response) throws ServletException ,IOException{
		
		Cookie cookie = new Cookie ("user", "2020");
		cookie.setMaxAge(9000);
		cookie.setComment("Cookie guardada");
		response.addCookie(cookie);
		
		
		PrintWriter print = response.getWriter();
		print.println("<html><body>");
		print.println("<h2><i>Cookie guardada correctamente: </i><h2><br>");
		print.println("Valor de la cookie: "+"<strong>"+ cookie.getValue()+"</strong>");
		print.println("<br>");
		print.println("Valor de la cookie: "+"<strong>"+ cookie.getMaxAge()+"</strong>");
		print.println("<br>");
		print.println("Valor de la cookie: "+"<strong>"+ cookie.getComment()+"</strong>");
		print.println("</body></html>");
	}
	
	
	
	
	
	
	

}
