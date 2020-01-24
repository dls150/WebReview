<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Scriptlets</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div
		style="width: 500px; border: 1px solid silver; padding: 20px; margin: auto">
		<%!int cont = 1;%>

		<p>
			<%
				List<String> nomes = new ArrayList<String>();
				nomes.add("Blue Shark");
				nomes.add("Yellow Shark");
				nomes.add("Green Shark");
				nomes.add("Purple Shark");
				nomes.add("Red Shark");

				for (String nome : nomes) {
					if (cont % 2 == 0) {
						out.println("<div style='background-color: #e6ffff; border-top-style: 1px solid green'>" + nome
								+ "</div>");
					} else {
						out.println("<div style='background-color: #ffffe6;  border-top-style: 1px solid red'>" + nome
								+ "</div>");
					}
					cont++;

				}
			%>
		
	</div>
	<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>