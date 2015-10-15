<%@page import="modelo.gestorMensaje.GestorFeedTwitter"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Modelo.ModeloTwitter"%>

<!DOCTYPE html>
<html lang="es">

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title></title>
        <script src="js/Chart.js"></script>
        <script type="text/javascript" src="js/histogramaApariciones.js"></script>
    </head>

    <% 
        ModeloTwitter m  = ModeloTwitter.crearInstancia(null); 
       GestorFeedTwitter gft = m.getgUsuarios();
        String datosA = gft.datosGraficoSieteToJSON();
    %>

    <body onload="init()">       
        <h1>Hashtag y su cantidad de apariciones</h1><br>
        <a href="Twitter.jsp">volver a menu Twitter</a>
        <br>
        <a href="pag9.jsp">ir a Grafico siguiente...</a>

        <input id="datosA" hidden name="datosA" type="text" value='<%=datosA%>'/>


        <div id="canvas-holder">
            <canvas id="chart-area8" width="600" height="300"></canvas>
        </div>
        <script src="js/histogramaApariciones.js"></script>
    </body>
    <html/>
