<%--    
    Document   : MathServlet
    Created on : 7 de mar de 2021, 00:27:19
    Author     : samantamartins
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Math Servlet</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" />
    </head>
    <style>
    #igual { border: 0 none;}
    </style>
    <body>
        <nav class="navbar navbar-light bg-light">
            <div class="container-fluid">
                <a class="navbar-brand" href="index.html">Início</a>
                <a class="navbar-brand" href="SamantaServlet.jsp">Samanta Servlet</a>
                <a class="navbar-brand" href="MathServlet.jsp">Operações</a>
            </div>
        </nav>
        <!-- -->

        <%
            if(request.getParameter("operacoes") !=  null){
            String numero1 = request.getParameter("numero1");
            String numero2 = request.getParameter("numero2");
            String tipoOperacao = "";
            int numero01 = 0;
            int numero02 = 0;
            int resultado = 0;
            String operacoes = request.getParameter("operacoes");
            if (numero1 != "" && numero2 != "") {
                numero01 = Integer.parseInt(numero1);
                numero02 = Integer.parseInt(numero2);
                try {
                    switch (operacoes) {
                        case "1":
                            resultado = (numero01 + numero02);
                            tipoOperacao = "+";
                            break;
                        case "2":
                            resultado = (numero01 - numero02);
                            tipoOperacao = "-";
                            break;
                        case "3":
                            resultado = (numero01 * numero02);
                            tipoOperacao = "*";
                            break;
                        case "4":
                            resultado = (numero01 / numero02);
                            tipoOperacao = "/";
                            break;
                        default:
                            resultado = 0;
                            break;
                    }
                %>
    <br/>
    <div class="container">
        <div class="form-group row">
                <div class="col-sm-2">
                    <label>Nº 01: </label>
                    <input type="text" class="form-control" id="numero1" placeholder="Número 01" value="<%= numero01%>">
                </div>
                <div class="col-sm-1">
                    <label></label>
                    <input type="text" id="igual" value="<%= tipoOperacao%>">
                </div>
                <div class="col-sm-2">
                    <label>Nº 02: </label>
                    <input type="text" class="form-control" id="numero2" placeholder="Número 02"  value="<%= numero02%>">
                </div>
                <div class="col-sm-1">
                    <label></label>
                    <input type="text" id="igual" value="=">
                </div>
                <div class="col-sm-2">
                    <label>Resultado: </label>
                    <input type="text" class="form-control" id="numero2" placeholder="Resultado"  value="<%= resultado%>">
                </div>
        </div>
        <br/>
        <div class="form-group row">
            <div class="col-sm-10">
                <a type="button" href="MathServlet.jsp" name="action" class="btn btn-success">Retornar ao menu de operações</a>
            </div>
        </div>
    </div>
        <%} catch (Exception ex) {
                ex.getMessage();
            }
        }
    } else {
    %>
    <div class="container">
            <h1>Operações</h1>
            <br/>
            <form action="MathServlet.jsp" method="POST">
                <div class="form-group row">
                    <div class="col-sm-2">
                        <input type="number" class="form-control" id="numero1" name="numero1" placeholder="Número 01" min="0" required>
                    </div>
                    <div class="col-sm-2">
                        <input type="number" class="form-control" id="numero2" name="numero2" placeholder="Número 02" min="0" required>
                    </div>
                </div>
                <br/>
                <div class="row">
                    <div class="col-sm-10">
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="operacoes" id="gridRadios1" value="1" checked>
                            <label class="form-check-label" for="operacoes">
                                Soma ( + )
                            </label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="operacoes" id="gridRadios2" value="2">
                            <label class="form-check-label" for="operacoes">
                                Subtração ( - )
                            </label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="operacoes" id="gridRadios2" value="3">
                            <label class="form-check-label" for="operacoes">
                                Multiplicação ( * )
                            </label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="operacoes" id="gridRadios2" value="4">
                            <label class="form-check-label" for="operacoes">
                                Divisão ( / )
                            </label>
                        </div>
                    </div>
                </div>
                <br/>
                <div class="form-group row">
                    <div class="col-sm-10">
                        <button type="submit" name="action" class="btn btn-primary">Calcular</button>
                    </div>
                </div>
            </form>
        </div>
    <%}%>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"></script>  
    </body>
</html>
