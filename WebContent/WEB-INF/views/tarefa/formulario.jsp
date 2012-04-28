<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="views/style.css" />
<title>Add tasks</title>
</head>
<body>
	<h3>Adicionar tarefas</h3>
<<<<<<< HEAD
	<b></b><form:errors path="tarefa.descricao" /></b>
=======
	<b><form:errors path="tarefa.descricao" /></b>
>>>>>>> listandoTarefas
	<form action="adicionaTarefa" method="post">
		Descrição da tarefa: <br>
		<textarea name="descricao" rows="5" cols="100"></textarea><br>
	 	<input type="submit" value="Adicionar">
	</form>
</body>
</html>