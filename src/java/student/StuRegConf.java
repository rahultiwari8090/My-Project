 
package student;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import DB.DBCon;
import java.util.Date;

 
public class StuRegConf extends HttpServlet {

     
    public void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter())
        {
         
            String rno=request.getParameter("rno");
            String name=request.getParameter("name");
            String dob=request.getParameter("dob");
            String gender=request.getParameter("gender");
            String course=request.getParameter("course");
            String sem=request.getParameter("sem");
            String addr=request.getParameter("addr");
            String cont=request.getParameter("cont");
            String email=request.getParameter("email");
            String user=request.getParameter("User");
            String pswd=request.getParameter("pswd");
            String cpswd=request.getParameter("cpswd");
            DBCon db=new DBCon();
            db.pstmt=db.con.prepareStatement("INSERT INTO stu_mstr(rno,name,dob,gender,course,sem,addr,cont,email,user,pswd,date_time) values(?,?,?,?,?,?,?,?,?,?,?,?)");
            db.pstmt.setString(1,rno); 
            db.pstmt.setString(2,name); 
            db.pstmt.setString(3,dob); 
            db.pstmt.setString(4,gender); 
            db.pstmt.setString(5,course); 
            db.pstmt.setString(6,sem); 
            db.pstmt.setString(7,addr); 
            db.pstmt.setString(8,cont); 
            db.pstmt.setString(9,email); 
            db.pstmt.setString(10,user); 
            db.pstmt.setString(11,pswd); 
            db.pstmt.setString(12,new Date().toString()); 
            int i=db.pstmt.executeUpdate();
            if(i>0)
            {
                response.sendRedirect("index.html? you are registered Successfully");
            }
            }
        catch(Exception e)
        {
            e.printStackTrace();
        }
    }

    

}
