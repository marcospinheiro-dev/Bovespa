<%@page import="DTO.AcaoDTO"%>
<%@page import="DAO.AcaoDAO"%>
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
			
			try{
					AcaoDTO objAcaoDTO = new AcaoDTO();
					objAcaoDTO.setCodigo_acao(request.getParameter("codigo"));
					
					AcaoDAO objAcaoDAO = new AcaoDAO();
					objAcaoDAO.CadastrarAcao(objAcaoDTO);
					
				
			}catch (Exception e){
				
			}
		
		
		%>
		
		

</body>
</html>