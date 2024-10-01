<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@page import="Entity.Pedido"%>
<%@page import="Controller.PedidoController"%>
<%@page import="Controller.UsuarioController"%>
<%@ page import="Controller.ProductoController" %>
<%@ page import="Entity.Producto" %>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="Entity.Usuario" %>
<!DOCTYPE html>
<%
    PedidoController cPedidos = new PedidoController();
    List<Pedido> pedidos = cPedidos.obtenerPedidosAll();
    UsuarioController cUsuario = new UsuarioController();
    
    ProductoController cProducto = new ProductoController();
    List<Producto> productos = cProducto.obtenerProductos();
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
            .chart-container {
            width: 650px;
            height: 500px;
            background-color: rgba(255, 255, 255, 0.5); /* Fondo transparente */
            border-radius: 15px; /* Bordes redondos */
            padding: 20px;
            margin-bottom: 50px;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
        }

        .chart-container h3 {
            color: #fff;
            display: none;
        }

        .chart-canvas {
            background-color: rgba(255, 255, 255, 0.8); /* Fondo claro */
            border-radius: 15px; /* Bordes redondos */
            width: 100%;
            height: 100%;
            padding: 10px;
        }
        </style>
    </head>
    <body>
        <%@include file="admin_header.jsp" %>
        <div class="container">
            <div class="mt-3 w-100">
                <h2 class="text-light"> Vista General de Gráficos </h2>
            </div>
            <div class="row">
                <div class="col-6 mt-1">
                    <%@include file="admin_graficos_stock_categoria.jsp" %>
                </div>
                <div class="col-6 mt-1">
                    <%@include file="admin_graficos_estado_pedido.jsp" %>
                </div>
                <div class="col-6 mt-1">
                    <%@include file="admin_graficos_tipo_recojo.jsp" %>
                </div>
                <div class="col-6 mt-1">
                    <%@include file="admin_graficos_usuario_pagototal.jsp" %>
                </div>
            </div>
            
        </div>
        
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/4.4.1/chart.min.js" integrity="sha512-L0Shl7nXXzIlBSUUPpxrokqq4ojqgZFQczTYlGjzONGTDAcLremjwaWv5A+EDLnxhQzY5xUZPWLOLqYRkY0Cbw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js" integrity="sha384-fbbOQedDUMZZ5KreZpsbe1LCZPVmfTnH7ois6mU1QK+m14rQ1l2bGBq41eYeM/fS" crossorigin="anonymous"></script>
    </body>
</html>
