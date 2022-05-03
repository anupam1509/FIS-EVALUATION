<html>
<style>
.button {
  border: none;
  color: white;
  padding: 16px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  transition-duration: 0.4s;
  cursor: pointer;
}

.button1 {
  background-color: 	#8A2BE2;
  color: white;
  border: 2px double 	#8A2BE2;
}

.button1:hover {
  background-color: #4CAF50;
  color: white;
}

.button2 {
  background-color: white;
  color: black;
  border: 2px solid #8A2BE2;
}

.button2:hover {
  background-color: #008CBA;
  color: white;
}
</style>
<body style="background-color:yellow;">
<h2 style="text-align:center;">Welcome to FIS Airlines</h2>

<form name = "lPage" action="login.jsp" >
    <button class="button button1">Click here to Login! </button>
</form>
<form action="register.jsp" >
    <button class="button button1">Click here to Register!</button>
</form>

<h3> </h3>
</body>
</html>
