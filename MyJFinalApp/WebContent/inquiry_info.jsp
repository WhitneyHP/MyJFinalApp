<%@page import="java.util.Map.Entry"%>
<%@page import="java.util.Set"%>
<%@page import="cn.banking.model.InquiryInfo"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% List accountList = (List)request.getAttribute("accountList");  %>
<h3>User ${userName} has <%= accountList.size() %> account.</h3><br>

<% for (int i = 0; i< accountList.size(); i++){ %>
	<% InquiryInfo accountInfo = (InquiryInfo)accountList.get(i); %>
	<table class="table">
	  <caption> Account Information <%= i+1 %></caption>
	  <thead>
	    <tr>
	      <th>account number</th>
	      <th><%= accountInfo._getAttrValues()[0] %></th>
	    </tr>
	  </thead>
	  
	  <tbody>
		<tr>
	      <td>account type</td>
	      <td><%= accountInfo._getAttrValues()[1] %> </td>
	    </tr>
	    <tr>
	      <td>account status</td>
	      <td><%= accountInfo._getAttrValues()[3] %></td>
	    </tr>
	    <tr>
	      <td>card number</td>
	      <td><%= accountInfo._getAttrValues()[2] %></td>
	    </tr>

	  </tbody>
	</table>
	<br>
<% } %>

</body>
</html>
