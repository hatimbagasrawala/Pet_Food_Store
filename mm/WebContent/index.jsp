<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<title>
DOG FOOD : What are you waiting for?
</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/main.css">

<script src="js/jquery-1.11.3.min.js"></script>
<script>
$(document).ready(function(){
	$("#id1").hover(function(){
		$(this).css('text-decoration',"underline");
	},function(){
		$(this).css('text-decoration',"none");
			
		
	});
	$("#id3").hover(function(){
		$(this).css('text-decoration',"underline");
		
	},function(){
		$(this).css('text-decoration',"none");
			
		
	});
	$("#id4").hover(function(){
		$(this).css('text-decoration',"underline");
	},function(){
		$(this).css('text-decoration',"none");
			
		
	});
	
	$("#id2").hover(function(){
		$(this).css('text-decoration',"underline");
	},function(){
		$(this).css('text-decoration',"none");
			
		
	});
});
</script>
</head>
<body style="background-color:white">
<div class="main" style="background-color: white">
<jsp:include page="header.jsp" />
<hr/>
<div style="text-align:center;">
<c:choose>
<c:when test="${user!=null}">
You are just few steps away. Choose category. 
</c:when>
<c:otherwise>
SIGN UP TO DOGFOOD.COM AND ENJOY <b>RS. 500 OFF*</b> YOUR FIRST PURCHASE

</c:otherwise>
</c:choose>
</div>
<hr/>
<table>
<tr>
<td>
<div id="id1" style="background-image:url('images/main1.jpg');text-align:center; padding-top:90%;padding-bottom:3%;width:480px;font-family:courier;font-size:25px;margin-right: 5px  ">
<b><a href="shopWomen" class="option">SHOP FOR SMALL DOGS </a></b>
</div>
</td>
<td> 
<div id="id2" style="text-align:center; background-image:url('images/main2.jpg');padding-top:90%;padding-bottom:3%;width:480px;font-family:courier;font-size:25px;margin-left:5px;background-repeat: no-repeat ">
    <b><a href="shopMen" class="option"><b>SHOP FOR BIG DOGS</b> </a></b>
</div>
</td>
</tr>
<tr>
<td colspan="2">
</td>
</tr>
</table>
<hr/>
<jsp:include page="footer.html"></jsp:include>
</div>
</body>
</html>