<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="https://code.jquery.com/jquery-1.11.2.min.js"></script>
<script type="text/javascript"> 

	$(document).ready(function () { 
		$('#btnGetWeather').click(function () { 
			var resultElement = $('#resultDiv'); 
			resultElement.html(''); 
			var requestData = $('#txtId').val(); 
			
			$.ajax({ 
				url: 'http://localhost:8006/Classifieds/persons/withid',
				method: 'get', 
				data: { id: requestData }, 
				dataType: 'json', 
				success: function (response) { 
						resultElement.html('PersonInfo: ' + response.age); 
					}, 
				error: function (err) { 
					alert(err); 
					} 
				}); 
			}); 
		}); 
	</script>
			
</head>
<body style="font-family: Arial">
	<table>
		<tr>
			<td>Person ID</td>
			<td><input type="text" id="txtId" /></td>
		</tr>
	</table>
	<input type="button" id="btnGetWeather" value="Get Weather Data">
	<br />
	<br />
	<div id="resultDiv"></div>
</body>
</html>

