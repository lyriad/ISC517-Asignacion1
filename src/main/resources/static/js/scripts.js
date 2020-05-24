const clearInputs = () => {
	document.getElementById('matriculaInput').value = '';
	document.getElementById('matriculaInput').removeAttribute('readonly');
	document.getElementById('nombreInput').value = '';
	document.getElementById('apellidoInput').value = '';
	document.getElementById('telefonoInput').value = '';
}

const setDeleteMat = mat => document.getElementById('matriculaDel').value = mat;

const setEditStudent = student => {
	document.getElementById('matriculaInput').value = student.matricula;
	document.getElementById('matriculaInput').setAttribute('readonly', '');
	document.getElementById('nombreInput').value = student.nombre;
	document.getElementById('apellidoInput').value = student.apellido;
	document.getElementById('telefonoInput').value = student.telefono;
}
