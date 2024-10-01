
<!DOCTYPE html>
<%
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


        <div class="container mt-5 d-flex justify-content-center">
        <div class="chart-container shadow">
            <h3>Gráfico 2</h3>
            <canvas id="chartEstados" class="chart-canvas"></canvas>
        </div>
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