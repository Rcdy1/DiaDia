
<%
Map<String, Double> totalesPagadosPorUsuario = new HashMap<>();
for (Pedido p : pedidos) {
    int idUsuario = p.getUsuarioId();
    Usuario usuario = cUsuario.obtenerUsuario(idUsuario);
    double totalPedido = p.getTotalPago();

    // Reemplazar la referencia al método con una expresión lambda
    String nombreUsuario = usuario.getNombre();
    if (totalesPagadosPorUsuario.containsKey(nombreUsuario)) {
        totalesPagadosPorUsuario.put(nombreUsuario, totalesPagadosPorUsuario.get(nombreUsuario) + totalPedido);
    } else {
        totalesPagadosPorUsuario.put(nombreUsuario, totalPedido);
    }
}

String[] nombresUsuarios = new String[totalesPagadosPorUsuario.size()];
double[] totalesPagados = new double[totalesPagadosPorUsuario.size()];

int i = 0;
for (Map.Entry<String, Double> entry : totalesPagadosPorUsuario.entrySet()) {
    nombresUsuarios[i] = entry.getKey();
    totalesPagados[i] = entry.getValue();
    i++;
}

%>

       <div class="container mt-5 d-flex justify-content-center">
        <div class="chart-container shadow">
            <h3>Gráfico 4</h3>
            <canvas id="chartUsuarios" class="chart-canvas"></canvas>
        </div>
    </div>
        <script>
        var ctxUsuarios = document.getElementById('chartUsuarios').getContext('2d');

            // Colores predefinidos o puedes usar una función para generarlos dinámicamente
            var backgroundColors = generarColoresDinamicamente(4, 0.5);
            var borderColors = generarColoresDinamicamente(4, 1);
            console.log(generarColoresDinamicamente(4, 0.5)); // Utiliza console.log() en lugar de System.out.println()

            var chartUsuarios = new Chart(ctxUsuarios, {
                type: 'doughnut',
                data: {
                    labels: [<% for (String nombreUsuario : nombresUsuarios) { %>'<%= nombreUsuario %>', <% } %>],
                    datasets: [{
                        label: 'Total Pagado por Usuario',
                        data: [<% for (double totalPagado : totalesPagados) { %><%= totalPagado %>, <% } %>],
                        backgroundColor: backgroundColors,
                        borderColor: borderColors,
                        borderWidth: 1
                    }]
                }
            });

            // Función para generar colores automáticamente
            function generarColoresDinamicamente(cantidad, opacidad) {
                var colores = [];
                for (var i = 0; i < cantidad; i++) {
                    var r = Math.floor(Math.random() * 256);
                    var g = Math.floor(Math.random() * 256);
                    var b = Math.floor(Math.random() * 256);
                    colores.push("rgba("+r+"," + g+"," + b +"," +opacidad+")");
                    console.log(r);
                    console.log(g);
                    console.log(b);
                }
                return colores;
            }
        </script>