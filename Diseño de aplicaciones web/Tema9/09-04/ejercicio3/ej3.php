<!DOCTYPE html>
<html lang="en">
<!-- Por Alejandro Rodriguez Mena -->

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>

    <body>
        <h1>You Are on user.php!</h1>
        <p>
            <?php
            $num1 = $_GET['num1'];
            $num2 = $_GET['num2'];
            $suma = $num1 + $num2;
            echo "La suma de " . $num1 . " y " . $num2 . " es " . $suma;
            ?>
        </p>
    </body>
</body>

</html>