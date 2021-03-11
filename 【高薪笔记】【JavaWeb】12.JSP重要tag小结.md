# 【Java Web核心开发】12.JSP重要tag小结

```jsp
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%/* directive tag */ %>

<%@ page import ="java.util.*" %>

<p/>
<%/* expression tag */ %>

<%= new Date()  %>

<p/>
<%/* declaration tag */ %>


<%! public String name = "William"; %>

<p/>

<%/* scriptlet tag */ %>

<% for (int i=0; i<10; i++)  { %>

This is a loop written using scriptlet tag .<p/>

<% } %>





</body>
</html>
```



