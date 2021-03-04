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
	<%
	String nom = request.getParameter("nombre");//obtenet valor
	String ape = request.getParameter("apellido");
	String telf = request.getParameter("telefono");
	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/agenda", "mario","1234");

		Statement st = con.createStatement();
		if ((!nom.isEmpty()) && (!ape.isEmpty()) && (!telf.isEmpty())) {
			String sql = "INSERT INTO contacto (nombre,apellido,telefono) VALUES('" + nom +"','" + ape + "','" + telf + "')";
			st.executeUpdate(sql);
			out.print("Contacto guardado");
		} else {
			out.print("\tError de registro vacios");
		}
	} catch (ClassNotFoundException e) {
		System.out.println("Clase no encontrada: " + e);
	} catch (SQLException e) {
		System.out.println("Error de conexion: " + e);
	} catch (Exception e) {
		System.out.println("Error desconocido: " + e);
	}
	%>
	<div class="container">
		<br>
		<form action="" class="form-control"
			style="width: 300px; height: 200px">
			<label class="form-control"> ¿Desea seguir ingresando datos?</label>
			<br> <label class="form-control"><a
				class="btn btn-success btn-sm" href="alta.jsp">SI</a></label> <br> <label
				class="form-control"><a class="btn btn-danger btn-sm"
				href="Menu.jsp">NO</a></label>
		</form>
	</div>
</body>
</html>