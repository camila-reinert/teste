<?php
    include("conecta.php");

    $s1  = $_POST["O_que_aconteceu"];
    $c1    = $_POST["Aconteceu_outras_vezes"];
    $s2      = $_POST["A_quanto_tempo_isso_aconteceu"];
    $c3      = $_POST["Possui_algum_problema_de_saude"];
    $s3      = $_POST["Quais_broblemas	"];
    $c5      = $_POST["Faz_uso_de_medicacao"];
    $s4      = $_POST["Quais_medicacoes"];
    $s5      = $_POST["Horario_da_ultima_medicacao"];
    $c7      = $_POST["Alergico_a_algo"];
    $s6      = $_POST["Especifique"];
    $c9      = $_POST["Ingeriu_alimento_ou_liquido_mais_seish"];
    $s7      = $_POST["Que_horas"];
    
    $comando = $pdo->prepare("INSERT INTO cadastro VALUES('$O_que_aconteceu', '$Aconteceu_outras_vezes','$A_quanto_tempo_isso_aconteceu ','$Possui_algum_problema_de_saude ','$Quais_broblemas ','$Faz_uso_de_medicacao ','$Quais_medicacoes ','$Horario_da_ultima_medicacao','$Alergico_a_algo','$Especifique','$Ingeriu_alimento_ou_liquido_mais_seish','$Que_horas')" );
    $resultado = $comando->execute();

    // Para voltar no formulário:
    header("Location: gestacional.html");


?>