<%@page import="model.coupon"%>
<%@page import="java.util.Iterator"%>
<%@page import="dao.coupondao"%>
<%@page import="java.util.ArrayList"%>
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
<fieldset>
<legend >Products</legend>
<table>
<tr style="background-color: black;color:white">
<td>C.Id</td><td>Coupon Code</td><td>Discount</td><td>Action</td>
</tr>
<%
ArrayList al=coupondao.searchCode();
Iterator it=al.iterator();
while(it.hasNext())
{
	coupon coupon=(coupon)it.next();
	out.println("<tr><td>"+coupon.getId()+"</td><td>"+coupon.getCode()+"</td><td>"+coupon.getDiscount()+"</td><td><a style=color:black href=editcoupon.jsp?cid="+coupon.getId()+">Edit</a> <a style=color:black href=deletecoupon?cid="+coupon.getId()+">Delete</a></td></tr>");
}
%>
</body>
</html>