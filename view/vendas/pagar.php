<?php
    
	require_once "../../classes/conexao.php";
	require_once "../../classes/vendas.php";
	$c= new conectar();
	$conexao=$c->conexao();

	$obj= new vendas();

	$idVenda = $_GET["idvenda"]; 
	
	$sql = "UPDATE vendas SET pago = 1 WHERE id_venda = $idVenda";
	$result=mysqli_query($conexao,$sql);

		$ver=mysqli_fetch_row($result);

	header("Location: ../inicio.php");
?>