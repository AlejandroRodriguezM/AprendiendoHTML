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
            $id = $_GET['id'];
            $color = $_GET['color'];
            echo "Welcome: <span style='color:" . $color . "'>" . $id . " en color " . $color . "</span>";
            ?>
        </p>
    </body>
</body>

</html>