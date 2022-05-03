<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Flight Data here</title>
</head>
<body style="background-color:powderblue;">
<h3 style="text-align:center;">Remove Flight details from here</h3>
<form name = "addFlight" action = "add">
  <p>Enter Flight ID :<input type ="text" name = "flight_id"/></p>  
  <p>Enter Airline ID :<input type ="text" name = "airline_id"/></p> 
  <p>Enter Airline Name :<input type ="text" name = "airlinr_name"/></p> 
  <p>From :<input type ="text" name = "from_location"/></p> 
  <p>To :<input type ="text" name = "to_location"/></p>
  <p>Departure Time :<input type ="text" name = "departure_time"/></p>
  <p>Arrival Time :<input type ="text" name = "arrival_time"/></p>
  <p>Duration :<input type ="text" name = "duration"/></p>
  <p>Seats :<input type ="text" name = "seats"/></p>
</form>
<button type = "Submit" value = "Submit">Submit</button>

</body>
</html>