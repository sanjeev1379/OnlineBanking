<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<SCRIPT LANGUAGE="JavaScript">
function dil(form)
{
  for(var i=0; i<3; i++)
   {
        if(!isNaN(form.elements[i].value))
		{
		   alert("This Field must be Char's")
		   form.elements[i].value=""	
		   form.elements[i].focus()
		   return false
		}
   } 
    if(document.F1.password.value!=document.F1.repassword.value)
    {
	   alert("Check Confirm PWD"); 
	   document.F1.repassword.value=""
	   document.F1.repassword.focus()	
	   return false
	}
	
	
	if(!isNaN(document.F1.phone.value))
   {
	   if(document.F1.phone.value >9999999999 )
	   {
		 alert("ye kabhi nhi aayegi")
		 document.F1.phone.value=""
		 document.F1.phone.focus()
         return false   
	   }
   }
   else
   {
       alert("This  field  must  be  number")
	   document.F1.phone.value=""
	   return false
   }
	
	
	

   if(!isNaN(document.F1.amount.value))
   {
	   if(document.F1.amount.value < 500)
	   {
		 alert("Minimum Balance should be 500 /-")
		 document.F1.amount.value=""
		 document.F1.amount.focus()
         return false   
	   }
   }
   else
   {
       alert("This  field  must  be  number")
	   document.F1.amount.value=""
	   return false
   }
   
   

   for(var i=0; i<form.elements.length; i++)
   {
		if(form.elements[i].value == "")
		{
		   alert("Fill out all Fields")
		   document.F1.username.focus()
		   return false
		}
   }

   

   return true   
   }
</SCRIPT>

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


<%

String username=request.getParameter("username");
String password=request.getParameter("password");

String repassword=request.getParameter("repassword");
			
String amoun=request.getParameter("amount");
double amount=Double.parseDouble(amoun);

String adderess=request.getParameter("adderess");
			
String ph=request.getParameter("phone");
double phone=Double.parseDouble(ph);

	
int status=RegisterUser.register(username,password,repassword,amount,adderess,phone);


if(status>0){
	
	request.setAttribute("welcome","WELCOME! YOU HAVE BEEN REGISTERD");
	RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
	rd.forward(request, response);
}
else{
	out.print("Sorry,Registration failed. please try later");
	RequestDispatcher rd=request.getRequestDispatcher("create.jsp");
	rd.include(request, response);
}


%>

<%@ page import="java.sql.*"%>
<%@ page import="java.io.*" %>
<%@ page import="javax.servlet.*"%>
<%@ page import="com.bank.*" %>
<script type="text/javascript">
document.onload = ctck();
</script>
</body>

</html>