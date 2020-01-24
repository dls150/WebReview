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
		Data using Expression language: Valor: ${5+1 } </br>
		<!-- Resultado do Ternario: ${2+2 == 4 ? 'Yes' : 'No' } -->
	</div>

	<div style="width: 500px; border: 1px solid silver; padding: 20px; margin: auto">
		</br>
		Name: ${param.name} </br>
		Address: ${param.address} </br>
		Version: ${paramValues.version[0]} </br>
		<a href="el.jsp">Back</a>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
