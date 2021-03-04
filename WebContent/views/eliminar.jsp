<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Eliminar</title>
</head>
<body>
	<%
	//ESTABLECEMOS LA CONEXION CON NUESTRA BASE DE DATOS

	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/agenda", "mario", "1234");
	out.println("\tConectado correctamente a la Base de Datos");
	//REALIZAMOS LA CONSULTA DE ELIMINACION MEDIANTE EL ID
	int id = Integer.parseInt(request.getParameter("id_cont"));
	String sql = "DELETE FROM contacto where id_cont= '" + id + "'";
	PreparedStatement preparar = con.prepareStatement(sql);
	preparar.executeUpdate();
	response.sendRedirect("listar.jsp");
	%>
</body>
</html>