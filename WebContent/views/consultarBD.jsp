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
	<%

String ape = request.getParameter("apellido");
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/agenda", "mario","1234");

PreparedStatement preparar = con.prepareStatement("SELECT * FROM contacto WHERE apellido =?");

preparar.setString(1, ape);
ResultSet resultado = preparar.executeQuery();
out.println("Consulta exitosa");
while(resultado.next()){
%>
	<div align="center">
		<br>
		<h2>Contacto Buscado</h2>
		<br>
		<form action="" method="post" class="form-control"
			style="width: 500px; height: 400px">
			<label>ID</label> <label class="form-control"><%= resultado.getInt(1)%></label>
			<br> <label>Nombre</label> <input type="text" readonly=""
				class="form-control" name="nomtxt"
				value="<%=

resultado.getString(2)%>"> <br> <label>Apellido</label>
			<input type="text" name="apetxt" class="form-control"
				value="<%=

resultado.getString(3)%>"> <br> <label>Telefono:</label>
			<input type="text" name="teltxt" class="form-control"
				value="<%=

resultado.getString(4)%>"> <br> <a
				href="Menu.jsp" class="btn btn-success btn-sm btn-sm">Ir al
				principal</a>
		</form>
		<%}%>
	</div>
</body>
</html>