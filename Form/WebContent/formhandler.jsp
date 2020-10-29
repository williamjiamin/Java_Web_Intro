<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="user" class="beans.User" scope="session"></jsp:useBean>
<jsp:setProperty property="*" name="user" />

The user name is : <%= user.getEmail() %>
The password is : <%= user.getPassword() %>

</body>
</html>