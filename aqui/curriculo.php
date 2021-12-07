<?php 
include('conexao.php');
if(isset($_POST['nome'])){
    cadCurriculo($_POST['nome']);
    redirecionar('home.php');

}

?>