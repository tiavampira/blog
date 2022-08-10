<?php
    require_once '../core/sql.php';

    $id = 1;
    $nome = 'Ellen';
    $comentario = 'aqui se foi um programa bem elaborado';
    $data_criacao = '10/08/2022';
    $dados = ['nome'         => $nome,
              'comentario'   => $comentario,
              'data_criacao' => $data_criacao];

    $entidade = 'usuario';
    $criterio = [['id', '=', $id]];
    $campos = ['id', 'nome', 'data de criação'];
    print_r($dados);
    echo '<br>';
    print_r($campos);
    echo '<br>';
    print_r($criterio);
    echo '<br>';

    // teste geração INSERT
    $instrucao = insert($entidade, $dados);
    echo $instrucao.'<br>';

    //teste geração UPDATE
    $instrucao = update($entidade, $dados, $criterio);
    echo $instrucao.'<br>';

    //teste geração SELECT
    $instrucao = select($entidade, $campos, $criterio);
    echo $instrucao.'<br>';

    //teste geração DELETE
    $instrucao = delete($entidade, $criterio);
    echo $instrucao.'<br>';
?>