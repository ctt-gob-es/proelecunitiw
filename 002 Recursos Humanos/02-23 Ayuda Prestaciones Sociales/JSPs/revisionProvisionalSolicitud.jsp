<%@page import="com.uam.productos.tiproceeding.generico.utilidades.UtilidadesTP"%>
<%@page import="com.telvent.productos.tiproceeding.logica.Util"%>
<%@page import="com.telvent.productos.tiproceeding.logica.UsuarioDTO"%>
<%@page import="com.uam.productos.tiproceeding.generico.utilidades.UtilidadesUsuarios"%>
<%@page import="com.telvent.productos.tiproceeding.fachadas.AdministracionFacade"%>
<%@page import="com.telvent.productos.tiproceeding.fachadas.AdministracionFacade"%>
<%@page import="com.telvent.productos.tiproceeding.utils.ContainerHandler"%>
<%@page import="com.telvent.productos.tiproceeding.utils.Recursos"%>
<%@page import="com.telvent.productos.tiproceeding.DTO.DefinicionDatoDTO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*" %>

<%
String idInstanciaTramite = (String) request.getParameter("idInstanciaTramite");
String idInstanciaActividad = (String) request.getParameter("idInstanciaActividad");
String idInstanciaProceso = (String) request.getParameter("idInstanciaProceso");
String idVersionProceso = (String) request.getParameter("idVersionProceso");
UtilidadesTP utilidades = new UtilidadesTP(idInstanciaProceso);


String modo = (String) request.getParameter("modo");
String resultadoProvisional = utilidades.getValorWorkflow("resultadoProvisional");

String observaciones = utilidades.getValorWorkflow("observaciones");
String excluidoDocumentacionIncompleta = utilidades.getValorWorkflow("excluidoDocumentacionIncompleta");
String excluidoOtros = utilidades.getValorWorkflow("excluidoOtros");

if(!Util.isEmpty(modo) && modo.equalsIgnoreCase("guardar")){
	
	resultadoProvisional = (String) request.getParameter("resultadoProvisional");
	utilidades.setValorWorkflow("resultadoProvisional", resultadoProvisional);
	observaciones = (String) request.getParameter("observaciones");
	utilidades.setValorWorkflow("observaciones", observaciones);
	
	if("excluida".equalsIgnoreCase(resultadoProvisional)){
		// Cargamos las causas de exclusión
		excluidoDocumentacionIncompleta = (String) request.getParameter("excluidoDocumentacionIncompleta");
		excluidoOtros = (String) request.getParameter("excluidoOtros");
		
		
		utilidades.setValorWorkflow("excluidoDocumentacionIncompleta", excluidoDocumentacionIncompleta);
		utilidades.setValorWorkflow("excluidoOtros", excluidoOtros);
		
		utilidades.setValorWorkflow("etapa", "2");
		utilidades.setValorWorkflow("situacion", "23");
		
	}else if("admitida".equalsIgnoreCase(resultadoProvisional)){
		utilidades.setValorWorkflow("excluidoDocumentacionIncompleta", excluidoDocumentacionIncompleta);
		utilidades.setValorWorkflow("excluidoOtros", excluidoOtros);
				
		utilidades.setValorWorkflow("etapa", "2");
		utilidades.setValorWorkflow("situacion", "22");
		
	}else if("cancelada".equalsIgnoreCase(resultadoProvisional)){
		utilidades.setValorWorkflow("excluidoDocumentacionIncompleta", excluidoDocumentacionIncompleta);
		utilidades.setValorWorkflow("excluidoOtros", excluidoOtros);
		
		
		utilidades.setValorWorkflow("etapa", "2");
		utilidades.setValorWorkflow("situacion", "24");
		
	}else {
		utilidades.setValorWorkflow("excluidoDocumentacionIncompleta", excluidoDocumentacionIncompleta);
		utilidades.setValorWorkflow("excluidoOtros", excluidoOtros);
		
		utilidades.setValorWorkflow("etapa", "2");
		utilidades.setValorWorkflow("situacion", "21");
	}	
}

//Obtenemos el valor de la etapa / situacion actual	
AdministracionFacade fachadaAdministracion = ContainerHandler.getInst().getAdministracionFacade();
DefinicionDatoDTO defDatoDTO = fachadaAdministracion.getDefinicionDatoDTO("etapa", new Long(idVersionProceso));
String etapa = defDatoDTO.getTipoDato().getTextoActual(defDatoDTO, null, idInstanciaProceso, utilidades.getValorWorkflow("etapa"), Recursos.IDIOMA);

defDatoDTO = fachadaAdministracion.getDefinicionDatoDTO("situacion", new Long(idVersionProceso));
String situacion = defDatoDTO.getTipoDato().getTextoActual(defDatoDTO, null, idInstanciaProceso, utilidades.getValorWorkflow("situacion"), Recursos.IDIOMA);

	
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="funciones.js" charset="iso-8859-15" type="text/javascript"></script>
<style type="text/css">

html {
    font-style: normal;
    font-weight: normal;
    font-family: Arial, Helvetica, sans-serif;
}

textarea, input, button, select { font-family: inherit; font-size: inherit; }

td{
	font-size: 12px;
	color: #555;

}
.listadoGris {
	height: 15px;
	background-color: #e0e0e0;
	font-weight: bold;
	color: #000000;
	font-size: 12px;
	padding: 3px 5px;
	text-align: left;
	font-family: Arial;
}

#error{
	border: 2px solid red;
	width: 80%;
	margin: 0 auto;
	padding: 10px;
}
.botonNuevo {    
   	margin-right: 2px;
    border: 1px solid #8A8882;
    border-radius: 8px 8px 8px 8px;
    cursor: pointer;    
    padding: 3px 6px;
    text-decoration: none;    
    font-weight: bold;
    letter-spacing: 0.5px;
}


h3 {
    background: none repeat scroll 0 0 #efeff0;
    margin: 0;
    padding: 0 0 0 10px;
    font-size: 1.16em;
    line-height: 2em;
    font-weight: bold;
    letter-spacing: 1px;
    color: #00a65c;
}

</style>
</head>
<body>
	<form name="formulario" id="formulario" method="post" action="#">
		<input type="hidden" value="guardar" name="modo" id="modo">
		<input type="hidden" value="<%out.print(idInstanciaTramite);%>" name="idInstanciaTramite" id="idInstanciaTramite">
		<input type="hidden" value="<%out.print(idInstanciaActividad);%>" name="idInstanciaActividad" id="idInstanciaActividad">
		<input type="hidden" value="<%out.print(idVersionProceso);%>" name="idVersionProceso" id="idVersionProceso">
		
		
		<div id="contenedor">
			<table width="100%" cellspacing="3" cellpadding="1" border="0">
				<tr> 
					<td width="1%"></td>
					<td class="listadoGris" width="30%">Etapa:</td>
					<td>
						<%out.print(etapa);%>
					</td>
				</tr>
				<tr> 
					<td width="1%"></td>
					<td class="listadoGris" width="30%">Situación:</td>
					<td>
						<%out.print(situacion);%>
					</td>
				</tr>
				<tr> 
					<td width="1%"></td>
					<td class="listadoGris" width="30%">Observaciones (no se mostrara al usuario):</td>
					<td>
						 <textarea id="observaciones" name="observaciones" rows="4" cols="50"><%=observaciones %></textarea> 
					</td>
				</tr>
				<tr> 
					<td width="1%"></td>
					<td class="listadoGris" width="30%">¿Admitir solicitud?:</td>
					<td>
						<select id="resultadoProvisional" name="resultadoProvisional" onchange="mostrarOcultarCausasExclusion()">
							<option <%= ("".equals(resultadoProvisional)?"selected='selected'":"") %> value="">-- Seleccione resultado revisión --</option>
							<option <%= ("admitida".equals(resultadoProvisional)?"selected='selected'":"") %> value="admitida">1. Sí, admitir solicitud</option>
							<option <%= ("excluida".equals(resultadoProvisional)?"selected='selected'":"") %> value="excluida">2. No, requerir subsanación</option>
							<option <%= ("cancelada".equals(resultadoProvisional)?"selected='selected'":"") %> value="cancelada">3. No, cancelar expediente</option>
						</select> 
					</td>
				</tr>
			</table>		
			<div id="causasExclusion" style="display:none;">
				<table width="100%" cellspacing="3" cellpadding="1" border="0">
					<tr> 
						<td width="1%"></td>
						<td class="listadoGris" width="30%">Excluido por documentación incompleta:</td>
						<td>
							 <textarea id="excluidoDocumentacionIncompleta" name="excluidoDocumentacionIncompleta" rows="4" cols="50"><%=excluidoDocumentacionIncompleta %></textarea> 
						</td>
					</tr>
					<tr> 
						<td width="1%"></td>
						<td class="listadoGris" width="30%">Excluido por otras causas:</td>
						<td>
							 <textarea id="excluidoOtros" name="excluidoOtros" rows="4" cols="50"><%=excluidoOtros %></textarea> 
						</td>
					</tr>
				</table>
			</div>
		</div>
			
			
		<div id="tramitacion">
			<table width="100%" cellspacing="3" cellpadding="1" border="0">
				<tr>
					<td style="text-align:right" >
					<input title="GUARDAR" class="botonNuevo" type="submit" name="GUARDAR" value="Guardar" onClick="return guardarVariables();">
					</td>
				</tr>
			</table>
		</div>
	</form>

	<script language="javascript" type="text/javascript">
	esconderTramitar();
	mostrarOcultarCausasExclusion();
	parent.desactivaCargandoFirma();
	</script>
</body>
</html>