<%@page import="dao.coupondao"%>
<%@page import="model.coupon"%>
<%@page import="dao.productdao"%>
<%@page import="model.product"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body  style="font-family: courier;font-size: 30px"><center>
<a href=index.jsp><img src="images/logo.jpg"></a><br/><br/>

<div style="background-color: black;color:white;width:200px"><center><a href="list.jsp" target="f1" style="text-decoration: none;font-size:25px;font-family:courier;color:white" >Goto Home</a></center></div>
<br>
<fieldset style="padding:10% ">
<legend >Coupon Detail</legend>

<table>
<form method="post" action="updateCoupon.jsp">

<tr>
<td>Coupon Code </td><td>:<%
out.println("<input style=font-size:30px type=text name=code required>");
%>
</tr>
<tr>
<td>Discount </td><td>:<%
out.println("<input style=font-size:30px type=text name=discount required>");
%>
</tr>

</table><br/>
<input type="submit" value="Create New Coupon" style="background-color: black;color:white;font-size:30px;font-family: courier">
</form>
</fieldset>
</body>
</html>