<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Alta</title>
</head>
<body>
	<div class="container">
		<hr>
		<h1>Añadir Contactos</h1>
		<hr>
		<form action="altaBD.jsp" method="post" class="form-control"
			style="width: 500px; height: 400px">

			<label>Nombre:</label> <input type="text" name="nombre"
				class="form-control"> <br> <label>Apellido:</label> <input
				type="text" name="apellido" class="form-control"> <br>
			<label>Telefono:</label> <input type="text" name="telefono"
				class="form-control"> <br> <input type="reset"
				value="Cancelar" class="btn btn-danger btn-sm"> <input
				type="submit" value="Guardar" class="btn btn-primary btn-sm">
			<a href="Menu.jsp" class="btn btn-success btn-sm">Regresar</a>
		</form>
	</div>
</body>
</html>