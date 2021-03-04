<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Buscar</title>
</head>
<body>
	<div align="center">
		<h1>Buscar contacto</h1>
		<br>
		<form action="consultarBD.jsp" method="post" class="form-control"
			style="width: 500px; height: 150px">

			<label>Ingrese Apellido: </label> <input type="text" name="apellido"
				size="50"> <input type="submit" value="Buscar"
				class="btn btn-primary btn-sm"> <a href="Menu.jsp"
				class="btn btn-danger btn-sm">Principal</a>
		</form>
	</div>

</body>
</html>