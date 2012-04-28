<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="resources/js/jquery.js"></script>
<title>Insert title here</title>
</head>
<body>
	<script type="text/javascript">
		function finalizaAgora(id){
			$.post("finalizaTarefa", { 'id': id }, 
					function(){
						//selecionando o elemento html através da ID e alterando o HTML dele
						$( "#tarefa_"+ id).html("Finalizado");
					}
			);
		}
	</script>
	<a href="novaTarefa">Criar nova tarefa</a><br><br>
	<table>
		<tr>
			<th>Id</th>
			<th>Descrição</th>
			<th>Finalização</th>
			<th>Data de finalização</th>
		</tr>
		<c:forEach items="${ tarefas }" var="tarefa">
			<tr>
				<td>${ tarefa.id }</td>
				<td>${ tarefa.descricao }</td>
				<c:if test="${ tarefa.finalizado eq false }">
					<td id="tarefa_${ tarefa.id }">
						<a href="#" onClick="finalizaAgora(${ tarefa.id })">Finaliza agora!</a>
					</td>
				</c:if>
				<c:if test="${ tarefa.finalizado eq true }">
					<td>Finalizado</td>
				</c:if>
				<td>
					<fmt:formatDate value="${ tarefa.dataFinalizacao.time }" pattern="dd/MM/yyyy"/>
				</td>
				<td><a href="mostraTarefa?id=${ tarefa.id }">ALTERAR</a></td>
				<td><a href="removeTarefa?id=${ tarefa.id }">REMOVER</a></td>
			</tr>
		</c:forEach>
	</table>
	
</body>
</html>