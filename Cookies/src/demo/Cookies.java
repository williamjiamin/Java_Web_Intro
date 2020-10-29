package demo;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Cookies
 */
@WebServlet("/Cookies")
public class Cookies extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Cookies() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter(); 
		
		out.println("<html>");
		
		Cookie[] cookies = request.getCookies();
		
		if(cookies == null) {
			out.println("Oh no ! There is no cookies !!!!<br/>");
		}else {
			for (Cookie retrievedCookie: cookies) {
				String name = retrievedCookie.getName();
				String value = retrievedCookie.getValue();
				
				out.println("The [" + name + "] is : ["  + value + "]<br/>");
			}
		}
		
		
		
		
		Cookie cookie = new Cookie("user","lexueoude");
		
		cookie.setMaxAge(300);
		
		response.addCookie(cookie);
		
		out.println("We have set our cookies~");
		
		
		out.println("</html>");
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
