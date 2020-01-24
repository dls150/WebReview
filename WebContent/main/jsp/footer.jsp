<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<div style="width: 500px; border: 1px solid black; padding: 20px; margin: auto">
	</br><a href="scriptlet.jsp">Exemplo Scriptlets</a>
	</br><a href="exe-scriptlets.jsp">Exercícios Scriplets</a>
	</br><a href="el.jsp">Expression Language</a>
	</br><a href="servlet-example.jsp">Exemplo Servlets</a>
	
	<%
		SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
	%>
	<h5><% out.print(sdf.format(new Date())); %> </h5>
</div>
