<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="GB2312"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="GB2312">
<title>Insert title here</title>
</head>
<body>

	<jsp:useBean id="user1" class="beans.User" scope="session"></jsp:useBean>
	<jsp:setProperty property="*" name="user1" />

	<%
		String action = request.getParameter("action");

		if (action != null && action.equals("formsubmit")) {
			if (user1.validate()) {
				request.getRequestDispatcher("/Controller").forward(request, response);
			}
		}
	%>

	<h2><jsp:getProperty name="user1" property="message" /></h2>

	<form action="/Form/selfvalidatingform.jsp" method="post">
		<input type="hidden" name="action" value="formsubmit" /> <input
			type="text" name="email"
			value="<jsp:getProperty name="user1" property="email" />" /> <br />
		<input type="text" name="password"
			value="<jsp:getProperty name="user1" property="password" />" /> <br />
		
		<input type="submit" value="submit" />


	</form>




</body>
</html>