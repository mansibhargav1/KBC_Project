package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class game_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


static int i=1;

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/variable.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write('\n');
      out.write("\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"style.css\" />   \n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"popup.css\" />\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"games.css\" />\n");
      out.write("<style>\n");
      out.write(".timer{\n");
      out.write("position: absolute;\n");
      out.write("left: 465;\n");
      out.write("top: 30;\n");
      out.write("}\n");
      out.write("</style>\n");
      out.write("<script>\n");
      out.write(" // Function to toggle the bar\n");
      out.write("function geeksforgeeks() \n");
      out.write("{\n");
      out.write("var x = document.getElementById(\"menus\");\n");
      out.write("if (x.style.display === \"block\") \n");
      out.write("{x.style.display = \"none\";}\n");
      out.write("else \n");
      out.write("{x.style.display = \"block\";}\n");
      out.write("}\n");
      out.write("function myFunction(x) \n");
      out.write("{\n");
      out.write("x.classList.toggle(\"fa-minus-circle\");\n");
      out.write("}\n");

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
                
      out.write("\n");
      out.write("                document.getElementById('aa1').src=\"cross.png\";\n");
      out.write("                ");

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

      out.write("\n");
      out.write("var timeleft = 30;\n");
      out.write("var downloadTimer = setInterval(function()\n");
      out.write("{\n");
      out.write("  if(timeleft <= 0)\n");
      out.write("  {\n");
      out.write("    clearInterval(downloadTimer);\n");
      out.write("    document.getElementById(\"countdown\").innerHTML = \"Time Up\";\n");
      out.write("  } \n");
      out.write("  else \n");
      out.write("  {\n");
      out.write("    document.getElementById(\"countdown\").innerHTML = timeleft;\n");
      out.write("  }\n");
      out.write("  timeleft -= 1;\n");
      out.write("}, 1000);\n");
      out.write("</script>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("<audio autoplay controls hidden>\n");
      out.write("<source type=\"audio/mp3\" src=\"timer.mp3\">\n");
      out.write("</audio>\n");
      out.write("\n");
      out.write("<div class=\"menu-list\">\n");
      out.write("<div class=\"geeks\">\n");
      out.write("<a href=\"#\" class=\"\">Price Money</a>\n");
      out.write("<div id=\"menus\">\n");
      out.write("<a href=\"#\">7 CRORE</a>\n");
      out.write("<a href=\"#\">1 CRORE</a>\n");
      out.write("<a href=\"#\">50,00,000</a>\n");
      out.write("<a href=\"#\">12,50,000</a>\n");
      out.write("<a href=\"#\">6,40,000</a>\n");
      out.write("<a href=\"#\">3,20,000</a>\n");
      out.write("<a href=\"#\">1,60,000</a>\n");
      out.write("<a href=\"#\">80,000</a>\n");
      out.write("<a href=\"#\">40,000</a>\n");
      out.write("<a href=\"#\">20,000</a>\n");
      out.write("<a href=\"#\">10,000</a>\n");
      out.write("<a href=\"#\">5,000</a>\n");
      out.write("<a href=\"#\">3,000</a>\n");
      out.write("<a href=\"#\">2,000</a>\n");
      out.write("<a href=\"#\">1,000</a>\n");
      out.write("</div>\n");
      out.write("<a href=\"javascript:void(0);\" class=\"icon\" onclick=\"geeksforgeeks()\">\n");
      out.write("<i onclick=\"myFunction(this)\" class=\"fa fa-plus-circle\"></i>\n");
      out.write("</a>\n");
      out.write("</div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<div id=\"countdown\" class=\"timer\"></div>\n");
      out.write("\n");
      out.write("<form action=\"game.jsp\">\n");
      out.write("<div class=\"sidebar\"><div>\n");
      out.write("<table>\n");
      out.write("<tr id=\"aa1\">\n");
      out.write("<td><input style=\"position: absolute;top: 18px;left: 50px; width: 60;height: 30;\" id=\"B\" type=\"submit\"  value=\" \"  name=\"L1\" onclick=\"relaod\"/></td>\n");
      out.write("</tr>\n");
      out.write("<tr>\n");
      out.write("<td>\n");
      out.write("<!--<input style=\"position: absolute;top: 18px;left: 130px; width: 50;height: 30;\" id=\"B\" id=\"aa2\" type=\"submit\"  value=\" \"  name=\"L2\" onclick=\"relaod\"/>-->\n");
      out.write("<a href=\"tel:7747818934\" style=\"text-decoration:none;position: absolute;top: 30px;left: 150px; width: 50;height: 30;\">_</a>\n");
      out.write("</td>\n");
      out.write("</tr>\n");
      out.write("<tr>\n");
      out.write("<td><input style=\"position: absolute;top: 18px;left: 280px; width: 60;height: 30;\" id=\"B\" id=\"aa4\" type=\"submit\"  value=\" \"  name=\"L4\" onclick=\"relaod\"/></td>\n");
      out.write("</tr>\n");
      out.write("</table>\n");
      out.write("</form>\n");
      out.write("\n");
      out.write("<form action=\"gameDemo.jsp\">\n");
      out.write("<table>\n");
      out.write("<tr>\n");
      out.write("<td><input style=\"position: absolute;top: 18px;left: 205px; width: 60;height: 30;\" id=\"B\"id=\"aa3\"  type=\"submit\"  value=\" \"  name=\"L3\" onclick=\"relaod\"/></td>\n");
      out.write("</tr>\n");
      out.write("<tr>\n");
      out.write("<textarea type=\"hidden\" readonly=\"true\" name=\"t\" rows=\"3\" cols=\"90\">");
      out.print( s1);
      out.write("</textarea>\n");
      out.write("</tr>\n");
      out.write("<tr>\n");
      out.write("<td><input style=\"top: 345px;left: 90px;\" type=\"submit\" id=\"A\" value=\"");
      out.print( s2);
      out.write("\" name=\"b1\"></td>\n");
      out.write("<td><input style=\"top: 345px;left: 490px;\" type=\"submit\" id=\"A\" value=\"");
      out.print( s3);
      out.write("\" name=\"b2\"></td>\n");
      out.write("</tr>\n");
      out.write("<tr>\n");
      out.write("<td><input style=\"top: 390px;left: 90px;\" type=\"submit\" id=\"A\" value=\"");
      out.print( s4);
      out.write("\" name=\"b3\"></td>\n");
      out.write("<td><input style=\"top: 390px;left: 490px;\" type=\"submit\" id=\"A\" value=\"");
      out.print( s5);
      out.write("\" name=\"b4\"></td>\n");
      out.write("</tr>\n");
      out.write("</table>\n");
      out.write("</form>\n");
      out.write("</body>\n");
      out.write("</html>\n");

   con.close();
  }
  catch(Exception e)
  { out.println(e); }

      out.write(' ');
      out.write(' ');
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
