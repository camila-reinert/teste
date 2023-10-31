<?php
// Verifica se o formulário foi submetido
include("conecta.php");
if ($_SERVER["REQUEST_METHOD"] == "POST") {

    // Arrays para armazenar as seleções das checkboxes
    $abertura_ocular = $_POST["abertura_ocular"];
    $resposta_verbal = $_POST["resposta_verbal"];
    $resposta_motora = $_POST["resposta_motora"];

    // // Converta os arrays em strings para armazenamento no banco de dados
    // $abertura_ocular_str = implode("Espontânea,Comando Verbal,Estímulo Doloroso,Nenhuma ", $abertura_ocular);
    // $resposta_verbal_str = implode("PALAVRAS E FRASE APROPRIADAS,PALAVRAS INAPROPRIADAS,CHORO PERSISTENTE OU GRITOS,SONS IMCOMPREENSÍVEIS,NENHUMA RESPOSTA VERBA ", $resposta_verbal);
    // $resposta_motora_str = implode("OBEDECE PRONTAMENTE,LOCALIZA DOR OU ESTÍMULO TÁTIL,RETIRADA DO SEGMENTO ESTIMULADO,FLEXÃO ANORMAL (DECORTICAÇÃO),EXTENSÃO ANORMAL (DECEREBRAÇÃO),AUSÊNCIA (PARALISIA FLÁCIDA, HIPOTONIA) ", $resposta_motora);

    // Consulta SQL para inserir os dados na tabela
    $sql = "INSERT INTO avaliacao_paciente_menor VALUES (25,:abertura_ocular, :resposta_verbal, :resposta_motora)";
    
    $stmt = $pdo->prepare($sql);
    //$stmt->bind_param("sss", $abertura_ocular, $resposta_verbal, $resposta_motora);
    $stmt->bindParam('abertura_ocular', $abertura_ocular, PDO::PARAM_STR);
    $stmt->bindParam('resposta_verbal', $resposta_verbal, PDO::PARAM_STR);
    $stmt->bindParam('resposta_motora', $resposta_motora, PDO::PARAM_STR);

    if ($stmt->execute()) {
        echo 'Dados salvos com sucesso!';
    } else {
        echo 'Erro ao salvar os dados: ' . $stmt->error;
    }

    // Feche a conexão
 
    $pdo->close();
}
?>
