<?php
include('conexao.php');

if($_POST){
    login($_POST['login'], $_POST['senha']);
}