 <%@page import="java.sql.*" %>
<html>
<head>
<title>KBC</title>
<link rel="stylesheet" type="text/css" href="style.css" />
<link rel="icon" type="image/png" href="/LOGO.png"/>
<style>
body
{
background: #660099;
background-image:url(cheque.jpeg);
background-repeat:no-repeat;
background-size:90;
}
</style>
</head>
<body>
<%
HttpSession s=request.getSession();
String s1=(String)s.getAttribute("name");
 try 
        { 
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/kbc?allowPublicKeyRetrival=true&useSSL=false","root","renu");
        Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from regis where name='"+s1+"' ");
        if(rs.next()){
%>
<textarea style="position: absolute;color: white;top:205px;left: 220px;" readonly="true" name="text"><%= s1%></textarea>
<textarea style="position: absolute;color: white;top:270px;left: 240px;" readonly="true" name="text"><%= rs.getString(2)%></textarea>
</body>
</html>
<%
        }        con.close();
        }
        catch(Exception e){ out.println(e); }
%>