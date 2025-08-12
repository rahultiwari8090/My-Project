package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class stu_005fProfile_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    <title>Document</title>\n");
      out.write("    <style>\n");
      out.write("        /* CSS RESET  */\n");
      out.write("        body{\n");
      out.write("            margin: 0px;\n");
      out.write("            padding: 0px;\n");
      out.write("            background: url(Images/Student7.jpg);\n");
      out.write("            background-repeat:no-repeat ;\n");
      out.write("           background-size: 1550px 800px;\n");
      out.write("           \n");
      out.write("             \n");
      out.write("           \n");
      out.write("        }\n");
      out.write("        .navbar\n");
      out.write("        {\n");
      out.write("         display: inline-block;\n");
      out.write("         border: 3px solid white;\n");
      out.write("        margin-left: 2%;\n");
      out.write("         margin-top: 25px;\n");
      out.write("         border-radius: 5px;\n");
      out.write("         /* position: fixed; */\n");
      out.write("        }\n");
      out.write("        .navbar li{\n");
      out.write("            display: inline-block;\n");
      out.write("        }\n");
      out.write("        .navbar li a{\n");
      out.write("            color: white;\n");
      out.write("            font-size: 23px;\n");
      out.write("            padding:  60px;\n");
      out.write("            text-decoration: none; \n");
      out.write("        }\n");
      out.write("        .navbar li a:hover{\n");
      out.write("           \n");
      out.write("            color: grey;\n");
      out.write("            font-size: 23px;\n");
      out.write("            padding:  60px;\n");
      out.write("            text-decoration: none; \n");
      out.write("        }\n");
      out.write("\n");
      out.write("    \n");
      out.write("    </style>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    <header>\n");
      out.write("        <div class=\"navbar\">\n");
      out.write("        <ul>\n");
      out.write("        <li><a href=\"stu_Profile.jsp\"> Profile</a> </li>\n");
      out.write("        <li><a href=\"StartExam.jsp\">Exam</a></li>\n");
      out.write("        <li><a href=\"StuResult.jsp\">Result</a></li>\n");
      out.write("        <li> <a href=\"StuChangePswd.jsp\">Change Password</a></li>\n");
      out.write("        <li><a href=\"Logout\">Logout</a></li>\n");
      out.write("        </ul>\n");
      out.write("    </div><hr>\n");
      out.write("    </header>\n");
      out.write("<center>\n");
      out.write("    <div style=\"width:1000px;height: 600px; background-color: aliceblue; border:5px solid brown;\">\n");
      out.write("        <h2><a> Student Profile</a></h2>\n");
      out.write("        \n");
      out.write("        <table width=\"450\" border=\"1\" cellpadding=\"10\" cellspacing=\"0\">\n");
      out.write("            ");

                String user=session.getAttribute("user").toString();
                DB.DBCon db=new DB.DBCon();
                db.pstmt=db.con.prepareStatement("select * from stu_mstr where user=?");
                db.pstmt.setString(1,user);
                db.rst=db.pstmt.executeQuery();
                if(db.rst.next())
                    
                        {
                          out.println("<tr><td width=200>Student Roll Number</td><td>"+db.rst.getString( 1)+"</td></tr>"); 
                           out.println("<tr><td >Student Name </td><td>"+db.rst.getString(2)+"</td></tr>");  
                          out.println("<tr><td>Date of Birth</td><td>"+db.rst.getString( 3)+"</td></tr>");  
                          out.println("<tr><td>Gender</td><td>"+db.rst.getString(4)+"</td></tr>");  
                          out.println("<tr><td>Course</td><td>"+db.rst.getString(5)+"</td></tr>");  
                          out.println("<tr><td>Semester</td><td>"+db.rst.getString(6)+"</td></tr>");  
                          out.println("<tr><td>Address</td><td>"+db.rst.getString(7)+"</td></tr>");  
                          out.println("<tr><td>Contact</td><td>"+db.rst.getString(8)+"</td></tr>");  
                          out.println("<tr><td>E mail</td><td>"+db.rst.getString(9)+"</td></tr>");  
                          out.println("<tr><td>User Name</td><td>"+db.rst.getString(10)+"</td></tr>");  
                          out.println("<tr><td>Password</td><td>"+db.rst.getString(11)+"</td></tr>");  
                          out.println("<tr><td >Registration Date</td><td>"+db.rst.getString(12)+"</td></tr>");  
                          out.println("<tr><th colspan=2><a href=UpdateProfile.jsp><input type=button value=Update></a></th></tr>");  
                        }
                else
                {
                    response.sendRedirect("index.html? msg=Please login First");
                }
                
      out.write("\n");
      out.write("        </table>\n");
      out.write("    </div>\n");
      out.write("</center>\n");
      out.write("</body>\n");
      out.write("</html>");
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
