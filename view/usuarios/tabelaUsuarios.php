<?php 
	
	require_once "../../classes/conexao.php";
	$c= new conectar();
	$conexao=$c->conexao();

	$sql="SELECT id,
					nome,
					usu,
					email
			from usuarios";
	$result=mysqli_query($conexao, $sql);

 ?>


<table class="table table-hover table-condensed table-bordered" style="text-align: center;">
	<caption><label>Usuários</label></caption>
	<tr>
		<td>Nome</td>
		<td>Usuário</td>
		<td>Email</td>
		<td>Editar</td>
	</tr>

	<?php while($mostrar = mysqli_fetch_row($result)): ?>

	<tr>
		<td><?php echo $mostrar[1]; ?></td>
		<td><?php echo $mostrar[2]; ?></td>
		<td><?php echo $mostrar[3]; ?></td>
		<td>
			<span data-toggle="modal" data-target="#atualizaUsuarioModal" class="btn btn-warning btn-xs" onclick="adicionarDados('<?php echo $mostrar[0]; ?>')">
				<span class="glyphicon glyphicon-pencil"></span>
			</span>
		</td>
	</tr>

<?php endwhile; ?>
</table>