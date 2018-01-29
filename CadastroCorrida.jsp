<%-- 
    Document   : CadastroCorrida
    Created on : 29/01/2018, 18:28:35
    Author     : Matheus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro de corrida</title>
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


            <%
                String status = request.getParameter("status");

                if (status != null && status.equals("1a")) {
                    out.println("<h3>Registro inserido</h3>");
                } else if (status != null && status.equals("1b")) {
                    out.println("<h3>Falha no Cadastro</h3>");
                }
            %>

            <form name="form" method="post" action="CadastroCorrida">
                <div class="row">  
                    <div class="col-sm-8">
                        <label for ="nome">Motorista: </label>
                        <input type="text" name ="nomeMotorista" class="form-control" required/>
                    </div>
                </div>  

                <br>

                <div class="row">  
                    <div class="col-sm-8">
                        <label for="cpf">Passageiro: </label>
                        <input type="text" name ="nomePassageiro" class="form-control" required/>
                    </div>   
                </div>  
                <br>

                <div class="row">  
                    <div class="col-sm-8">
                        <label for="modeloCarro">Valor da corrida: </label>
                        <input type="text" name ="valor" class="form-control" placeholder="ex: 10.1"required/>
                    </div>   
                </div> 
                <br>
                <br>
                <input type="submit" class = "btn btn-primary" value ="Cadastrar"/>

            </form>    
        </div>      
    </body>
</html>
