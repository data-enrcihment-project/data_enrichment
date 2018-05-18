<%@page import="org.jinstagram.entity.users.basicinfo.UserInfoData"%>
<%@page import="com.jinstagram.pkg.JavaServlet"%>
<%@ page import="org.jinstagram.Instagram" %>
<%@ page import="org.jinstagram.auth.model.Token" %>
<%@ page import="org.jinstagram.auth.model.Verifier" %>
<%@ page import="org.jinstagram.auth.oauth.InstagramService" %>



<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="AJAX, JSP , JQUERY" />
<script src="javascript/jquery.js"></script> 
<script src="javascript/JqCallServlets.js"></script> 

<title>Insert title here</title>
</head>
<body>
<%
//String code = request.getParameter("code");

//InstagramService instaService =(InstagramService) session.getAttribute(JavaServlet.INSTA_SERVICE);

String token = session.getAttribute(JavaServlet.INSTA_TOKEN).toString();

	
%>


<input type="text" id="hahstag" name="hashtag" />

<input type="button" onclick="" />

</body>
</html>


<script type="text/javascript">

$(document).ready(function(){
	
	debugger;
	alert('asdads');
	var token ='<%=token%>';
	alert(token);
	CallingServlets(token);
	
});

</script>