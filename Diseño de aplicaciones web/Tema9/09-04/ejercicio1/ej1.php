<!DOCTYPE html>
<!-- Por Alejandro Rodriguez Mena -->
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Ejemplo ModRewrite</title>
</head>

<body>

    <body>
        <h1>You Are on user.php!</h1>
        <p>Welcome: <span style="color:green">
                <?php
                $id = $_GET['id'];
                echo $id;
                ?>
            </span></p>
    </body>
</body>

</html>