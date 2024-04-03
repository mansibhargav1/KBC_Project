<html>
    <head>
        <title>KBC</title>
      <link rel="stylesheet" type="text/css" href="style.css" />
        <link rel="icon" type="image/png" href="/LOGO.png"/>
        <style>
body
{
background: #660099;
background-image:url(back1.jpg);
background-repeat:no-repeat;
background-size:100;
}
</style>
    </head>
    <body>
        <center>
        <div><h2 style="text-decoration:underline">WELCOME TO KAUN BANEGA CAROREDPATI</h2></div>
        <img src="LOGO.png" >
        <form action="home.jsp" name="myform">
        <table cellpadding="15px">
        <tr>
        <td><h2>Your Good Name</h2></td>
        <td><h2><input type="text" placeholder="Enter Name " name="un" style=" background:#ffcc66"></h2></td>
        </tr>
        <tr><th colspan="2"><input type="submit" value="  Submit  " style="margin-top: 0px" id="A"></th></tr>
        </table>    
        </form>
        </center>
        <audio autoplay controls hidden>
        <source type="audio/mp3" src="a2.mpeg" >
        </audio>
        </body>
</html>
<%
       String s1=request.getParameter("un");
                if(s1!=null)
                {
                HttpSession s=request.getSession();
                s.setAttribute("name",s1);
                response.sendRedirect("intro.jsp");
                }
 %>