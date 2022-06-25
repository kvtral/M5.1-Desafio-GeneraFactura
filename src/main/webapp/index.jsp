<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="UTF-8" %>
	<!DOCTYPE html>
	<html>

	<head>
		<meta charset="ISO-8859-1">
		<title>Formulario de Ingreso</title>

		<!-- Bootstrap -->

		<!-- CSS only -->
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
			integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">


	</head>

	<body>

		<section class="container mt-4">
			<div>
				<h1>Generador de Factura</h1>
			</div>

		</section>

		<section class="container mt-5 border border-dark bg-dark">
			<form class="mt-5 p-5 m-auto" action ="procesaFactura" method="POST">

				<div class="row">
					<div class="col-sm-12 col-md-6 col-lg-4">
						<label for="nombre"> Nombre Completo </label>
						<input type="text" class="form-control" id="nombre" name="nombre" placeholder="Nombre Completo"
							required>
					</div>
					<div class="col-sm-12 col-md-6 col-lg-4">
						<label for="empresa"> Empresa </label>
						<input type="text" class="form-control" id="empres" name="empresa" placeholder="Nombre Empresa"
							required>
					</div>
					<div class="col-sm-12 col-md-6 col-lg-4">
						<label for="rut"> RUT </label>
						<input type="text" class="form-control" id="rut" name="rut" placeholder="11111111-1" required>						
					</div>
					<div class="col-sm-12 col-md-6 col-lg-4">
						<label for="direccion"> Dirección </label>
						<input type="text" class="form-control" id="direccion" name="direccion" placeholder="Dirección"
							required>
					</div>
					<div class="col-sm-12 col-md-6 col-lg-4">
						<label for="ciudad"> Ciudad </label>
						<input type="text" class="form-control" id="ciudad" name="ciudad" placeholder="Ciudad" required>
					</div>
					<div class="col-sm-12 col-md-6 col-lg-4">
						<label for="pais"> País </label>
						<input type="text" class="form-control" id="pais" name="pais" placeholder="País" required>
					</div>
				</div>

				<table class="table table-dark table-striped mt-4">
					<thead>
						<tr>
							<th scope="col">#</th>
							<th scope="col">Item</th>
							<th scope="col">Descripción</th>
							<th scope="col">Valor Unitario</th>
							<th scope="col">Cantidad</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th scope="row">1</th>
							<td>Valvulas Titanio</td>
							<td>Valvulas de carrera</td>
							<td>$120.000</td>
							<td>
								<input type="number" class="form-control" id="valvulas" name="valvulas" placeholder="Cantidad"
									required value="0">
							</td>
						</tr>
						<tr>
							<th scope="row">2</th>
							<td>Turbo Full Carrera</td>
							<td>Turbo de competicion multimarca</td>
							<td>$1.700.000</td>
							<td>
								<input type="number" class="form-control" id="turbo" name="turbo" placeholder="Cantidad" required value="0">
							</td>
						</tr>
						<tr>
							<th scope="row">3</th>
							<td>Kit Freno Competicion</td>
							<td>Juego de discos, balatas, caliper de competicion</td>
							<td>$760.000</td>
							<td>
								<input type="number" class="form-control" id="frenos" name="frenos" placeholder="Cantidad" required value="0">
							</td>
						</tr>
						<tr>
							<th scope="row">4</th>
							<td>Sistema de Refrigeración</td>
							<td>Sistema de enfriamiento motor Carrera</td>
							<td>$2.300.000</td>
							<td>
								<input type="number" class="form-control" id="refri" name="refri" placeholder="Cantidad"
									required value="0">
							</td>
						</tr>
						<tr>
							<th scope="row">5</th>
							<td>Plumillas Standar</td>
							<td>Plumillas Limpiaparabrisas para lluvia</td>
							<td>$10.000</td>
							<td>
								<input type="number" class="form-control" id="plumillas" name="plumillas" placeholder="Cantidad"
									required value="0">
							</td>
						</tr>
					</tbody>
				</table>

				<div style="margin:0 auto; padding-left: 20px; padding-bottom:20px; float: right;">
					<button type="submit" class="btn btn-primary">Genera Factura</button>
					<button type="reset" class="btn btn-danger">Limpiar</button>
				</div>
			</form>
		</section>


		<!-- Bootstrap JavaScript Bundle with Popper -->
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
			integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
			crossorigin="anonymous"></script>

	</body>

	</html>