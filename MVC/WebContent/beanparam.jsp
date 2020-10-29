<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="user888"  class="beans.User" scope="page"></jsp:useBean>


<jsp:setProperty property="*" name="user888" />

<%= user888.getPassword()  %>


</body>
</html>