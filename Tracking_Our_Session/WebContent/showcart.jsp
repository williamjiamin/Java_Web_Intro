<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%@ page import="demo.*"  %>

<% Cart cart = (Cart)session.getAttribute("cart");  %>

There are 【 <%= cart == null ? "error" : cart.getTotalItems() %> 】in the cart

<a href="<%= response.encodeUrl(request.getContextPath() + "/showcart2.jsp") %>">Click here to jump to showcart2.jsp</a>

</body>
</html>