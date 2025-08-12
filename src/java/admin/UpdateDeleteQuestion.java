 package admin;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import DB.DBCon;
public class UpdateDeleteQuestion extends HttpServlet
{
public void service(HttpServletRequest request,HttpServletResponse response)
 throws ServletException, IOException {

response.setContentType("text/html;charset=UTF8");
 try (PrintWriter out = response.getWriter())
 {
 String qid=request.getParameter("qid");
 String ques=request.getParameter("ques");
 String opt1=request.getParameter("opt1");
 String opt2=request.getParameter("opt2");
 String opt3=request.getParameter("opt3");
 String opt4=request.getParameter("opt4");
 String ans=request.getParameter("ans");
 String opr=request.getParameter("opr");
 DBCon db=new DBCon();
 if(opr.equalsIgnoreCase("update"))
 {
 db.pstmt=db.con.prepareStatement("update ques_mstr set ques=?,opt1=?,opt2=?,opt3=?,opt4=?,ans=? where qid=?");
 db.pstmt.setString(1, ques);
 db.pstmt.setString(2, opt1);
 db.pstmt.setString(3, opt2);
 db.pstmt.setString(4, opt3);
 db.pstmt.setString(5, opt4);
 db.pstmt.setString(6, ans);
 db.pstmt.setString(7, qid);
 int i=db.pstmt.executeUpdate();
 if(i>0)
 {
     response.sendRedirect("QuestionList.jsp?Question Updated Successfully");
 }
 }
 else
 {
 db.pstmt=db.con.prepareStatement("delete from ques_mstr where qid=?");
 db.pstmt.setString(1, qid);
int i=db.pstmt.executeUpdate();
if(i>0)
    {
 response.sendRedirect("QuestionList.jsp?Question Deleted Successfully");
 }
 }
 }
 catch(Exception e)
 {
 e.printStackTrace();
 }
 }
}