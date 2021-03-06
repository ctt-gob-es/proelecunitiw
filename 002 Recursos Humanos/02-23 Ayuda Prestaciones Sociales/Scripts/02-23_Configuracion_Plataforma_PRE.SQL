SET DEFINE OFF;
Insert into CONFIGURACIONPLATAFORMA
   (ID_ENTIDAD, CLASIFICACION, CLAVE, VALOR)
 Values
   ('UAM', '02-23', 'FACETASINICIO', 'PAS,PDI,I,T');
Insert into CONFIGURACIONPLATAFORMA
   (ID_ENTIDAD, CLASIFICACION, CLAVE, VALOR)
 Values
   ('UAM', '02-23', 'MAIL.SUBSANACIONPRESENTADA.ASUNTO', '(PRE) Aportaci�n de documentaci�n al expediente: [autocompletado_numeracion]');
Insert into CONFIGURACIONPLATAFORMA
   (ID_ENTIDAD, CLASIFICACION, CLAVE, VALOR)
 Values
   ('UAM', '02-23', 'MAIL.SUBSANACIONPRESENTADA.CUERPO', 'Estimado/a Don/Do�a: [interesadoNombreCompleto].
<br/><br/>
Usted est� inscrito en la convocatoria:
<br/><br/>
<strong>[convocatoria_nombre]</strong>
<br/><br/>
Se ha registrado correctamente la aportaci�n de documentaci�n a su solicitud.
<br/><br/>
Puede revisar el estado de su expediente o realizar una nueva aportaci�n, mediante el siguiente enlace:');
Insert into CONFIGURACIONPLATAFORMA
   (ID_ENTIDAD, CLASIFICACION, CLAVE, VALOR)
 Values
   ('UAM', '02-23', 'NIVELFIRMAAPORTACION', '0');
Insert into CONFIGURACIONPLATAFORMA
   (ID_ENTIDAD, CLASIFICACION, CLAVE, VALOR)
 Values
   ('UAM', '02-23', 'SOLICITUD.DESTINO', '18');
Insert into CONFIGURACIONPLATAFORMA
   (ID_ENTIDAD, CLASIFICACION, CLAVE, VALOR)
 Values
   ('UAM', '02-23', 'SOLICITUD.ORIGEN', '1');
Insert into CONFIGURACIONPLATAFORMA
   (ID_ENTIDAD, CLASIFICACION, CLAVE, VALOR)
 Values
   ('UAM', '02-23', 'MAIL.SOLICITUDPRESENTADA.ASUNTO', '(PRE) Alta Solicitud de Ayuda Prestaciones Sociales');
Insert into CONFIGURACIONPLATAFORMA
   (ID_ENTIDAD, CLASIFICACION, CLAVE, VALOR)
 Values
   ('UAM', '02-23', 'MAIL.SOLICITUDPRESENTADA.CUERPO', 'Estimado/a Don/Do�a: [interesadoNombreCompleto].
<br/><br/>
Se le comunica que se ha inscrito correctamente en la siguiente convocatoria: <br/><br/><strong>[convocatoria_nombre]</strong>
<br/><br/>
A partir de este momento, podr� acceder a la oficina virtual de la UAM para consultar el estado del tr�mite y aportar, en caso de que sea necesario, la documentaci�n solicitada en la convocatoria.');
Insert into CONFIGURACIONPLATAFORMA
   (ID_ENTIDAD, CLASIFICACION, CLAVE, VALOR)
 Values
   ('UAM', '02-23', 'MAIL.EXCLUIDOPROVISIONAL.ASUNTO', '(PRE) Inicio Plazo de Subsanaci�n');
Insert into CONFIGURACIONPLATAFORMA
   (ID_ENTIDAD, CLASIFICACION, CLAVE, VALOR)
 Values
   ('UAM', '02-23', 'MAIL.EXCLUIDOPROVISIONAL.CUERPO', 'Estimado/a Don/Do�a: [interesadoNombreCompleto].
<br/><br/>
Una vez revisada la documentaci�n aportada durante el plazo de solicitud, se le comunica que ha sido excluido provisionalmente de la convocatoria: <br/><br/><strong>[convocatoria_nombre]</strong><br/>
<br/>
Tal y como se indica en las bases de la convocatoria, el periodo para subsanar la causa de exclusi�n se iniciar� a las 00:00:01 horas del d�a [convocatoria_inicioSubsanacion] y finalizar� a las 23:59:59 horas del d�a [convocatoria_finSubsanacion]. Podr� efectuar la citada subsanaci�n a trav�s de la aplicaci�n telem�tica.<br/>
<br/>
Para ello, acceda a su expediente en la plataforma de Administraci�n Electr�nica a trav�s del enlace que se le muestra a continuaci�n: [autocompletado_url]<br/><br/>
<blockquote> - En la pesta�a &quot;Datos Adicionales&quot; podr� ver la causa o causas espec�ficas por las que se le ha excluido provisionalmente. <br/>
- En la pesta�a &quot;Documentos&quot; podr� adjuntar la documentaci�n que se le requiere. Recuerde que <strong>SOLO TIENE QUE ADJUNTAR AQUELLOS DOCUMENTOS QUE SE LE PIDEN EN LA SUBSANACI�N</strong> y que no se tendr� en cuenta la presentaci�n de documentaci�n no requerida.</blockquote>');
Insert into CONFIGURACIONPLATAFORMA
   (ID_ENTIDAD, CLASIFICACION, CLAVE, VALOR)
 Values
   ('UAM', '02-23', 'REGISTRA.APORTACION', 'si');
Insert into CONFIGURACIONPLATAFORMA
   (ID_ENTIDAD, CLASIFICACION, CLAVE, VALOR)
 Values
   ('UAM', '02-23', 'APORTACION.DESTINO', '18');
Insert into CONFIGURACIONPLATAFORMA
   (ID_ENTIDAD, CLASIFICACION, CLAVE, VALOR)
 Values
   ('UAM', '02-23', 'APORTACION.ORIGEN', '1');
Insert into CONFIGURACIONPLATAFORMA
   (ID_ENTIDAD, CLASIFICACION, CLAVE, VALOR)
 Values
   ('UAM', '02-23', 'MAIL.ADMINISTRADOR', 'eadministracion-l@uam.es');
Insert into CONFIGURACIONPLATAFORMA
   (ID_ENTIDAD, CLASIFICACION, CLAVE, VALOR)
 Values
   ('UAM', '02-23', 'MAIL.ASUNTO.SINREVISION', '(PRE) Expediente sin revisar');
Insert into CONFIGURACIONPLATAFORMA
   (ID_ENTIDAD, CLASIFICACION, CLAVE, VALOR)
 Values
   ('UAM', '02-23', 'MAIL.CUERPO.SINREVISION', 'Le comunicamos que el expediente enlazado a continuaci&oacute;n esta pendiente de revisi&oacute;n.<br />
<br />Puede acceder a la solicitud para gestionarla y evaluarla a trav&eacute;s del siguiente enlace:<br /><br />');
COMMIT;
