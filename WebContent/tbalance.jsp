<html>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Global Banking ..</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
function ctck()
{
var sds = document.getElementById("dum");

}
</script>

</head>

<body>

<div id="top_links">
  

<div id="header">
	<h1>APANA - BANK<span class="style1"></span></h1>
    <h2>ExtraOrdinary Service</h2>
    <A href="index.html"><IMG SRC="images/home1.gif"></IMG></A>	
</div>

<div id="navigation">
    <ul>
    <li><a href="create.jsp">NEW ACCOUNT</a></li>
    <li><a href="balance1.jsp">BALANCE</a></li>
    <li><a href="deposit1.jsp">DEPOSIT</a></li>
    <li><a href="withdraw1.jsp">WITHDRAW</a></li>
    <li><a href="transfer1.jsp">TRANSFER</a></li>
    <li><a href="closeac1.jsp">CLOSE A/C</a></li>
    <li><a href="about.jsp">Contact Us</a></li>
    </ul>
</div>



<table style="width:897px; background:#FFFFFF; margin:0 auto;">
<tr >
	<td width="300" valign="top" style="border-right:#666666 1px dotted;">
    	<div id="services"><h1>Services</h1><br>
		    <ul>
        	<li><a href="#">www.apnabank.com</a></li>
            <li><a href="#">www.apnabank.com/loan </a></li>
            <li><a href="#">www.apnabank.com/forum.jsp</a></li>
            </ul>
			
       </div>
	</td>
    
    <td width="1200" valign="top">
    	
    	<span style='float:left;color:red;'>Welcome   &nbsp;<b>
    <%if(request.getAttribute("username")!=null)
			{
    	out.print(request.getAttribute("username"));
			}
    %>
    </b></span><br /><br />
    	
    	<% 
%>
<table border="2" align="center" width="60%" height="60%" bgcolor="white">
		<tr>
			<td align="center" valign="middle" bgcolor="red"><h4>Accounts Info</h4></td>
		</tr>
		<tr>
			<td>
			<%
			{
				out.print("Balance are secussfully transfer !! <br />");
			out.print("The Target Account Balance is  &nbsp;");
			out.print(request.getAttribute("target account A"));
			out.print("<br />");
			out.println("Reduced Balance is  &nbsp;");
			out.print(request.getAttribute("account B"));
				}
			
			 %>
			</td>
		</tr>
	


    		</table><%
%>
    	
    	
		 </table>


 




	
</html>