<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>REACHED INWARD</h1>
 		<% 
//  			if(session.getAttribute("username")!="user")
//  			{
//  				response.sendRedirect("index.jsp");
//  			}
 		%> 
	<form action="/action_page.php">
  <label for="suplierName">SUPLIER NAME:</label><br>
  <input type="text" id="suplierName" name="suplierName" value="suplierName"><br>
  
  <label for="suplierInv">SUPLIER INVOCE NUMBER:</label><br>
  <input type="text" id="suplierInv" name="suplierInv" value="SUPLIER INVOCE NUMBER:"><br><br>
  
  <input type="submit" value="Submit">
  
  <table style="width:100%">
  <tr>
    <td> <input type="text" id="productcode" name="productcode" value="Product Code">
    <td><input type="text" id="modelno" name="modelno" value="Model No"></td>
    <td><input type="text" id="serialno" name="serialno" value="Serial No">
  </tr>
</table>
  
</form> 
	
</body>
</html>