<?php 
@session_start();

//VERIFICAR PERMISSÃO DO USUÁRIO
if(@$_SESSION['nivel_usuario'] != 'Operador'){
	echo "<script language='javascript'>window.location='pdv.php'</script>";
}

 ?>