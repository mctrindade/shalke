<?php
include_once '../complementosWEB.html';
?>
<html>
    <head>
        <meta charset="UTF-8">
        <title></title>
        </script> 
    </head>
    <body>
        <div class="container">
            <div class="card  text-white" style="background-color: coral">
                <div class="card-body"><h1> <center>Pesquisar Aluno</center> </h1></div>
            </div>
            <br>
            <form class="form-group" name="PesquisaAluno" method="post" action="../Controller/PesquisarAlunoController.php">
                <div class="card" style="background-color: coral;">
                    <div class="container">
                        <div class="form-row">
                            
                            <div class="form-group col-md-4 font-weight-bold">
                                <label for="nome">Nome</label>
                                <input name="nome" required="1" type="text" class="form-control" id="nome" placeholder="Digite o Nome ">
                            </div>
                            
                            
                            </div>
                        <div class="form-row">
                            <div class="form-group">
                                <button type="reset" class="btn btn-light btn-lg">Limpar</button>
                                <button type="submit" class="btn btn-primary btn-lg">Pesquisar</button>
                            </div>