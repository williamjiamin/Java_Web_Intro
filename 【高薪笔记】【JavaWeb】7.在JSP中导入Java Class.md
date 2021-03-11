# 【Java Web核心开发】7.在JSP中导入Java Class

在JSP中通过import导入相应的class

```JSP
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>欢迎大家来到乐学偶得的Java课程，这个页面是JSP页面哦~</title>
</head>
<body>

<%@ page import= "java.util.Date, testpackage.*" %>

<% String text = "大家好，欢迎大家来到乐学偶得的Java系列课程，今天是：";out.println(text);%>

<%= new Date() %>

<%

TextOutput textOut = new TextOutput();
out.println(textOut.getInfo());

%>


</body>
</html>
```

在Java Resource里面自定义class

```java
package testpackage;

public class TextOutput {
	public String getInfo() {
		return "这段文字是来自testpackage包里面的TextOutput里面的getInfo()";
	}
}

```

