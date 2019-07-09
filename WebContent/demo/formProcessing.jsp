<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.io.IOException"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.FileReader"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Form Processing</title>
</head>
<body>
  <h3>Parameter values:</h3>
  <%
    String userName = request.getParameter("userName");
    String password = request.getParameter("password");
    String firstName = request.getParameter("firstName");
    String lastName = request.getParameter("lastName");
    String gender = request.getParameter("gender");
    String[] thethaos=request.getParameterValues("thethao");
    String TenDanhSach=request.getParameter("TenDanhSach");
    String textarea=request.getParameter("txt");
    String[] addresses = request.getParameterValues("address");      
   
  %>
  
  User Name: <%=userName %> <br>
  Password: <%=password %> <br>
  First Name: <%=firstName %> <br>
  Last Name: <%=lastName %> <br>
  Gender: <%=gender %> <br>
  Select: <%=TenDanhSach %><br>

  Text: <%=textarea %><br>

  <% if(thethaos!=null){
	  for(String thethao:thethaos){
		  %>
		  TheThao:<%=thethao %><br>
	 <% }
  }%>
  <% if (addresses!= null)  {
       for(String address: addresses)  {
      %>
 
     Address: <%=address %> <br>
  
  <% }
       } %>
  
</body>
</html>