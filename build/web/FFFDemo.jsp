 <%@page import="java.sql.*" %>
<html>
<head>
<style>
.popup
{
    width: 350px;
    height: 170px;
    background: purple;
    border-radius: 10px;
    position: absolute;
    top: 0%;
    left: 50%;
    font-size: 15px;
    transform: translate(-50%,-50%) scale(0.1);
    box-shadow: 0 8px 8px rgba(0.8,0.7,0.7,0.7);
    visibility: hidden;
}
.popup button{
    width: 90px;
    margin-top: 0px;
    padding: 10px 5px;
    color: white;
    border: 0;
    background: #ffcc66;
    outline: none;
    font-size: 9px;
    border-radius: 4px;
    box-shadow: 0 3px 3px rgba(0,0,0,0.9);
}
.open-popup{
    visibility: visible;
    top: 10%;
    transform: translate(-50%,50%) scale(1);
}
</style>
</head>
<body>
<center>
<div class="popup" id="popup5">
<h1>Sorry</h1>
<p>That was a wrong answer.</p>
<button class="btn" onclick="closePopup3()" type="submit" name="m1">OKAY</button>    
</div>
<script>
 let popup5=document.getElementById("popup5");
     function openPopup3()
    {
        popup5.classList.add("open-popup");
        new Audio("Wrong.mp3").play();
    }
    function closePopup3()
    {
        popup5.classList.remove("open-popup");
     }
    <%
        String s11=request.getParameter("t"); 
        String s12=request.getParameter("a1");
        String s13=request.getParameter("a2");
        String s14=request.getParameter("a3");
        String s15=request.getParameter("a4");
        String a1="",a2="",a3="",a4="";
        try 
        { 
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/kbc?allowPublicKeyRetrival=true&useSSL=false","root","renu");
                Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from fff where ques='"+s11+"' ");
                rs.next();
                a1=rs.getString(6);
                a2=rs.getString(7);
                a3=rs.getString(8);
                a4=rs.getString(9); 
                if(s12.equals(a1) && s13.equals(a2) && s14.equals(a3) && s15.equals(a4))
                {
                HttpSession s=request.getSession();
                String s1=(String)s.getAttribute("name");
                st.executeUpdate("insert into regis values('"+s1+"','0')");
                response.sendRedirect("start.jsp");
                %>
                        new Audio("correct.mp3").play();
                <%
                }
                else
                 {
               RequestDispatcher rd=request.getRequestDispatcher("FFF.jsp");
               rd.include(request,response);
                %>
                openPopup3();
                <%
                }
                con.close();
        }
        catch(Exception e){ out.println(e); }
 %>
</script>
</center>
 <audio id="audio" src="Wrong.mp3"></audio>
</body>
</html>