<?php
$host = "localhost";
$usuario = "root";
$senha = "";
$banco = "bombers";

try {
    $pdo = new PDO("mysql:host=$host;dbname=$banco", $usuario, $senha);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    die("Falha na conexão com o banco de dados: " . $e->getMessage());
}

session_start();

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $data_paciente = $_POST["data"];
    $sexo_paciente = $_POST["sexo"];
    $nome_hospital_paciente = $_POST["hospital"];
    $nome_paciente = $_POST["nome"];
    $idade_paciente = $_POST["idade"];
    $rg_cpf_paciente = $_POST["rg_cpf"];
    $fone_paciente = $_POST["fone"];
    $acompanhante_paciente = $_POST["acompanhante"];
    $idade_acompanhante_paciente = $_POST["idade_acompanhante"];
    $local_ocorrencia_paciente = $_POST["local"];
    $n_usb_paciente = $_POST["n_usb"];
    $cod_ur_paciente = $_POST["cod_ur"];
    $n_ocorr_paciente = $_POST["n_ocorr"];
    $desp_paciente = $_POST["desp"];
    $h_ch_paciente = $_POST["h_ch"];
    $km_final_paciente = $_POST["km_final"];
    $cod_sia_sus_paciente = $_POST["cod_sia_sus"];
    $socorrista = $_SESSION["usuario_logado"];

    $comando = $pdo->prepare("INSERT INTO paciente (nome_hospital, data, sexo, nome_paciente, idade, rg_cpf, fone, acompanhante, idade_acompanhante, local_ocorrencia, n_usb, cod_ur, n_ocorr, cod_ps, desp, h_ch, km_final, cod_sia_sus, socorrista) VALUES ('$nome_hospital_paciente', '$data_paciente', '$sexo_paciente', '$nome_paciente', $idade_paciente, '$rg_cpf_paciente', '$fone_paciente', '$acompanhante_paciente', $idade_acompanhante_paciente, '$local_ocorrencia_paciente', '$n_usb_paciente', '$cod_ur_paciente', '$n_ocorr_paciente', '$cod_ps_paciente', '$desp_paciente', '$h_ch_paciente', '$km_final_paciente', '$cod_sia_sus_paciente', '$socorrista')");
    $resultado = $comando->execute();

    // Para voltar no formulário:
    header("Location: pag2em.html");
}
?>