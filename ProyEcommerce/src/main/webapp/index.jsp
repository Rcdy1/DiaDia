
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>DiaDia</title>
        <link rel="stylesheet" href="styles.css">
        <!-- ICON CDN (BOOTSTRAP ICON) -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">


        <link rel="stylesheet" href="index.css">
        <%--<link rel="stylesheet" href="/AV1_Proyecto/ViewCliente/styles.css">
        <link rel="stylesheet" href="/AV1_Proyecto/ViewCliente/IniciarSesion/CitaEstilo.css">
        <link rel="stylesheet" href="/AV1_Proyecto/ViewCliente/IniciarSesion/modalG.css">
        <!-- ICON CDN (BOOTSTRAP ICON) -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="index.css">
        <script src="https://kit.fontawesome.com/cefc19ce63.js" crossorigin="anonymous"></script>--%>
    </head>
    <body  style="background: linear-gradient(to right, #1c237f, #800080);">
        
    <center>
        <br>
        <br>
        <br>
    <h1  style="color: #ffffff;">
        LOGIN DIADIA       
    </h1>
</center>
    
    <div class="bg-black-wall hidden" id="bg-black-wall" data-black="black">

    </div>
    <div class="popup popup-login" id="popup-login">
        <form action="UsuarioController" class="form" method="POST" value="login">
            <br>
            <input hidden type="text" name="action" value="login">
            <input type="email" placeholder="Correo" name="correo" required>
            <div class="conteContra">
            <input type="password" id="password"  placeholder="Contraseña" name="password" required> 
                 <button type="button" id="togglePassword">
                        <i id="eyeIcon" class="fas fa-eye"></i>
                 </button>
            </div>
                <br>
                <button type="submit">INGRESAR</button>
            </form>
        </div>

        <script>
            const togglePassword = document.getElementById('togglePassword');
                        const password = document.getElementById('password');
                        const eyeIcon = document.getElementById('eyeIcon');

                        togglePassword.addEventListener('click', function () {
                            const type = password.getAttribute('type') === 'password' ? 'text' : 'password';
                            password.setAttribute('type', type);
                            eyeIcon.className = type === 'password' ? 'fas fa-eye' : 'fas fa-eye-slash';
                        });
        </script>
        <script src="index.js"></script>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
        <script src="script.js"></script>
    </body>
</html>
