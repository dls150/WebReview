<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Servlet's Result</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div style="width: 500px; border: 1px solid silver; padding: 20px; margin: auto">
		Result:
		<form>
			<table width="300" cellpadding="10" align="center">
				<tr>
					<td>Name:</td>
					<td><input type="text" name="name" disabled="disabled"
						value="${param.name}" /></td>
				</tr>
				<tr>
					<td>Address:</td>
					<td><input type="text" name="address" disabled="disabled"
						value="${param.address}" /></td>
				</tr>
				<tr>
					<td>CPF:</td>
					<td><input type="text" name="cpf" disabled="disabled"
						value="${param.cpf}" /></td>
				</tr>
				<tr>
					<td>Birthday:</td>
					<td><input type="text" name="birth" disabled="disabled"
						value="${param.birth}" /></td>
				</tr>
			</table>
		</form>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>