<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Departamentos</title>
<link href="<c:url value='/resources/css/datatables.min.css' />" rel="stylesheet">
</head>
<body>

	<table id="maintenanceTable">
		<thead>
			<tr>
				<th>Id</th>
				<th>Nombre</th>
				<th>Descripcion</th>
			</tr>
		</thead>
	</table>
<script src="<c:url value="/resources/js/datatables.min.js" />"></script>

<script type="text/javascript">
$(document).ready(function(){
	var data =eval('${deptosList}');
	var table = $('#maintenanceTable').DataTable( {
		"aaData": data,
		"aoColumns": [
			{ "mData": "idDepartamento"},
			{ "mData": "nombre"},
			{ "mData": "descripcion"}
		]
	});
});
</script>
</body>
</html>