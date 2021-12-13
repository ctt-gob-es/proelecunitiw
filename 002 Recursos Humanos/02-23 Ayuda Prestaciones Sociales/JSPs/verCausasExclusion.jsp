<%@page import="com.uam.productos.tiproceeding.generico.utilidades.UtilidadesTP"%>
<%@page import="com.telvent.productos.tiproceeding.logica.Util"%>
<%@page import="com.telvent.productos.tiproceeding.logica.UsuarioDTO"%>
<%@page import="com.uam.productos.tiproceeding.generico.utilidades.UtilidadesUsuarios"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*" %>

<%
String idInstanciaTramite = (String) request.getParameter("idInstanciaTramite");
String idInstanciaActividad = (String) request.getParameter("idInstanciaActividad");
String idInstanciaProceso = (String) request.getParameter("idInstanciaProceso");
	
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="funciones.js" charset="iso-8859-15" type="text/javascript"></script>
<style type="text/css">
html {
    font: normal 75%/1em Arial, Helvetica, sans-serif;
}

textarea, input, button, select { font-family: inherit; font-size: inherit; }

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
.listadoGris {
	height:15px;
	background-color:#e0e0e0;
	font-weight:bold;	
	font-size:12px;	
	padding:5px;
	text-align: left;
	font-family: Arial;
}

.capaTramite {
    font-size: 1.1em;
    padding-left: 0.6em;
    padding-top: 0.6em;
    padding-bottom: 0.6em;
    padding-right: 0.6em;
    text-align: left;
    border: solid 1px #eee;
    padding: 0px;
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

<%
UtilidadesTP utilidades = new UtilidadesTP(idInstanciaProceso);
int alturaExcluidos = 0;
%>
			<div id="causasExclusion" class="capaTramite">
				<h3>Causas de exclusión</h3>
				
				<table style="font-size:13px;margin:25px 25px 25px 0;" width="60%" border="0" CELLSPACING=5>
				<%
				String excluidoDocumentacionIncompleta = utilidades.getValorWorkflow("excluidoDocumentacionIncompleta");
				if(!Util.isEmpty(excluidoDocumentacionIncompleta)){
					alturaExcluidos += excluidoDocumentacionIncompleta.length()/4; //En resolucion 1440p la altura es aproximadamente la cuarta parte de la longitud del texto
					
				%>
					<tr> 
						<td width="2%">
							<img alt="Excluido" title="Excluido" border="0" src="../../../entidades/UAM/images/exclusion.png"/>
						</td>
						<td class="listadoGris" width="50%">Documentación incompleta:</td>
						<td>
							<%=excluidoDocumentacionIncompleta%>
						</td>
					</tr>
				<%
				}	
				%>

				<%
				String excluidoOtros = utilidades.getValorWorkflow("excluidoOtros");
				if(!Util.isEmpty(excluidoOtros)){
					alturaExcluidos += excluidoOtros.length()/4;
				%>
					<tr> 
						
						<td width="2%">
							<img alt="Excluido" title="Excluido" border="0" src="../../../entidades/UAM/images/exclusion.png"/>
						</td>
						<td class="listadoGris" width="50%">Excluido por otras causas:</td>
						<td>
							<%=excluidoOtros%>
						</td>
					</tr>
				<%
				}
				%>
				</table>
			</div>

<script type="text/javascript">
var iframe = parent.document.getElementById('frameFormulario');
var iframeAltura = <%=alturaExcluidos%> * 2048/parent.document.body.scrollWidth; //Si la resolucion no es 1440p se multiplica por la fraccion resultante.
iframe.style.height = iframeAltura+"px";
</script>
</body>
</html>