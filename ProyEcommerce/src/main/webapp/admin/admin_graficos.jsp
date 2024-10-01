<%@page import="Entity.Pedido"%>
<%@page import="java.util.List"%>
<%@page import="Controller.PedidoController"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    PedidoController cPedidos = new PedidoController();
    List<Pedido> pedidos = cPedidos.obtenerPedidosAll();
    
    int cEntregado = 0;
    int cPorentregar = 0;
    int cListopararecoger = 0;
    
    for (Pedido p: pedidos){
        if(p.getEstado().equals("ENTREGADO")){
            cEntregado++;
        }else if(p.getEstado().equals("EN PROCESO")){
            cPorentregar++;
        }else if(p.getEstado().equals("LISTO PARA RECOGER")){
            cListopararecoger++;
        }
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Administrador</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
        <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
        <style>
            body {
                background-image: url('https://cloudappi-web.s3.eu-west-1.amazonaws.com/wp-content/uploads/2022/02/02090502/imagenes-blog.jpg');
                background-size: cover;
                background-repeat: no-repeat;
                background-position: center;
                background-attachment: fixed;
            }
        </style>
    </head>
    <body>
        <%@include file="admin_header.jsp" %>
        <div class="container">
            <h1 class="text-light">Gráfico</h1>
            <div>
                <p class="text-light"><%=cPorentregar%></p>
                <p class="text-light"><%=cListopararecoger%></p>
                <p class="text-light"><%=cEntregado%></p>
            </div>
            <canvas id="chartEstados" class="bg-light"></canvas>
        </div>
        <script>
            var ctxEstados = document.getElementById('chartEstados').getContext('2d');
            var chartEstados = new Chart(ctxEstados, {
                type: 'bar',
                data: {
                    labels: ['POR ENTREGAR','LISTO PARA RECOGER','ENTREGADO'],
                    datasets: [{
                        label: 'TABLA DE ESTADOS DE PRODUCTO',
                        data: [<%=cPorentregar%>,<%=cListopararecoger%>,<%=cEntregado%>],
                        backgroundColor: [
                            'rgba(255, 69, 0, 0.5)',
                            'rgba(0, 128, 255, 0.5)',
                            'rgba(255, 193, 7, 0.5)'
                        ],
                        borderColor: [
                            'rgba(255, 99, 132, 1)',
                            'rgba(54, 162, 235, 1)',
                            'rgba(255, 206, 86, 1)'
                        ],
                        borderWidth: 1.5
                    }]
                }
            });
        </script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/4.4.1/chart.min.js" integrity="sha512-L0Shl7nXXzIlBSUUPpxrokqq4ojqgZFQczTYlGjzONGTDAcLremjwaWv5A+EDLnxhQzY5xUZPWLOLqYRkY0Cbw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js" integrity="sha384-fbbOQedDUMZZ5KreZpsbe1LCZPVmfTnH7ois6mU1QK+m14rQ1l2bGBq41eYeM/fS" crossorigin="anonymous"></script>
    </body>
</html>
