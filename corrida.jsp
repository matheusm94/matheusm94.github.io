<%-- 
    Document   : corrida
    Created on : 29/01/2018, 19:42:28
    Author     : Matheus
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Corridas</title>
         <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
      	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" ></script>
   	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    </head>
    <body>
        <div class="container">

            <nav class="navbar navbar-inverse">
                <div class="container-fluid">
                    <div class="navbar-header">
                    </div>
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="index.html">Home</a></li>
                        <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Cadastros<span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="CadastroPassageiro.jsp">Passageiros</a></li>
                                <li><a href="CadastroMotorista.jsp">Motoristas</a></li>
                                <li><a href="CadastroCorrida.jsp">Corridas</a></li>
                            </ul>
                        </li>
                        <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Usuários<span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="Passageiro.jsp">Passageiros</a></li>
                                <li><a href="Motorista.jsp">Motoristas</a></li>
                            </ul>
                        </li>
                        <li><a href="corrida.jsp">Corridas</a></li>
                    </ul>
                </div>
            </nav>

            <div class="table-hover"> 
                <table width="771" border="1" cellspacing="0" cellpadding="2" class="table">
                    <tr>
                        <td align="center" ><strong>Motorista</strong></td>
                        <td align="center" ><strong>Passageiro</strong></td>
                        <td align="center" ><strong>Valor da corrida</strong></td>
                    </tr>
                    <%
                        //Objetos
                        Connection con = null;
                        Statement stm = null;
                        ResultSet rs; //objeto que irá guardar o retorno da consulta
                        String sql;
                        String url = "jdbc:mysql://localhost/desafio";
                        try {
                            Class.forName("com.mysql.jdbc.Driver");
                            con = DriverManager.getConnection(url, "root", "root");
                            stm = con.createStatement();

                            sql = "SELECT * FROM corrida";
                            rs = stm.executeQuery(sql);
                            while (rs.next()) {
                    %>
                    <tr>
                        <td><%= rs.getString("motorista")%></td>
                        <td><%= rs.getString("passageiro")%></td>
                        <td><%= rs.getString("valor")%></td>
                    </tr>
                    <%
                            }
                        } catch (SQLException ex) {
                            out.print(ex.getMessage());
                        } finally {
                            try {
                                if (stm != null) {
                                    stm.close();
                                    stm = null;
                                }
                                if (con != null) {
                                    con.close();
                                    con = null;
                                }
                            } catch (SQLException ex) {
                            }
                        }
                    %>
                </table>
            </div> 
        </div>  
    </body>
</html>
