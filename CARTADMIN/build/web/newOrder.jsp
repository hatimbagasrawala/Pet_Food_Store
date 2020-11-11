<%@page import="model.order"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.orderdao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>DOG FOOD</title>
</head>
<script>
</script>
<body style="font-family: courier;font-size: 30px"><center>
<a href=index.jsp><img src="images/logo.jpg"></a>
<br/>
<div style="background-color: black;color:white;width:200px"><center><a href="list.jsp" target="f1" style="text-decoration: none;font-size:25px;font-family:courier;color:white" >Goto Home</a></center></div>
<br/>
<fieldset >
<legend>Orders</legend>

<table>
<tr style="background-color:black;color:white"> <td style="padding-left:50px;padding-right:50px">Order Id.</td><td style="padding-left:50px;padding-right:50px">Price</td><td style="padding-left:50px;padding-right:50px">Status</td></tr>
<%

		ArrayList al= orderdao.searchProducts();
		Iterator iterator=al.iterator();
		while(iterator.hasNext())
		{
			order order=(order)iterator.next();
			if(order.getStatus()==0)
			{
%>
<tr><td style="padding-left:50px;padding-right:50px"><%=order.getId() %></td><td style="padding-left:50px;padding-right:50px"><%=order.getPrice()%></td><td style="padding-left:50px;padding-right:50px"><% if(order.getStatus()==0) out.println("Processing");
else if(order.getStatus()==1)
	out.println("Shipped");
else
	out.println("Delivered");
	%></td><td><%
	out.println("<a style=color:black class=\"option\" href=\"orderdetails.jsp?orderid="+order.getId()+"&emailid=1"+"\"><b>View</b></a>");
	%></td></tr>
<%}
		}
%>
</table>
</center></fieldset>
<hr/>
</body>
</html>