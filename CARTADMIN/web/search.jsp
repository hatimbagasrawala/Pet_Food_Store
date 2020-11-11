<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>DOG FOOD</title>
</head>
<body  style="font-family: courier;font-size: 30px"><center>
<a href=index.jsp><img src="images/logo.jpg"></a><br/><br/>
<div style="background-color: black;color:white;width:200px"><center><a href="list.jsp" target="f1" style="text-decoration: none;font-size:25px;font-family:courier;color:white" >Goto Home</a></center></div>
<br/>
<fieldset style="padding:20% ">
<legend >Search an Order</legend>
<form method="post"  action="orderdetails.jsp">
Order Id: <input size="10" style="font-size:30px " type="text" name="orderid"><br/>
<br/>
<input class="form1" style="background-color: black;font-size:30px;color:white" type="submit" value="Search">
</form>
</fieldset></center>
</body>
</html>