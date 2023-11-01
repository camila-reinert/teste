<?php

session_start();
    include("conecta.php");
    $O_que_aconteceu = $_POST["O_que_aconteceu"];
    $Aconteceu_outras_vezes = $_POST["Aconteceu_outras_vezes"];
    $A_quanto_tempo_isso_aconteceu = $_POST["A_quanto_tempo_isso_aconteceu"];
    $Possui_algum_problema_de_saude = $_POST["Possui_algum_problema_de_saude"];
    $Quais_problemas = $_POST["Quais_problemas"];
    $Horario_da_ultima_medicacao = $_POST["Horario_da_ultima_medicacao"];
    $Alergico_a_algo = $_POST["Alergico_a_algo"];
    $Especifique = $_POST["Especifique"];
    $Ingeriu_alimento_ou_liquido_mais_seish = $_POST["Ingeriu_alimento_ou_liquido_mais_seish"];
    $Que_horas = $_POST["Que_horas"];

    $comando = $pdo->prepare("INSERT INTO paciente VALUES(null,'$O_que_aconteceu','$Aconteceu_outras_vezes','$A_quanto_tempo_isso_aconteceu','$Possui_algum_problema_de_saude',$Quais_problemas,'$Faz_uso_de_medicacao','$Quais_medicacoes','$Horario_da_ultima_medicacao',$Alergico_a_algo,'$Especifique','$Ingeriu_alimento_ou_liquido_mais_seish','$Que_horas')" );
    $resultado = $comando->execute();

    // Para voltar no formulário:
    header("Location: gestacional.html");
?>