<?php

    $mensagem = $_POST["mensagem"];

    $files = scandir("./messages");

    $num_files = count($files) -2; // remove o . e o .. na hora de contar

    $fileName = "msg-{$num_files}.txt";

    $file = fopen("./messages/{$fileName}", "x");

    fwrite($file, $mensagem);

    fclose($file);

    header("Location: index.php");