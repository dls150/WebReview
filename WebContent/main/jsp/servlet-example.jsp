<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Servlet's Samples</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div style="width: 500px; border: 1px solid silver; padding: 20px; margin: auto">
		Form:
		<form action="../../wizard" method="POST">
			<table width="300" cellpadding="10" align="center">
				<tr>
					<td>Name:</td>
					<td><input type="text" name="name" /></td>
				</tr>
				<tr>
					<td>Address:</td>
					<td><input type="text" name="address" /></td>
				</tr>
				<tr>
					<td>CPF:</td>
					<td><input type="text" name="cpf" /></td>
				</tr>
				<tr>
					<td>Birth:</td>
					<td><input type="text" name="birth" /></td>
				</tr>
				<tr>
					<td><input type="submit" value="Submit" /></td>
					<td><input type="reset" value="Reset" /></td>
				</tr>
			</table>
		</form>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>