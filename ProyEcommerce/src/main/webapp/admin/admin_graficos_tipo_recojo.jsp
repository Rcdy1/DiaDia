
<%

    
    int cRecojoEnTienda = 0;
    int cEntregaDomicilio = 0;
   
    
    for (Pedido p: pedidos){
        if(p.getMetodoEnvio() ==1){
            cRecojoEnTienda++;
        }else if(p.getMetodoEnvio() ==2){
            cEntregaDomicilio++;
        }
    }
%>
    <body>

        <div class="container mt-5 d-flex justify-content-center">
        <div class="chart-container shadow">
            <h3>Gráfico 3</h3>
            <canvas id="chartEntrega" class="chart-canvas"></canvas>
        </div>
    </div>
        <script>
            var ctxEntrega = document.getElementById('chartEntrega').getContext('2d');
            var chartEntrega = new Chart(ctxEntrega, {
                type: 'bar',
                data: {
                    labels: ['RECOJO EN LA TIENDA','ENTREGA EN EL DOMICILIO'],
                    datasets: [{
                        label: 'TABLA DE TIPO RECOJO PRODUCTO',
                        data: [<%=cRecojoEnTienda%>,<%=cEntregaDomicilio%>],
                        backgroundColor: [
                            'rgba(255, 69, 0, 0.5)',
                            'rgba(0, 128, 255, 0.5)'
                        ],
                        borderColor: [
                            'rgba(255, 99, 132, 1)',
                            'rgba(54, 162, 235, 1)'
                        ],
                        borderWidth: 1.5
                    }]
                }
            });
        </script>