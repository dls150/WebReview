<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Expression Language</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div style="width: 500px; border: 1px solid silver; padding: 20px; margin: auto">
		Form:
		<form action="el2.jsp" method="POST" style="padding:5px">
			</br>Name: <input name="name" value="${param.name}"/>  
			</br>Address: <input name="address" value="${param.address}" />  
			</br>Version: 
			<input type="checkbox" name="version"  value="v1"/> V1 
			<input type="checkbox" name="version"  value="v2"/> V2 
			<input type="checkbox" name="version"  value="v3"/> V3   
			</br><input type="submit" value="Submit"/>
		</form>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
