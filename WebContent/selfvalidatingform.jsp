<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	<jsp:useBean id="user2" class="beans.User" scope="request"></jsp:useBean>
	<jsp:setProperty property="*" name="user2"/>
	<%String action = request.getParameter("action");
		if (action!=null)
			if (user2.validate())
				request.getRequestDispatcher("/Controller").forward(request,response);
		
	%>
	
	<% if (!user2.validate()) { %>
	<form action="/Forms/selfvalidatingform.jsp" method="post">
		<input type="hidden" name="action" value="submitform"/>
		<input type="text" name="user" value="<jsp:getProperty name="user2" property="user"/>" />
		<br>
		<input type="text" name="email" value="<jsp:getProperty name="user2" property="email"/>" />
		<br>
		<input type="submit" value="Ok"/>
		<br>
		<%= user2.getMessage() %>	
	</form>
	
	<% } %>
	
	
	
	
</body>
</html>