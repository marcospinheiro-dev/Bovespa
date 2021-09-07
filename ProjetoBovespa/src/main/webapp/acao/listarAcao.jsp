<%@page import="DTO.AcaoDTO"%>
<%@page import="java.util.ArrayList"%>
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
			try {
				
				AcaoDAO objAcaoDAO = new AcaoDAO();
				ArrayList<AcaoDTO> lista = objAcaoDAO.PesquisarAcao();
				
				for (int num = 0 ; num	< lista.size(); num++) {
					out.print("Id: " + lista.get(num).getId_acao() + "<br>");
					out.print("Código: " + lista.get(num).getCodigo_acao() + "<br>");
					
					out.print("<a href='formularioExcluirAcaoVIEW.jsp?id="
							+ lista.get(num).getId_acao() + "&codigo="
							+ lista.get(num).getCodigo_acao() + "'>Excluir</a>"+" ");				
					
					out.print("<a href='formularioAlterarAcaoVIEW.jsp?id="
							+ lista.get(num).getId_acao() + "&codigo="
							+ lista.get(num).getCodigo_acao() + "'>Alterar</a>");					
					
		%> <br> <br> <% 		
		
					}
				
			} catch (Exception e) {
				
			}
		
		
		%>



</body>
</html>