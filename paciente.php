<?php
$host = "localhost";
$usuario = "root";
$senha = "";
$banco = "bombeiro";

try {
    $pdo = new PDO("mysql:host=$host;dbname=$banco", $id_paciente, $data_paciente, $sexo_paciente, $nome_hospital_paciente, $nome_paciente, $idade_paciente, $rg_cpf_paciente, $fone_paciente, $acompanhante_paciente, $idade_acompanhante_paciente, $local_ocorrencia_paciente, $n_usb_paciente, $cod_ur_paciente, $n_ocorr_paciente, $cod_ps_paciente, $desp_paciente, $h_ch_paciente, $km_final_paciente, $cod_sia_sus_paciente);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    die("Falha na conexão com o banco de dados: " . $e->getMessage());
}

// $_POST pega as informações do input
$id_paciente = $_POST["email"];
$data_paciente = $_POST["senha"];
$sexo_paciente = $_POST["email"];
$nome_hospital_paciente = $_POST["email"];
$nome_paciente = $_POST["email"];
$idade_paciente = $_POST["email"];
$rg_cpf_paciente = $_POST["email"];
$fone_paciente = $_POST["email"];
$acompanhante_paciente = $_POST["email"];
$acompanhante_paciente = $_POST["email"];
$idade_acompanhante_paciente = $_POST["email"];
$local_ocorrencia_paciente = $_POST["email"];
$n_usb_paciente = $_POST["email"];
$cod_ur_paciente = $_POST["email"];
$n_ocorr_paciente = $_POST["email"];
$cod_ps_paciente = $_POST["email"];
$desp_paciente = $_POST["email"];
$h_ch_paciente = $_POST["email"];
$km_final_paciente = $_POST["email"];
$cod_sia_sus_paciente = $_POST["email"];


include("conecta.php"); //conecta com o bando de dados

$comando = $pdo->prepare("SELECT * FROM cadastro WHERE email = '$email' and senha = '$senha'");
$resultado = $comando->execute();
$n = 0;
$admin = "s";

while($linhas = $comando->fetch())
{
    $n = 1;
    $admin = $linhas["admin_usu"];
 }

if($n == 0)
{
    header("location:paciente.html");
}
if($n == 1)
{
    if($admin == "s")
    {
        header("location:menuadm.html");
    } 
    else{
        header("location:pag1.html");
    }
}
?>
