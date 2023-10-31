<?php
session_start(); // Inicie a sessão
include("conecta.php"); //conecta com o bando de dados
// $host = "localhost";
// $usuario = "root";
// $senha = "";
// $banco = "bombeiro";

// try {
//     $pdo = new PDO("mysql:host=$host;dbname=$banco", $usuario, $senha);
//     $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
// } catch (PDOException $e) {
//     die("Falha na conexão com o banco de dados: " . $e->getMessage());
// }

// $_POST pega as informações do input
$email = $_POST["email"];
$senha = $_POST["senha"];


echo("SELECT * FROM cadastro WHERE email = '$email' and senha = '$senha'");

$comando = $pdo->prepare("SELECT * FROM cadastro WHERE email = '$email' and senha = '$senha'");
$resultado = $comando->execute();
$n = 0;
$admin = "s";

while($linhas = $comando->fetch())
{
    $n = 1;
    $admin = $linhas["admin_usu"];
    

 }

// if($n > 0)
// {
//     header("location:pag1.html");

// }
if($n == 1)
{
    if($admin == "s")
    {
       header("location:menuadm.html");
        $_SESSION['usuario_logado']=$linhas["email"];

    } 
    else{
        header("location:pag1.html");
        $_SESSION['usuario_logado']=$linhas["email"];
    }
}
 else {
    
    $_SESSION['erro'] = "Usuário não encontrado. Verifique suas credenciais.";
    header("Location: login.html");
}

?>
