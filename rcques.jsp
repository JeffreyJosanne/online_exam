<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="javax.servlet.*,javax.servlet.http.*" %>
    <%
//HttpSession ss=request.getSession();

String[] para=(String[])session.getAttribute("para");
out.println(para[0]);

%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

</head>
<body>

</body>
</html>