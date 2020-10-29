<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>这个JSP是用来set bean里面的数据的</title>
</head>
<body>

<jsp:useBean id="user"  class="beans.User" scope="application"></jsp:useBean>

<jsp:setProperty property="email" name="user"  value="LXOD_William@188.com"/>
<jsp:setProperty property="password" name="user"  value="WilliamPasswd"/>


</body>
</html>