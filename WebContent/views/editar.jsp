<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Modificar</title>
</head>
<body>
	<%
//ESTABLECEMOS LA CONEXION CON NUESTRA BASE DE DATOS
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/agenda", "mario", "1234");
//PREPARAMOS LOS DATOS DEL CONTACTO MEDIANTE EL ID
int id = Integer.parseInt(request.getParameter("id_cont"));
if(id<=0){
out.print("Campos vacios");
}
String sql = "Select * from contacto where id_cont= '"+id+"'";
PreparedStatement preparar = con.prepareStatement(sql);
out.println("\tConectado correctamente a la Base de Datos");
ResultSet dato = preparar.executeQuery();
while(dato.next()){
%>
	<div align="center">
		<br>
		<h2>Modificar contacto</h2>
		<br>
		<form action="" method="post" class="form-control"
			style="width: 500px; height: 400px">
			<label>ID</label> <label class="form-control"><%= (dato.getInt("id_cont"))%></label>
			<br> <label>Nombre</label> <input type="text" readonly=""
				class="form-control" name="nomtxt"
				value="<%= dato.getString("nombre")%>"> <br> <label>Apellido</label>
			<input type="text" name="apetxt" class="form-control"
				value="<%= dato.getString("apellido")%>"> <br> <label>Telefono:</label>
			<input type="text" name="teltxt" class="form-control"
				value="<%= dato.getString("telefono")%>"> <br> <input
				type="reset" value="Cancelar" class="btn btn-danger btn-sm">
			<input type="submit" value="Actualizar"
				class="btn btn-primary btn-sm"> <a href="Menu.jsp"
				class="btn btn-success btn-sm btn-sm">Regresar</a>
		</form>
		<%}%>
	</div>
</body>
</html>
<%
String nom = request.getParameter("nomtxt");
String ape = request.getParameter("apetxt");
String telf = request.getParameter("teltxt");
String sqlUdate = "UPDATE contacto SET nombre ='"+nom+"',apellido='"+ape+"',telefono='"+telf+"' WHERE id_cont='"+id+"'";
preparar = con.prepareStatement(sqlUdate);
preparar.executeUpdate();
%>
</body>
</html>