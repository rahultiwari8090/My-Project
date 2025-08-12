 <%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
 <head>
   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   <title>Question Paper</title>
 </head>
 <body>
 <center>
   <h1 style="color:dodgerblue;">Question Paper</h1>
   <form action="ComputerResult">
     <table width="800" cellspacing="0" cellpadding="5" border="1" bgcolor="lightblue">
       <%
         DB.DBCon db = new DB.DBCon();
         String user = session.getAttribute("user").toString();
         db.pstmt = db.con.prepareStatement("select * from result_mstr where user=?");
         db.pstmt.setString(1, user);
         db.rst = db.pstmt.executeQuery();

         if (db.rst.next()) {
             out.println("<h1 style='color:red;'>For re Exam, Please Contact Admin</h1>");
         } else {
             db.pstmt = db.con.prepareStatement("select * from ques_mstr");
             db.rst = db.pstmt.executeQuery();
             int count = 1;
             while (db.rst.next()) {
                 out.println("<tr style='color:white;background-color:dodgerblue'><td colspan='2'>Ques. " + count + ": " + db.rst.getString(2) + "</td></tr>");
                 out.println("<tr><td width='400'><input type='radio' name='ans" + count + "' value='" + db.rst.getString(3) + "'>" + db.rst.getString(3) + "</td>");
                 out.println("<td><input type='radio' name='ans" + count + "' value='" + db.rst.getString(4) + "'>" + db.rst.getString(4) + "</td></tr>");
                 out.println("<tr><td width='400'><input type='radio' name='ans" + count + "' value='" + db.rst.getString(5) + "'>" + db.rst.getString(5) + "</td>");
                 out.println("<td><input type='radio' name='ans" + count + "' value='" + db.rst.getString(6) + "'>" + db.rst.getString(6) + "</td></tr>");
                 out.println("<input type='hidden' name='id" + count + "' value='" + db.rst.getString(1) + "'>");
                 count++;
             }
         }
       %>
     </table>
     <input type="submit" style="width:120px;height:40px;background-color:red;color:white;">
   </form>
 </center>
 </body>
</html>
