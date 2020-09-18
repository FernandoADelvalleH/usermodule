
<script type="text/javascript">
	/*CLIENTES*/
	$(document).ready(function() {
		$('#usuarios').dataTable( {
			// sDom: hace un espacio entre la tabla y los controles 
			"sDom": "<'row-fluid'<'span6'l><'span6'f>r>t<'row-fluid'<'span6'i><'span6'p>>",
		} );
	} );
</script>

<div id="container">
	<h1 align="center">Listado de Usuarios</h1>
	<?php
	if(isset($_GET['save'])){
		echo '<div class="alert alert-success text-center">La Información  se Almaceno Correctamente</div>';
	}
	if(isset($_GET['delete'])){
		echo '<div class="alert alert-warning text-center">La Información  se ha Eliminado Correctamente</div>';
	}
	if(isset($_GET['update'])){
		echo '<div class="alert alert-success text-center">La Información  se Actualizo Correctamente</div>';
	}
	if(isset($_GET['permisos'])){
		echo '<div class="alert alert-success text-center">Los Permisos fueron Asignados Correctamente</div>';
	}
	if(isset($_GET['password'])){
		echo '<div class="alert alert-success text-center">La Contraseña fue actualizado Correctamente</div>';
	}
	?>
	<center>
		<table id="usuarios" class="table table-striped">
			<thead>
				<tr>
					<th>NOMBRE</th>
					<th>APELLIDOS</th>
					<th>TELÉFONO</th>
					<th>RED SOCIAL</th>
					<th>EMAIL</th>
					<th>FECHA REGISTRO</th>
					<th>TIPO</th>
					<th>ESTATUS</th>
					<th class="col-md-1">ACCION</th>
				</tr>
			</thead>
			<tbody>
				<?php 
				$contador = 0;
				if(!empty($usuarios)){
					foreach($usuarios as $usuario){
						echo '<tr>';
						echo '<td>'.$usuario->NOMBRE.'</td>';
						echo '<td>'.$usuario->APELLIDOS.'</td>';
						echo '<td>'.$usuario->TELEFONO.'</td>';
						echo '<td>'.$usuario->SNETWORKS.'</td>';
						echo '<td>'.$usuario->EMAIL.'</td>';
						echo '<td>'.$usuario->FECHA_REGISTRO.'</td>';
						echo '<td>'.$usuario->TIPO.'</td>';
						/*Si es estatus mostramos en texto*/
						if($usuario->ESTATUS==0){
							echo '<td>Activo</td>';
						}
						if($usuario->ESTATUS==1){
							echo '<td>Inactivo</td>';
						}
						echo '<td><div class="btn-group">';

						?>
						<a title="Editar usuario" href="<?php echo base_url();?>index.php/usuarios/editar/<?php echo $usuario->ID;?>/" class="btn btn-success" value=""><i class="fas fa-pen"></i></a>

						<a title="Cambiar contraseña" href="<?php echo base_url();?>index.php/usuarios/password/<?php echo $usuario->ID ?>" class="btn btn-warning"><i class="fas fa-key"></i></a>

						<a title="Editar permisos" href="<?php echo base_url();?>index.php/usuarios/permisos/<?php echo $usuario->ID;?>" class="btn btn-info"><i class="fas fa-unlock-alt"></i></a>
						
						<a title="Eliminar usuario" href="<?php echo base_url();?>index.php/usuarios/eliminar/<?php echo $usuario->ID ?>" class="btn btn-danger"><i class="fas fa-trash-alt"></i></a>
						<?php		

						echo '</div></td>';

						echo '</tr>';
					} 
				}

				?>
			</tbody>
		</table>
	</center>
</div>