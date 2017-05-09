<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div id="container">
	<%@include file="header.jsp" %> 
	<div id="content">
    	<div id="maincontent">
			<form action="${basePath}/inquiry/info" method="post" class="form-horizontal" role="form">
			  
			  <div class="form-group">
			    <label for="label" class="col-sm-2 control-label">User id:</label>
			    <div class="col-sm-10">
			      <input type="text" class="form-control" id="userId" name="userId" placeholder="please input user id">
			    </div>
			  </div>
			  <div class="form-group">
			    <div class="col-sm-offset-2 col-sm-10">
			      <button type="submit" class="btn btn-default">Confirm</button>
			    </div>
			  </div>
			</form>
		</div>
	</div>
	<%@include file="footer.jsp" %>
</div>
</body>
</html>