<%@page import="DAO.AcaoDAO"%>
<%@page import="DTO.AcaoDTO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

		<%
		
			try {
				AcaoDTO objAcaoDTO = new AcaoDTO();
				objAcaoDTO.setId_acao
				(Integer.parseInt(request.getParameter("id")));
			
				AcaoDAO objAcaoDAO = new AcaoDAO();
				objAcaoDAO.ExcluirAcao(objAcaoDTO);
			
			} catch (Exception e) {
			
			}	
	
		%>	



</body>
</html>