<?php 

session_start();
require_once "../../classes/conexao.php";
require_once "../../classes/categorias.php";



$data = date("Y-m-d");
$idusuario = $_SESSION['idusu'];
$categoria = $_POST['categoria'];


$obj = new categorias();



$dados=array(
	$idusuario,
	$categoria,
	$data

);

echo $obj->adicionarCategoria($dados);

 ?>