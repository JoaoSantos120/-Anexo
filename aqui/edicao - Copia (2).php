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
        <script>
            //funcao clique no botao
            
        </script>
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

                    <h2>Nome Curriculo</h2>
                    <p>
                           
                    <button id="contato" data-toggle="modal" data-target="#exampleModal">Adicionar Contato</button>

                    <h3>Informações de Contato
                        <span>Adicionar novo</span>
                    </h3>
                    <li>Rua dos Vereadores, nº 120 - Bairro Suarão. Itanháem / SP. <span class="del"> x </span>
                        <span class="update"> ^ </span>
                    </li>
                            
                    <h3>Escolaridade  <span>Adicionar novo</span></h3>
                    <li>
                        Ensino Médio Completo -                     E.M. Maria da Penha - 2021
                        <button>[x]</button>
                        <button>[-]</button>
                    </li>

                     <h3>Habilidades  <span>Adicionar novo</span></h3>
                    <li>Pacote Office Completo</li>
                    <li>Programação WEB com PHP, HTML, CSS e JS</li>
                    <li>Analista</li>
                    <li>Edição de Imagens com Photoshop</li>

                    <h3>Experiências  <span>Adicionar novo</span></h3>
                    <li>Estágio Supervisionado - Etec Itanhaém<br>
                        02/06/2021 à 25/12/2021</li>
                    <li>Jovem Aprendiz - Prefeitura Municipal de Itanhaém<br>
                    01/02/2020 à 20/05/2021</li>

                    </p>

                    <div class="line"></div>
                    
                   
                   
                </div>
            </div>
        </div>

        <?php include('mcontato.inc'); ?>
        <!-- jQuery CDN -->
         <script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
         <!-- Bootstrap Js CDN -->
         <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
         <script>
            $(document).on('click', '#btn', function(){
                $('#sidebar').toggleClass('active');
            });
            $(document).ready(function(){
                $('#uf').load("ajax.php?uf");
            });
            $(document).on('change',function(){
                var uf = $('#uf').val();
                $('#cidade').load("ajax.php?cidade=$uf");
            })
         </script>
         
    </body>
</html>
