<?php 
require_once("../../conexao.php");

$nome = $_POST['nome'];
$email = $_POST['email'];
$cpf = $_POST['cpf'];
$senha = $_POST['senha'];
$senha_crip = md5($senha);
$nivel = $_POST['nivel'];
$id = $_POST['id'];

$antigo = $_POST['antigo'];
$antigo2 = $_POST['antigo2'];

// EVITAR DUPLICIDADE NO EMAIL
if($antigo2 != $email){
	$query_con = $pdo->prepare("SELECT * from usuarios WHERE email = :email");
	$query_con->bindValue(":email", $email);
	$query_con->execute();
	$res_con = $query_con->fetchAll(PDO::FETCH_ASSOC);
	if(@count($res_con) > 0){
		echo 'O email do usuário já está cadastrado!';
		exit();
	}
}

if($antigo != $cpf){
// EVITAR DUPLICIDADE NO CPF
	$query_con = $pdo->prepare("SELECT * from usuarios WHERE cpf = :cpf");
	$query_con->bindValue(":cpf", $cpf);
	$query_con->execute();
	$res_con = $query_con->fetchAll(PDO::FETCH_ASSOC);
	if(@count($res_con) > 0){
		echo 'O CPF do usuário já está cadastrado!';
		exit();
	}
}

if($id == ""){
    $res = $pdo->prepare("INSERT INTO usuarios SET nome = :nome, email = :email, cpf = :cpf, senha = :senha, senha_crip = :senha_crip, nivel = :nivel");
    $res->bindValue(":nome", $nome);
    $res->bindValue(":email", $email);
    $res->bindValue(":cpf", $cpf);
    $res->bindValue(":senha", $senha); // Aqui está a senha em texto plano
    $res->bindValue(":senha_crip", md5($senha)); // Aqui está a senha criptografada em MD5
    $res->bindValue(":nivel", $nivel);
    $res->execute();
}else{
    $res = $pdo->prepare("UPDATE usuarios SET nome = :nome, email = :email, cpf = :cpf, senha = :senha, senha_crip = :senha_crip, nivel = :nivel WHERE id = :id");
    $res->bindValue(":nome", $nome);
    $res->bindValue(":email", $email);
    $res->bindValue(":cpf", $cpf);
    $res->bindValue(":senha", $senha); // Aqui está a senha em texto plano
    $res->bindValue(":senha_crip", md5($senha)); // Aqui está a senha criptografada em MD5
    $res->bindValue(":nivel", $nivel);
    $res->bindValue(":id", $id);
    $res->execute();
}




echo 'Salvo com Sucesso!';
?>