<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<!-- para importar las librerias -->
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sx" uri="/struts-dojo-tags" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>FORMULARIO DE CONTACTO</title>
</head>
<s:head/>
<sx:head/>
<body>
	<sx:tabbedpanel id="formexam">
  	<sx:div label="MODULO EXAM">
        <s:form action="exam.action" method="post"> 
        
              <s:textfield key="name" label="Nombre y Apellidos"/>
              <s:textfield key="empresa" label="Empresa"/>
              <s:textfield key="email" label="E-mail"/>
              <s:textfield key="telefono" label="Telefono"/>
              <s:textfield key="poblacion" label="Poblacion"/>
              <s:select name="pais" label="Pais" list="#{'MXN':'MEXICO','USA':'ESTADOS UNIDOS',
                     'CAN':'CANADA'}"/>
              <s:textfield key="mensaje" label="Mensaje"/>
              <s:checkbox name="desarrollador" label="terminos" requiredCheckbox="true"/>
              
             <s:submit value="Enviar" />
          </s:form>
          <table border="1">
			  <tr>
			     <th>ID</th>
			     <th>NOMBRE</th>
			     <th>EMPRESA</th>
			     <th>E-MAIL</th>
			     <th>TELEFONO</th>
			     <th>POBLACION</th>
			     <th>PAIS</th>
			     <th>MENSAJE</th>
			  </tr>
		
			  <s:iterator value="listExam">
				  <tr>
				     <td><s:property value="id"/></td>
				     <td><s:property value="name"/></td>
				     <td><s:property value="empresa"/></td>
				     <td><s:property value="email"/></td>
				     <td><s:property value="telefono"/></td>
				     <td><s:property value="poblacion"/></td>
				     <td><s:property value="pais"/></td>
				     <td><s:property value="mensaje"/></td>  
				  </tr>
			  </s:iterator>
			</table>
    </sx:div>
</sx:tabbedpanel>
</body>
</html>