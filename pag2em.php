<?php
    include("conecta.php");

    $Emergencia_Medica	  = $_POST["Emergencia_Medica"];
    $Com_Meio_de_Transporte   = $_POST["Com_Meio_de_Transporte"];
    $Causado_por_Animais     = $_POST["Causado_por_Animais"];
    $Incendio     = $_POST["Incendio"];
    $Afogamento        = $_POST["Afogamento"];
    $Deslizamento_Desmoronamento	        = $_POST["Deslizamento_Desmoronamento	"];
    $Agressao        = $_POST["Agressao"];
    $Queda_de_altura_2M       = $_POST["Queda_de_altura_2M"];
    $Tentativa_de_Suicidio	        = $_POST["Tentativa_de_Suicidio	"];
    $Queda_Propria_Altura       = $_POST["Queda_Propria_Altura"];
    $Atropelamento        = $_POST["Atropelamento"];
    $Choque_Eletrico	        = $_POST["Choque_Eletrico	"];
    $Desabamento        = $_POST["Desabamento"];
    $Domestico        = $_POST["Domestico"];
    $Esportivo        = $_POST["Esportivo"];
    $Intoxicacao        = $_POST["Intoxicacao"];
    $Queda_de_bicicleta        = $_POST["Queda_de_bicicleta"];
    $Queda_de_moto        = $_POST["Queda_de_moto"];
    $Queda_2M        = $_POST["Queda_2M"];
    $Trabalho        = $_POST["Trabalho"];
    $Transferencia	        = $_POST["Transferencia	"];
    $Outro	        = $_POST["Outro	"];

    $comando = $pdo->prepare("INSERT INTO emergencias VALUES('$emergencia_medica','$Com_meio_de_transporte','$Causado_por_animais','$Incendio','$afogamento','$Deslizamento_Desmoronamento','$Agressao','$Queda_de_altura_2M','$Tentativa_de_Suicidio','$Queda_Propria_Altura','$Atropelamento','$Choque_Eletrico','$Desabamento','$Domestico','$Esportivo','$Intoxicacao','$Queda_de_bicicleta','$Queda_de_moto','$Queda_2M','$Trabalho','$Transferencia','$Outro')" );
    $resultado = $comando->execute();

    // Para voltar no formulário:
    header("Location: login.html");


?>