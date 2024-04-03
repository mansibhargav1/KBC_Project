package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class home_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

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

      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>KBC</title>\n");
      out.write("      <link rel=\"stylesheet\" type=\"text/css\" href=\"style.css\" />\n");
      out.write("        <link rel=\"icon\" type=\"image/png\" href=\"/LOGO.png\"/>\n");
      out.write("        <style>\n");
      out.write("body\n");
      out.write("{\n");
      out.write("background: #660099;\n");
      out.write("background-image:url(back1.jpg);\n");
      out.write("background-repeat:no-repeat;\n");
      out.write("background-size:100;\n");
      out.write("}\n");
      out.write("</style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <center>\n");
      out.write("        <div><h2 style=\"text-decoration:underline\">WELCOME TO KAUN BANEGA CAROREDPATI</h2></div>\n");
      out.write("        <img src=\"LOGO.png\" >\n");
      out.write("        <form action=\"home.jsp\" name=\"myform\">\n");
      out.write("        <table cellpadding=\"15px\">\n");
      out.write("        <tr>\n");
      out.write("        <td><h2>Your Good Name</h2></td>\n");
      out.write("        <td><h2><input type=\"text\" placeholder=\"Enter Name \" name=\"un\" style=\" background:#ffcc66\"></h2></td>\n");
      out.write("        </tr>\n");
      out.write("        <tr><th colspan=\"2\"><input type=\"submit\" value=\"  Submit  \" style=\"margin-top: 0px\" id=\"A\"></th></tr>\n");
      out.write("        </table>    \n");
      out.write("        </form>\n");
      out.write("        </center>\n");
      out.write("        <audio autoplay controls hidden>\n");
      out.write("        <source type=\"audio/mp3\" src=\"a2.mpeg\" >\n");
      out.write("        </audio>\n");
      out.write("        </body>\n");
      out.write("</html>\n");

       String s1=request.getParameter("un");
                if(s1!=null)
                {
                HttpSession s=request.getSession();
                s.setAttribute("name",s1);
                response.sendRedirect("intro.jsp");
                }
 
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
