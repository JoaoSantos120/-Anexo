<?php include('conexao.php');?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <title>Sua chance!</title>
         <!-- Bootstrap CSS CDN -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <!-- Our Custom CSS -->
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <div class="wrapper">           
            <nav id="sidebar">
                <div class="sidebar-header">
                    <h3>Olá <?=$_SESSION['nome']?></h3>
                </div>

                <?php include('menu.php'); ?>

                <ul class="list-unstyled CTAs">
                    <!--<li><a href="#" id="salvar" class="btn btn-success">Salvar</a></li>-->
                    <li><a href="#sair.php" id="cancelar" class="btn btn-warning">Sair</a></li>
                </ul>
            </nav>
            <div class="container-fluid">
                <div id="content">

                    <nav class="navbar navbar-default">
                        <div class="container-fluid">

                            <div class="navbar-header">
                                <button type="button" id="btn" class="btn btn-info navbar-btn">
                                    <i class="glyphicon glyphicon-align-left"></i>
                                    <span>Menu</span>
                                </button>
                            </div>

                            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                                <ul class="nav navbar-nav navbar-right">
                                    <!--<li><a href="#">Pagina 1</a></li>-->
                                    <li><a href="#">Home</a></li>
                                    <li><a href="#">Meus Currículos</a></li>
                                    <li><a href="#sair.php">Sair</a></li>
                                </ul>
                            </div>
                        </div>
                    </nav>

                    <h2>Bem vindo</h2>
                    <p>Projeto Sua Chance - Crie, edite e gerencie facilmente seus currículos. Escolha um modelo e exporte em PDF ou envie por email!</p>

                    <div class="line"></div>

                    <form action="curriculo.php" method="POST">
                        <label for="nome">Digite um nome para associar ao curriculo:</label>
                        <input type="text" name="nome" id="">
                        <button class="btn btn-primary">Criar novo curriculo</button>
                    </form>

                    <hr></hr>

                    <?php 
                        $todos =  listCurriculo($_SESSION['id']);
                        while($curriculo = $todos->fetch_array()){
                            echo "<a href='".$curriculo['id']."'>";
                            echo $curriculo['nome'];
                            echo "</a><br>";
                        }
                    ?>

                </div>
            </div>
        </div>


        <!-- jQuery CDN -->
         <script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
         <!-- Bootstrap Js CDN -->
         <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
         <script>
            $(document).on('click', '#btn', function(){
                $('#sidebar').toggleClass('active');
            });
         </script>
    </body>
</html>
