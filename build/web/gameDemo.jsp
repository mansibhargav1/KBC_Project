<%@page import="java.sql.*" %>
<%@include file="variable.jsp" %>

<html>
<head>
<link rel="stylesheet" type="text/css" href="popup.css" />
<style>
body
{
background-image:url(back2.png);
background-repeat:no-repeat;
background-size: 100;
}
.popup img{
width: 100px;
height: 100px;
margin-top: -70px;
border-radius: 50px;
box-shadow: 0 2px 5px rgba(0,0,0,0.2);
}
 <%
if(request.getParameter("v1")!=null)
{
response.sendRedirect("game.jsp");
} 
if(request.getParameter("u1")!=null)
{
response.sendRedirect("home.jsp");
} 
 ResultSet rs;
       String ans="";
        if(request.getParameter("b1")!=null)
        {
            ans=request.getParameter("b1");
        }
        else if(request.getParameter("b2")!=null)
        {
            ans=request.getParameter("b2");
        }
        else if(request.getParameter("b3")!=null)
        {
            ans=request.getParameter("b3");
        }
        else if(request.getParameter("b4")!=null)
        {
            ans=request.getParameter("b4");
        }
        String s11=request.getParameter("t"); 
        String a1="";  
        try 
        { 
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/kbc?useSSL=false","root","renu");
                Statement st1=con1.createStatement();
	        rs=st1.executeQuery("select * from ques where ques='"+s11+"' ");
               rs.next();
 %>
</style>
</head>
<body>
<center>

<div class="popup" id="expert" style="line-height: 2px">
<img  src="ex.png">
<h1  style="color: red;">Expert says</h1>
<h4>The correct answer is <p style="color: black"><%=rs.getString(7)%></p>.</h4>   
<button class="btn" onclick="closePopupE()" type="submit" name="e">Okay</button>    
</div>

<div class="popup" id="popup">
<h1  style="color: red;">Congratulations</h1>
<h4 style="line-height: 5px">You won <%=rs.getString(8)%> Rs.</h4>
<h4>Would you like to play further...?</h4>
<button class="btn" onclick="closePopup()" type="submit" name="v1">Yes</button>    
<button class="btn" onclick="closePopup()" type="submit" name="u1">No</button>    
</div>

<div class="popup" id="on">
<h1 style="color: red;">Sorry </h1>
<h2>That was a wrong answer.</h2>
<button class="btn" onclick="closePopup1()" type="submit" name="v2">OKAY</button>    
</div>
<script>
     let popup=document.getElementById("popup");
    let on=document.getElementById("on");
        let expert=document.getElementById("expert");
    function openPopup()
    {
        popup.classList.add("open-popup");
        new Audio("correct.mp3").play();
    }
    function closePopup()
    {
        popup.classList.remove("open-popup");
    }
      function openPopup1()
    {
        on.classList.add("open-popup");
        new Audio("Wrong.mp3").play();
    }
    function closePopup1()
    {
        on.classList.remove("open-popup");
    }
  function openPopupE()
    {
        expert.classList.add("open-popup");
    }
    function closePopupE()
    {
        expert.classList.remove("open-popup");
    }
<%
                a1=rs.getString(7);
                HttpSession s=request.getSession();
                String s1=(String)s.getAttribute("name");
                if(ans.equals(a1))
                {
                RequestDispatcher rd=request.getRequestDispatcher("game.jsp");
                rd.include(request,response);
                st1.executeUpdate("update regis set price='"+rs.getString(8)+"' where name='"+s1+"'");
%>
                openPopup();
<%
                } 
                else if(request.getParameter("L3")!=null)
                {
                RequestDispatcher rd=request.getRequestDispatcher("game.jsp");
                rd.include(request,response);
                %>
                openPopupE();
                <%
                }
                else
                {
               RequestDispatcher rd=request.getRequestDispatcher("game.jsp");
               rd.include(request,response);
%>
                openPopup1();
<%
                }    
        con1.close();
        }
        catch(Exception e1){ out.println(e1); }
%>
</script>
</center>
 <audio id="audio" src="Wrong.mp3"></audio>
</body>
</html>

