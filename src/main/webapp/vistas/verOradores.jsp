<%@page import="dao.OradoresDAO"%>
<%@page import="java.util.List"%>
<%@page import="modelo.Orador"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Lista de Revendedores</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <link rel="stylesheet" href="./styles.css">
    </head>
    <body style="background-color: #c6a68e;">
        <div class="container mt-5">
            <h2>Lista de Revendedores</h2>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Nombre</th>
                        <th>Apellido</th>
                        <th>Tema</th>
                        <th>Fecha Alta</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        // Crear una instancia de OradoresDAO para acceder a la base de datos
                        OradoresDAO oradoresDAO = new OradoresDAO();

                        // Obtener la lista de oradores desde la base de datos
                        List<Orador> oradores = oradoresDAO.obtenerTodos();

                        if (oradores != null && !oradores.isEmpty()) {
                            // Iterar sobre la lista de oradores y mostrar sus datos en la tabla
                            for (Orador orador : oradores) {
                    %>
                    <tr>
                        <td><%= orador.getIdOrador()%></td>
                        <td><%= orador.getNombre()%></td>
                        <td><%= orador.getApellido()%></td>
                        <td><%= orador.getTema()%></td>
                        <td><%= orador.getFechaAlta()%></td>
                    </tr>
                    <%
                        }
                    } else {
                    %>
                    <tr>
                        <td colspan="5">No hay revendedores registrados.</td>
                    </tr>
                    <%
                        }
                    %>
                </tbody>
            </table>
            <!-- Botón para volver al índice -->
            <a href="../" class="btn text-white fs-6 btnBorrar" style="background-color: lightcoral;">Volver</a>   
        </div>
    </body>
</html>

