<!DOCTYPE html>

<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>ISC517 - Asignacion 1</title>
        <link rel="stylesheet" type="text/css" href="/css/style.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
	<body>
		<div class="container">
			<div class="table-wrapper">
				<div class="table-title">
					<div class="row">
						<div class="col-sm-6">
							<h2><b>Estudiantes</b></h2>
						</div>
						<div class="col-sm-6">
							<a href="#addStudentModal" class="btn btn-success" data-toggle="modal" onclick="clearInputs()">
								<i class="material-icons">&#xE147;</i>
								<span>Registrar estudiante</span>
							</a>						
						</div>
					</div>
				</div>
				<#list estudiantes>
				<table class="table table-striped table-hover">
					<thead>
						<tr>
							<th>#</th>
							<th>Matricula</th>
							<th>Nombre</th>
							<th>Telefono</th>
							<th>Acciones</th>
						</tr>
					</thead>
					<tbody>
						<#items as estudiante>
						<tr>
							<td>${estudiante?counter}</td>
							<td>${estudiante.matricula?string["0"]}</td>
							<td>${estudiante.nombre} ${estudiante.apellido}</td>
							<td>${estudiante.telefono}</td>
							<td>
								<a href="#addStudentModal" class="edit" data-toggle="modal" onclick='setEditStudent(${estudiante.toJson()})'>
									<i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i>
								</a>
								<a href="#deleteStudentModal" class="delete" data-toggle="modal" onclick="setDeleteMat(${estudiante.matricula?string['0']})">
									<i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i>
								</a>
							</td>
						</tr>
						</#items> 
					</tbody>
				</table>
				<#else>
				<h4>No hay estudiantes!</h4>
				</#list>
			</div>
		</div>

		<div id="addStudentModal" class="modal fade">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">						
						<h4 class="modal-title">Formulario de estudiante</h4>
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					</div>
					<form method="POST" action="/store" name="estudiante">
						<div class="modal-body">					
							<div class="form-group">
								<label>Matricula</label>
								<input id="matriculaInput" type="number" class="form-control" name="matricula" required>
							</div>
							<div class="form-group">
								<label>Nombre</label>
								<input id="nombreInput" type="text" class="form-control" name="nombre" required>
							</div>
							<div class="form-group">
								<label>Apellido</label>
								<input id="apellidoInput" type="text" class="form-control" name="apellido" required>
							</div>
							<div class="form-group">
								<label>Telefono</label>
								<input id="telefonoInput" type="phone" class="form-control" name="telefono" required>
							</div>					
						</div>
						<div class="modal-footer">
							<input type="button" class="btn btn-default" data-dismiss="modal" value="Cancelar">
							<input type="submit" class="btn btn-success" value="Guardar">
						</div>
					</form>
				</div>
			</div>
		</div>

		<div id="deleteStudentModal" class="modal fade">
			<div class="modal-dialog">
				<div class="modal-content">
					<form method="" action="/delete">
						<div class="modal-header">						
							<h4 class="modal-title">Eliminar estudiante</h4>
							<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
						</div>
						<div class="modal-body">					
							<p>Está seguro que desea eliminar el estudiante?</p>
						</div>
						<input id="matriculaDel" type="number" class="form-control hidden" name="matricula" readonly required>
						<div class="modal-footer">
							<input type="button" class="btn btn-default" data-dismiss="modal" value="Cancelar">
							<input type="submit" class="btn btn-danger" value="Eliminar">
						</div>
					</form>
				</div>
			</div>
		</div>
		<script src="/js/scripts.js"></script>
	</body>
</html>