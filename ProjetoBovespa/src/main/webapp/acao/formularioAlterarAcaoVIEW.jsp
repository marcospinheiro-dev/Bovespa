<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


			<form action="alterarAcao.jsp" method="POST">	
		
	
				<label>Código da Ação: </label> <br>
				<input type="text" name="id" value="<%=request.getParameter("id")%>"><Br>
		
				<label>Código da Ação: </label> <br>
				<input type="text" name="codigo" value="<%=request.getParameter("codigo")%>"> <br>
	
				<button type="submit">Alterar</button>
	
	
			</form>


</body>
</html>