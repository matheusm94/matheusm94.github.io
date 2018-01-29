<%-- 
    Document   : CadastroMotorista
    Created on : 26/01/2018, 17:28:40
    Author     : Matheus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" ></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <title>Cadastro de motoristas</title>
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
        
        <form name="form" method="post" action="CadastroMotorista">
          <div class="row">  
            <div class="col-sm-8">
                <label for ="nome">Nome:</label>
                <input type="text" name ="nome" class="form-control" required/>
            </div>
          </div>  

            <br>

          <div class="row">  
            <div class="col-sm-8">
                <label for="cpf">CPF:</label>
                <input type="text" name ="cpf" class="form-control" placeholder="ex: 123456789" required/>
             </div>   
          </div>  
            <br>

          <div class="row">  
            <div class="col-sm-8">
                <label for="modeloCarro">Modelo do carro:</label>
                <input type="text" name ="modeloCarro" class="form-control" required/>
             </div>   
           </div> 
            <br>
        
         <%-- <div class="row">  
            <div class="col-sm-2">
                <label for="data">Data de nascimento:</label>
                <input type="date" class ="form-control" name="data"/>
             </div>   
          </div>  --%>

          <div class="row">  
            <div class="col-sm-2">
                <label for="idade">Data de nascimento: </label>
                <input type="text" name ="idade" class="form-control" placeholder="ex.: dia/mês" required/>
             </div>   
           </div> 
            <br>
            


            <div class="input-group mb-3">
              <div class="input-group-prepend">
                <label class="input-group-text" for="inputGroupSelect01">Sexo</label>
              </div>
              <select class="custom-select" id="inputGroupSelect01" name="sexo">
                <option value=""></option>
                <option value ="Masculino">Masculino</option>
                <option value="Feminino">Feminino</option>
                <option value="Outro">Outro</option>
                
              </select>
            </div>
        
            <br>
            <div class="input-group mb-3">
                <div class="input-group-prepend">
                    <label class="input-group-text" for="inputGroupSelect01">Status</label>
                </div>
                <select class="custom-select" id="inputGroupSelect01" name="status">
                    <option value=""></option>
                    <option value ="Ativo">Ativo</option>
                    <option value="Inativo">Inativo</option>
                </select>
            </div>
            
            <br>
            <br>
            <input type="submit" class = "btn btn-primary" value ="Cadastrar"/>
            
        </form>    
 </div>       
    </body>
</html>
