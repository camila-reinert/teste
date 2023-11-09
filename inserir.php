<?php
    include("conecta.php");

    $nome  = $_POST["nome"];
    $email    = $_POST["email"];
    $senha      = $_POST["senha"];
    $telefone      = $_POST["telefone"];
    $admin_usu        = $_POST["admin_usu"];

    $comando = $pdo->prepare("INSERT INTO cadastro VALUES('$email', '$nome','$senha','$telefone','$admin_usu')" );
    $resultado = $comando->execute();

    // Para voltar no formulário:
    header("Location: login.html");


?>