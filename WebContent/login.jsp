<%@page import="com.jinstagram.pkg.JavaServlet"%>
<%@page import="org.jinstagram.auth.InstagramAuthService"%>
<%@ page import="org.jinstagram.auth.oauth.InstagramService" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>INstagram</title>
</head>
<body>

<%
InstagramService instagramService = new InstagramAuthService()
    .apiKey("1deddefb3dd04435b000a451a19e77ef")
    .apiSecret("22116e57fbbc47988f65d4892f4e8ea3").callback("http://localhost:9090/dataEnrichment/token").build();
    
String authURL = instagramService.getAuthorizationUrl();
session.setAttribute(JavaServlet.INSTA_SERVICE, instagramService);


%>

<div>
<a href="<%=authURL %>" >Login Instagram</a>
</div>

</body>
</html>
<script type="text/javascript">
debugger;

   var a = '<%=instagramService%>';
   var aa = '<%=authURL%>';

</script>