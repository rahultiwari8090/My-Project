package student;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import DB.DBCon;
import javax.servlet.http.HttpSession;
 
public class UpdateProfile extends HttpServlet {

    
    public void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            HttpSession session=request.getSession();
            String user=session.getAttribute("user").toString();
            String name=request.getParameter( "name");
            String dob=request.getParameter( "dob");
            String gender=request.getParameter( "gender");
            String course=request.getParameter( "course");
            String sem=request.getParameter( "sem");
            String addr=request.getParameter( "addr");
            String cont=request.getParameter( "cont");
            String mail=request.getParameter( "mail");
            DBCon db=new DBCon();
            db.pstmt=db.con.prepareStatement("UPDATE stu_mstr SET name=?,dob=?,gender=?,course=?,"+"sem=?,addr=?,cont=?,email=? WHERE user=?");
             db.pstmt.setString( 1, name);
             db.pstmt.setString( 2, dob);
             db.pstmt.setString( 3, gender);
             db.pstmt.setString( 4, course);
             db.pstmt.setString( 5, sem);
             db.pstmt.setString( 6, addr);
             db.pstmt.setString( 7, cont);
             db.pstmt.setString( 8, mail);
             db.pstmt.setString( 9, user);
             int i=db.pstmt.executeUpdate();
             if(i>0)
             {
                 response.sendRedirect("stu_Profile.jsp?msg=Profile Updated Successfully");
             }
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
    }
 
}

