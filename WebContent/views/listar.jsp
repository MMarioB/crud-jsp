<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Agenda</title>
</head>
<body>
	<%
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/agenda", "mario", "1234");
	System.out.println("Conectado correctamente a la Base de Datos");
	String sql = "Select * from contacto";
	PreparedStatement st = con.prepareStatement(sql);
	%>
	<div class="contenedor mt-3">
		<br>
		<h2 align="center">Listar Contactos</h2>
		<br>
		<div class="navbar">

			<a class="btn btn-outline-success btn-bg" href="alta.jsp">Add
				nuevo</a>
		</div>
		<br>
		<table class="table table-bordered table-hover responsive nowrap">
			<tr>
				<td class="text-center">Id</td>
				<td class="text-center">Nombre</td>
				<td class="text-center">Apellido</td>
				<td class="text-center">Telefono</td>
				<td class="text-center">Acciones</td>
			</tr>
			<%%>
			<%
			ResultSet datos = st.executeQuery();
			while (datos.next()) {
			%>
			<tr>
				<td class="text-center">
					<%
					out.print(datos.getInt("id_cont"));
					%>
				</td>
				<td class="text-center">
					<%
					out.print(datos.getString("nombre"));
					%>
				</td>
				<td class="text-center">
					<%
					out.print(datos.getString("apellido"));
					%>
				</td>
				<td class="text-center">
					<%
					out.print(datos.getString("telefono"));
					%>
				</td>
				<td class="text-center"><a
					href="editar.jsp?id_cont=<%=datos.getInt("id_cont")%>"
					class="btn btn-warning btn-sm">Editar</a> <a
					href="eliminar.jsp?id_cont=<%=datos.getInt("id_cont")%>"
					class="btn btn-danger btn-sm">Eliminar</a> <a href="Menu.jsp"
					class="btn btn-sm

btn-outline-primary">Principal</a></td>
			</tr>
			<%}%>

		</table>
	</div>
</body>
</html>