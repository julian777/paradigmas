<%@page import="modelo.gestorMensaje.GestorFeedTwitter"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Modelo.ModeloTwitter"%>

<!DOCTYPE html>
<html lang="es">

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title></title>
        <script src="js/Chart.js"></script>
        <script type="text/javascript" src="js/histograma.js"></script>
    </head>

    <% 
        ModeloTwitter m  = ModeloTwitter.crearInstancia(null); 
       GestorFeedTwitter gft = m.getgUsuarios();
        String datos = gft.datosGraficoUnoToJSON();
    %>

    <body onload="init()">       
        <h1>Horas del día con mayor afluencia de un tema</h1><br>
        <a href="Twitter.jsp">volver a menu Twitter</a>
        <br>
        <a href="pag2.jsp">ir a Grafico siguiente...</a>

        <input id="datos" hidden name="datos" type="text" value='<%=datos%>'/>


        <div id="canvas-holder">
            <canvas id="chart-area4" width="600" height="300"></canvas>
        </div>
        <script src="js/histograma.js"></script>
    </body>
    <html/>
