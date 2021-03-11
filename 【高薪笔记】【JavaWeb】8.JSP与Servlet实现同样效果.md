# 【Java Web核心开发】8.JSP与Servlet实现同样效果

通过直接编写Servlet的方法：

```Java
package testpackage;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class URLParameters
 */
@WebServlet("/URLParameters")
public class URLParameters extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public URLParameters() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String UserName = request.getParameter("UserName");
		String Gender = request.getParameter("Gender");
		
		PrintWriter out = response.getWriter();
	
		out.println("<html>");
		out.println("The id parameter is :"+ id);
		out.println("<br/>");
		out.println("The UserName parameter is :"+ UserName);
		out.println("<br/>");
		out.println("The Gender parameter is :"+ Gender);
		out.println("<br/>");
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

```



但是，我们可以直接在JSP文件中进行修改

```jsp
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>URL Parameter Test Page (JSP)</title>
</head>
<body>

<%

String UserName = request.getParameter("UserName");

out.println("The User Name Parameter is :" + UserName);


%>


</body>
</html>
```

