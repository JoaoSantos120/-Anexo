<?php
include('conexao.php');
if(isset($_GET['uf'])){
	$todos = listEstado(0);	
	while($uf = $todos->fetch_array()){
		$id = $uf['id'];
		$sigla = $uf['sigla'];
		echo '<option value="'.$id.'">'.$sigla.'</option>';
	}
}
if(isset($_GET['cidade'])){
	$todos = listCidade($_GET['cidade']);	
	while($uf = $todos->fetch_array()){
		$id = $uf['id'];
		$sigla = $uf['nome'];
		echo '<option value="'.$id.'">'.$sigla.'</option>';
	}
}