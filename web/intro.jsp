<%
        HttpSession s=request.getSession();
        String s1=(String)s.getAttribute("name");
        if(s1!=null)
%>
<html>
    <head>
      <link rel="stylesheet" type="text/css" href="style.css" />
<style>
body
{
background: #660099;
background-image:url(back1.jpg);
background-repeat:no-repeat;
background: cover;
}
</style>
    </head>
    <body style="margin-top:30px">
    <h1 style="text-decoration:underline">Dear <%= s1%></h1>
    <p><h2 style="color:white">Are you ready for FASTEST-FINGER-FIRST ?</h2></p>
    <p style="font-family:Bell MT">FASTEST-FINGER-FIRST, It is part of KBC where a question is asked to the participants, if they answer correctly the game proceeds further.</p>
<center>
    <form action="fun.jsp">
        <table cellpadding="15px">
        <tr><th>
                <input type="submit" value="  YES  " name="b1" id="B">    </th><th>    
                <input type="submit" value="   NO   " name="b2" id="B">        
        </th></tr>
        </table>
     </form>
     </center>
    </body>
</html>
