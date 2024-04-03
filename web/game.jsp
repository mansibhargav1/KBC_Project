<%@page import="java.sql.*" %>
<%@include file="variable.jsp" %>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="style.css" />   
<link rel="stylesheet" type="text/css" href="popup.css" />
<link rel="stylesheet" type="text/css" href="games.css" />
<style>
.timer{
position: absolute;
left: 465;
top: 30;
}
</style>
<script>
 // Function to toggle the bar
function geeksforgeeks() 
{
var x = document.getElementById("menus");
if (x.style.display === "block") 
{x.style.display = "none";}
else 
{x.style.display = "block";}
}
function myFunction(x) 
{
x.classList.toggle("fa-minus-circle");
}
<%
       if(request.getParameter("v2")!=null || request.getParameter("u1")!=null)
        {
                response.sendRedirect("cheque.jsp");
                i=1;
        }
        String s1="",s2="",s3="",s4="",s5="",ans="",p="";
        if(request.getParameter("v1")!=null)
        {
        if(i<6) 
        i++;
        else
        i=1;
        }
         try 
        {
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/kbc?allowPublicKeyRetrival=true&useSSL=false","root","renu");
        Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from ques where qno='"+i+"' ");
                if(rs.next())
                {
                    s1=rs.getString(2);
                    s2=rs.getString(3);
                    s3=rs.getString(4);
                    s4=rs.getString(5);
                    s5=rs.getString(6);
                    ans=rs.getString(7);
                    p=rs.getString(8);
                }
                if(request.getParameter("L1")!=null)
                {
                ResultSet rs1=st.executeQuery("select * from ques where qno='"+i+"' AND s='"+p+"' ");
                rs1.next();
                if(rs1.next())
                {
                %>
                document.getElementById('aa1').src="cross.png";
                <%
                    s1=rs1.getString(2);
                    s2=rs1.getString(3);
                    s3=rs1.getString(4);
                    s4=rs1.getString(5);
                    s5=rs1.getString(6);
                    ans=rs1.getString(7);
                }
                }
                if(request.getParameter("L4")!=null)
                {
                int n=1;
                 while(n<=2)
                 {
                 if(!s2.equals(ans) && s2!=" ")  
                 s2=" ";
                 else if(!s3.equals(ans) && s3!=" ")
                 s3=" ";
                 else if(!s4.equals(ans) && s4!=" ")
                 s4=" ";
                 else if(!s5.equals(ans) && s5!=" ")
                 s5=" ";
                 n++;
                 }
                 }
%>
var timeleft = 30;
var downloadTimer = setInterval(function()
{
  if(timeleft <= 0)
  {
    clearInterval(downloadTimer);
    document.getElementById("countdown").innerHTML = "Time Up";
  } 
  else 
  {
    document.getElementById("countdown").innerHTML = timeleft;
  }
  timeleft -= 1;
}, 1000);
</script>
</head>
<body>

<audio autoplay controls hidden>
<source type="audio/mp3" src="timer.mp3">
</audio>

<div class="menu-list">
<div class="geeks">
<a href="#" class="">Price Money</a>
<div id="menus">
<a href="#">7 CRORE</a>
<a href="#">1 CRORE</a>
<a href="#">50,00,000</a>
<a href="#">12,50,000</a>
<a href="#">6,40,000</a>
<a href="#">3,20,000</a>
<a href="#">1,60,000</a>
<a href="#">80,000</a>
<a href="#">40,000</a>
<a href="#">20,000</a>
<a href="#">10,000</a>
<a href="#">5,000</a>
<a href="#">3,000</a>
<a href="#">2,000</a>
<a href="#">1,000</a>
</div>
<a href="javascript:void(0);" class="icon" onclick="geeksforgeeks()">
<i onclick="myFunction(this)" class="fa fa-plus-circle"></i>
</a>
</div>
</div>

<div id="countdown" class="timer"></div>

<form action="game.jsp">
<div class="sidebar"><div>
<table>
<tr id="aa1">
<td><input style="position: absolute;top: 18px;left: 50px; width: 60;height: 30;" id="B" type="submit"  value=" "  name="L1" onclick="relaod"/></td>
</tr>
<tr>
<td>
<!--<input style="position: absolute;top: 18px;left: 130px; width: 50;height: 30;" id="B" id="aa2" type="submit"  value=" "  name="L2" onclick="relaod"/>-->
<a href="tel:7747818934" style="text-decoration:none;position: absolute;top: 30px;left: 150px; width: 50;height: 30;">_</a>
</td>
</tr>
<tr>
<td><input style="position: absolute;top: 18px;left: 280px; width: 60;height: 30;" id="B" id="aa4" type="submit"  value=" "  name="L4" onclick="relaod"/></td>
</tr>
</table>
</form>

<form action="gameDemo.jsp">
<table>
<tr>
<td><input style="position: absolute;top: 18px;left: 205px; width: 60;height: 30;" id="B"id="aa3"  type="submit"  value=" "  name="L3" onclick="relaod"/></td>
</tr>
<tr>
<textarea type="hidden" readonly="true" name="t" rows="3" cols="90"><%= s1%></textarea>
</tr>
<tr>
<td><input style="top: 345px;left: 90px;" type="submit" id="A" value="<%= s2%>" name="b1"></td>
<td><input style="top: 345px;left: 490px;" type="submit" id="A" value="<%= s3%>" name="b2"></td>
</tr>
<tr>
<td><input style="top: 390px;left: 90px;" type="submit" id="A" value="<%= s4%>" name="b3"></td>
<td><input style="top: 390px;left: 490px;" type="submit" id="A" value="<%= s5%>" name="b4"></td>
</tr>
</table>
</form>
</body>
</html>
<%
   con.close();
  }
  catch(Exception e)
  { out.println(e); }
%>  