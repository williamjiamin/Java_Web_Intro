<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>这个JSP能够get到bean里面的数据</title>
</head>
<body>

<jsp:useBean id="user" class="beans.User"  scope="application"></jsp:useBean>

在bean里面储存的Email数据为： <%= user.getEmail() %>

<p/>

在bean里面储存的Password数据为： <%= user.getPassword() %>


</body>
</html>