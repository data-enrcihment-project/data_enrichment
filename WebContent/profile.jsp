
<%@page import="org.jinstagram.entity.users.basicinfo.UserInfoData"%>
<%@page import="com.jinstagram.pkg.JavaServlet"%>
<%@ page import="org.jinstagram.Instagram" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
	Instagram instagram = (Instagram) session.getAttribute(JavaServlet.INSTA_OBJECT);
	//Instagram instagram2 = (Instagram) session.getAttribute(JavaServlet.INSTA_LIST);

	UserInfoData infoData = instagram.getCurrentUserInfo().getData();
	
	
	
	//instagram.get

%>
Name : <%= infoData.getFullName() %><br/>

ID : <%= infoData.getId() %><br/>
Pic : <img src="<%= infoData.getProfilePicture() %>" /> <br/>

follows : <%= infoData.getCounts().getFollows() %><br/>
followers : <%= infoData.getCounts().getFollowedBy() %><br/>

</body>
</html>