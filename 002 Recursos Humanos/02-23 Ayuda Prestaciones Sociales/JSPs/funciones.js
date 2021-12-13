/* Funciones JS para convocatorias concurrencia competitiva */

function esconderTramitar(){
	try{
		//escondemos el boton de tramitar y el texto de importante.
		var btnTramitar = parent.document.getElementsByName('botonTramitar');
		for(var x=0;x<btnTramitar.length;x++){
			//Anulamos todas las instancias del boton.
			btnTramitar[x].style.display = 'none';
		}
	}catch(e){}
}

function cambiarValor(campo1, campo2) {
	var resultado = document.getElementById(campo1).checked;
	if(resultado)
		document.getElementById(campo2).value = "si";
	else document.getElementById(campo2).value = "no";
}



function mostrarOcultarCausasExclusion(){
	var resultadoRevision = document.getElementById('resultadoProvisional').value;
	if(resultadoRevision == "excluida"){
		document.getElementById('causasExclusion').style.display = '';
		var iframe = parent.document.getElementById('frameFormulario');
		iframe.style.height = "450px";

	}else{
		document.getElementById('causasExclusion').style.display = 'none';
		var iframe = parent.document.getElementById('frameFormulario');
		iframe.style.height = "350px";

		//Borramos el valor de todas las demas variables
		document.getElementById("excluidoDocumentacionIncompleta").value = ""; 
		document.getElementById("excluidoOtros").value = ""; 

	}	
}

function guardarVariables() {
	var resultado = true;
	var resultadoRevision = document.getElementById('resultadoProvisional').value;
	if(resultadoRevision == "cancelada"){
		resultado = confirm("Seguro que quiere cancelar el expediente? Esto implica eliminar esta solicitud y no se puede recuperar.");
		if(resultado){
			parent.activaCargando();
		}
	}else{
		parent.activaCargando();
	}
	
	return resultado;
}



function mostrarOcultarCausasExclusionDefinitiva(){
	var resultadoRevision = document.getElementById('resultadoDefinitivo').value;
	if(resultadoRevision == "excluida"){
		document.getElementById('causasExclusion').style.display = '';
		var iframe = parent.document.getElementById('frameFormulario');
		iframe.style.height = "450px";

	}else{
		document.getElementById('causasExclusion').style.display = 'none';
		var iframe = parent.document.getElementById('frameFormulario');
		iframe.style.height = "350px";

		//Borramos el valor de todas las demas variables
		document.getElementById("excluidoDocumentacionIncompletaDefinitivo").value = "";
		document.getElementById("excluidoOtrosDefinitivo").value = ""; 


	}	
}

function guardarVariablesDefinitiva() {
	var resultado = true;
	var resultadoRevision = document.getElementById('resultadoDefinitivo').value;
	if(resultadoRevision == "cancelada"){
		resultado = confirm("Seguro que quiere cancelar el expediente? Esto implica eliminar esta solicitud y no se puede recuperar.");
		if(resultado){
			parent.activaCargando();
		}
	}
	else if(resultadoRevision == "") {
		alert("Debe seleccionar una de las opciones");
	}
	else{
		parent.activaCargando();
	}
	
	return resultado;
}


