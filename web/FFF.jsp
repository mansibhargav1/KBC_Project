<%@page import="java.sql.*" %>
<%
       String s1="",s2="",s3="",s4="",s5="",c="";
         try 
        {
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/kbc?allowPublicKeyRetrival=true&useSSL=false","root","renu");
        Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from fff where c=' ' ");
                if(rs.next())
                {
                    s1=rs.getString(1);
                    s2=rs.getString(2);
                    s3=rs.getString(3);
                    s4=rs.getString(4);
                    s5=rs.getString(5);
                    st.executeUpdate("update fff set c='AAA' where ques='"+s1+"' ");
                }
                else
                {
                    st.executeUpdate("update fff set c=' ' ");
                    ResultSet rs1=st.executeQuery("select * from fff where c=' ' ");
                    rs1.next();
                    s1=rs1.getString(1);
                    s2=rs1.getString(2);
                    s3=rs1.getString(3);
                    s4=rs1.getString(4);
                    s5=rs1.getString(5);
                    st.executeUpdate("update fff set c='AAA' where ques='"+s1+"' ");
                }
%>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="style.css" />
 <style>
body
{
background-image:url(back1.jpg);
background-repeat:no-repeat;
background-size:100;
}
#A
{
text-align:center;
border-radius: 30px 60px;
font-size:15px;
/*border: none;
outline: none;
background: transparent;*/

}
</style>
<script type="text/javascript" src="FFFDemo.jsp"></script>
</head>
<body>
<center>
<form action="FFFDemo.jsp">
<table>
<tr>
<textarea type="hidden" readonly="true" id="A"  name="t" rows="3" cols="101"><%= s1%></textarea>
</tr>
<tr>
<td>
<textarea readonly="true" name="t1" id="A" rows="2" cols="48"><%= s2%></textarea>
</td>
<td>
<textarea readonly="true" name="t2" id="A" rows="2" cols="48"><%= s3%></textarea>
</td>
</tr>
<tr>
<td>
<textarea readonly="true" name="t3" id="A" rows="2" cols="48"><%= s4%></textarea>
</td>
<td>
<textarea readonly="true" name="t4" id="A" rows="2" cols="48"><%= s5%></textarea>
</td>
</tr>
</table>
<h3>Drag text to drop in correct order</h3>
<table>
    <tr><td>
        A.<textarea style="resize: none" id="A" name="a1" rows="2" cols="48"></textarea>
    </td></tr>
     <tr><td>
        B.<textarea style="resize: none" id="A" name="a2" rows="2" cols="48"></textarea>
     </td></tr>
     <tr><td>
        C.<textarea style="resize: none" id="A" name="a3" rows="2" cols="48"></textarea>
     </td></tr>
    <tr><td>
        D.<textarea style="resize: none" id="A" name="a4" rows="2" cols="48"></textarea>
     </td>
     <td>
     <input type="submit" value="Lock" style="margin-left: 60px" id="B" name="b1" ></td>
    </tr>
</table>
</form>
</center>
</body>
</html>
<%	
  con.close();
  }
  catch(Exception e)
  { out.println(e); }
 %>
 