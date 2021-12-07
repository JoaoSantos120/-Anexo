<?php
session_start();

// $user = 'profro26_chance';
$user = 'root';
// $senha = '@senhaforte';
$senha = 'usbw';
$servidor = 'localhost';
$banco = 'profro26_suachance';
$con = new mysqli($servidor,$user,$senha,$banco);

if(!$con){
	alert("Erro de conexão!");
}

/*  ********* usuario *********/
function login($usuario,$senha){
    $sql = 'SELECT * FROM tb_usuario WHERE email="'.$usuario.'" AND senha="'.$senha.'"';
    echo $sql;
    $resultado = $GLOBALS['con']->query($sql);
    $user = $resultado->fetch_array();
	if($resultado->num_rows > 0){
	    //ele existe, então vamos guardar os dados dele na sessão 
	    $_SESSION['id'] = $user['id'];
	    $_SESSION['nome'] = $user['nome'];
	    $_SESSION['email'] = $user['email'];
	    $_SESSION['senha'] = $user['senha'];
	    $_SESSION['cpf'] = $user['cpf'];
	    $_SESSION['foto'] = $user['foto'];
	    $_SESSION['status'] = $user['status'];
	    //e redirecionar ele para a pagina home
	    redirecionar('home.php');
	    
	}else{ // não tem ninguem com esse login e senha
	    alert("usuário e/ou senha inválidos");
	    redirecionar('index.php');
	}
}
function validar($token){
	$sql = 'SELECT * FROM tb_usuario WHERE status="'.$token.'"';
	$resultado = $GLOBALS['con']->query($sql);
	if($resultado->num_rows > 0){
		$user = $resultado->fetch_array();
		$atualizar = 'UPDATE tb_usuario SET status="ativo" WHERE id='.$user['id'];
		$resultado2 = $GLOBALS['con']->query($atualizar);
		if($resultado2){
			alert("Conta ativada com sucesso");
			//redirecioanr o usuário para página home
		}
	}else{
		alert("Token inválido");
	}
}

function cadUsuario($nome,$email,$cpf,$senha){
	$key = md5($cpf);
	$sql = 'INSERT INTO tb_usuario VALUES (null,"'.$nome.'","'.$email.'","'.$cpf.'","'.$senha.'","sem_foto.png","'.$key.'")';
	$resultado = $GLOBALS['con']->query($sql);
	if($resultado){
		//implementar validação de email
		if(mail($email,"BancoCurriculo [ativação de conta]",$key)){
			alert("Verifique seu email para validar o cadastro!");
		}else{
			alert("Falha ao enviar código.");
		}
	}else{
		alert("Erro ao cadastrar: ".$GLOBALS['con']->error);
	}
}

/*  ********* .usuario *********/
/*  ********* curriculo *********/
function cadCurriculo($nome){	
	$sql = 'INSERT INTO tb_curriculo VALUES (null,"'.$nome.'","'.$_SESSION['id'].'")';
	$resultado = $GLOBALS['con']->query($sql);
	if($resultado){
		alert("Curriculo Criado!");
	}else{
		alert("Erro ao cadastrar: ".$GLOBALS['con']->error);
	}
}

function listCurriculo($id){
	$sql = 'SELECT * FROM tb_curriculo';
	if($id>0){
		$sql.=' WHERE id_usuario='.$id;
	}
	$resultado = $GLOBALS['con']->query($sql);
	return $resultado;

}
/*  ********* .curriculo *********/


/*  ********* estados *********/
function listEstado($id){
	$sql = 'SELECT * FROM tb_estado';
	if($id>0){
		$sql.=' WHERE id='.$id;
	}
	$resultado = $GLOBALS['con']->query($sql);
	return $resultado;
}
/***************.estado **************/

// uteis
function alert($msg){
	echo '<script>alert("'.$msg.'");</script>';
}

function redirecionar($pagina){
	echo '<script>window.location="'.$pagina.'";</script>';
}

