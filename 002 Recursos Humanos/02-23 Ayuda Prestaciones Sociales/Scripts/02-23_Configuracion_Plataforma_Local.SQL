SET DEFINE OFF;
Insert into CONFIGURACIONPLATAFORMA
   (ID_ENTIDAD, CLASIFICACION, CLAVE, VALOR)
 Values
   ('UAM', '02-23', 'FACETASINICIO', 'PAS,PDI,I,T');
Insert into CONFIGURACIONPLATAFORMA
   (ID_ENTIDAD, CLASIFICACION, CLAVE, VALOR)
 Values
   ('UAM', '02-23', 'MAIL.SUBSANACIONPRESENTADA.ASUNTO', '(Local) Aportación de documentación al expediente: [autocompletado_numeracion]');
Insert into CONFIGURACIONPLATAFORMA
   (ID_ENTIDAD, CLASIFICACION, CLAVE, VALOR)
 Values
   ('UAM', '02-23', 'MAIL.SUBSANACIONPRESENTADA.CUERPO', 'Estimado/a Don/Doña: [interesadoNombreCompleto].
<br/><br/>
Usted está inscrito en la convocatoria:
<br/><br/>
<strong>[convocatoria_nombre]</strong>
<br/><br/>
Se ha registrado correctamente la aportación de documentación a su solicitud.
<br/><br/>
Puede revisar el estado de su expediente o realizar una nueva aportación, mediante el siguiente enlace:');
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
   ('UAM', '02-23', 'MAIL.SOLICITUDPRESENTADA.ASUNTO', '(Local) Alta Solicitud de Ayuda Prestaciones Sociales');
Insert into CONFIGURACIONPLATAFORMA
   (ID_ENTIDAD, CLASIFICACION, CLAVE, VALOR)
 Values
   ('UAM', '02-23', 'MAIL.SOLICITUDPRESENTADA.CUERPO', 'Estimado/a Don/Doña: [interesadoNombreCompleto].
<br/><br/>
Se le comunica que se ha inscrito correctamente en la siguiente convocatoria: <br/><br/><strong>[convocatoria_nombre]</strong>
<br/><br/>
A partir de este momento, podrá acceder a la oficina virtual de la UAM para consultar el estado del trámite y aportar, en caso de que sea necesario, la documentación solicitada en la convocatoria.');
Insert into CONFIGURACIONPLATAFORMA
   (ID_ENTIDAD, CLASIFICACION, CLAVE, VALOR)
 Values
   ('UAM', '02-23', 'MAIL.EXCLUIDOPROVISIONAL.ASUNTO', '(Local) Inicio Plazo de Subsanación');
Insert into CONFIGURACIONPLATAFORMA
   (ID_ENTIDAD, CLASIFICACION, CLAVE, VALOR)
 Values
   ('UAM', '02-23', 'MAIL.EXCLUIDOPROVISIONAL.CUERPO', 'Estimado/a Don/Doña: [interesadoNombreCompleto].
<br/><br/>
Una vez revisada la documentación aportada durante el plazo de solicitud, se le comunica que ha sido excluido provisionalmente de la convocatoria: <br/><br/><strong>[convocatoria_nombre]</strong><br/>
<br/>
Tal y como se indica en las bases de la convocatoria, el periodo para subsanar la causa de exclusión se iniciará a las 00:00:01 horas del día [convocatoria_inicioSubsanacion] y finalizará a las 23:59:59 horas del día [convocatoria_finSubsanacion]. Podrá efectuar la citada subsanación a través de la aplicación telemática.<br/>
<br/>
Para ello, acceda a su expediente en la plataforma de Administración Electrónica a través del enlace que se le muestra a continuación: [autocompletado_url]<br/><br/>
<blockquote> - En la pestaña &quot;Datos Adicionales&quot; podrá ver la causa o causas específicas por las que se le ha excluido provisionalmente. <br/>
- En la pestaña &quot;Documentos&quot; podrá adjuntar la documentación que se le requiere. Recuerde que <strong>SOLO TIENE QUE ADJUNTAR AQUELLOS DOCUMENTOS QUE SE LE PIDEN EN LA SUBSANACIÓN</strong> y que no se tendrá en cuenta la presentación de documentación no requerida.</blockquote>');
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
   ('UAM', '02-23', 'MAIL.ADMINISTRADOR', 'vidal.jimenez@externo.uam.es');
Insert into CONFIGURACIONPLATAFORMA
   (ID_ENTIDAD, CLASIFICACION, CLAVE, VALOR)
 Values
   ('UAM', '02-23', 'MAIL.ASUNTO.SINREVISION', '(Local) Expediente sin revisar');
Insert into CONFIGURACIONPLATAFORMA
   (ID_ENTIDAD, CLASIFICACION, CLAVE, VALOR)
 Values
   ('UAM', '02-23', 'MAIL.CUERPO.SINREVISION', 'Le comunicamos que el expediente enlazado a continuaci&oacute;n esta pendiente de revisi&oacute;n.<br />
<br />Puede acceder a la solicitud para gestionarla y evaluarla a trav&eacute;s del siguiente enlace:<br /><br />');
COMMIT;
