package student;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import DB.DBCon;
import javax.servlet.http.HttpSession;

public class StuChangePassword extends HttpServlet {

    
    public void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) 
        {
          HttpSession session=request.getSession();
          String user=session.getAttribute("user").toString();
          String opswd=request.getParameter("opswd");
          String npswd=request.getParameter("npswd");
          String cpswd=request.getParameter("cpswd");
          DBCon db=new DBCon();
          
          db.pstmt=db.con.prepareStatement("select * from stu_mstr where user=? and pswd=?");
          db.pstmt.setString(1, user);
          db.pstmt.setString(2, opswd);
          db.rst=db.pstmt.executeQuery();
          if(db.rst.next())
          {
            if(npswd.equals(cpswd))
            {
              db.pstmt=db.con.prepareStatement("update stu_mstr set pswd=? where user=?");
              db.pstmt.setString(1, npswd);
              db.pstmt.setString(2, user);
              int i=db.pstmt.executeUpdate();
              if(i>0)
              {
                  out.println("<h1 style='color:blue'>Password Update Successfully</h1>");
              }
            }
            else
            {
                out.println("<h1 style='color:red'>ERROR: New ans Conform Passwor must be same</h1>");
            }
          }
          else
          {
              out.println("<h1 style='color:red'>ERROR: Invalid old Password</h1>");
              
          }
        }
        catch(Exception e)
        {
          e.printStackTrace();
        }
    }

}