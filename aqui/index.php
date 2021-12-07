<?php include('conexao.php');?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Sua chance!</title>
	<link rel="stylesheet" href="css/index.css">
</head>
<body>
<div class="esquerda">
	<form action="cadastrar.php" method="post">
		<fieldset>
			<legend>Crie sua conta, é gratis!!!</legend>
			<label for="nome">Seu nome</label>
			<input type="text" name="nome"><br>	
			<label for="email">Seu email</label>
			<input type="email" name="email"><br>	
			<label for="cpf">Seu CPF</label>
			<input type="text" name="cpf"><br>
			<label for="senha">Senha:</label>
			<input type="password" name="senha"><br>
			<button>Cadastrar</button>
		</fieldset>
	</form>
</div>
<div class="direita">
<form action="login.php" method="post">
		<fieldset>
			<legend>Já tenho conta:</legend>
			<label for="login">Seu email</label>
			<input type="email" name="login"><br>	
			<label for="senha">Sua senha</label>
			<input type="password" name="senha"><br>
		    <br>
			<button>Entrar</button>
		</fieldset>
	</form>
</div>

</body>
</html>