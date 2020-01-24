<%@page import="model.Pessoa"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
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
	<div style="width: 500px; border: 1px solid black; padding: 20px; margin: auto">
		A13 - Scriptlets <br /> <br />
		<%
			List<Pessoa> listaPessoas = new ArrayList<Pessoa>();

			Pessoa pessoa = new Pessoa();
			pessoa.setIdade(25);
			pessoa.setNasc(new Date());
			pessoa.setNome("Alice");
			pessoa.setPeso(58.1);
			listaPessoas.add(pessoa);

			pessoa = new Pessoa();
			pessoa.setIdade(19);
			pessoa.setNasc(new Date());
			pessoa.setNome("Joana");
			pessoa.setPeso(56.4);
			listaPessoas.add(pessoa);

			pessoa = new Pessoa();
			pessoa.setIdade(20);
			pessoa.setNasc(new Date());
			pessoa.setNome("Luiza");
			pessoa.setPeso(57.2);
			listaPessoas.add(pessoa);
		%>


		<table width="500" cellpadding="5" cellspacing="3" align="center">
			<tr>
				<td>Nome</td>
				<td>Nascimento</td>
				<td>Idade</td>
				<td>Peso</td>
			</tr>

			<%
				DateFormat format = new SimpleDateFormat("dd/MM/yyyy");
				String bgcolor = null;
				Integer cont = 0;
				for (Pessoa p : listaPessoas) {

					if (cont % 2 == 0) {
						bgcolor = "grey";
					} else {
						bgcolor = "none";
					}
			%>

			<tr style="background-color: <%=bgcolor%>">
				<td><%=p.getNome()%></td>
				<td><%=format.format(p.getNasc())%></td>
				<td><%=p.getIdade()%></td>
				<td><%=p.getPeso()%></td>
				<%
					cont++;
					}
				%>
			
		</table>



	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>