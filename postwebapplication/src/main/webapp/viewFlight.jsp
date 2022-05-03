<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Flight details</title>
</head>
<body style="background-color:powderblue;">
<h3 style="text-align:center;">View Flight details here</h3>
<form name = "viewFlight" action = "view">
  <p>Enter From Location :<input type ="text" name = "from_location"/></p> 
  <p>Enter To Location :<input type ="text" name = "to_location"/></p>  
</form>
<button type = "Submit" value = "Submit">Submit</button>
<form action ="displayFlight">
<table border="1">
<tr>
					<th>Flight Id </th>
					<th>Airplane Id</th>
					<th>Airplane Name</th>
					<th>From</th>
					<th>To</th>
					<th>Departure Time</th>
					<th>Arrival Time</th>
					<th>Total Seats</th>
</tr>

<c:forEach var="f" items="${Flight}">
<tr>
					<td>${f.flight_id}</td>
                    <td>${f.airplane_id}</td>
                    <td>${f.airplane_name}</td>
                    <td>${f.from_location}</td>
                    <td>${f.to_location}</td>
                    <td>${f.departure_time}</td>
                    <td>${f.arrival_time}</td>
                    <td>${f.duration}</td>
                    <td>${f.seats}</td>                  
</tr>
</c:forEach>
</table>
</form>

</body>
</html>