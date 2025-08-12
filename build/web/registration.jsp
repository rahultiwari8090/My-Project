<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
         body {
            margin: 0px;
            padding: 0px;
            background: url(Images/Student7.jpg);
            background-repeat: no-repeat;
            background-size: 1550px 800px;
            color: white;
            /* font-family: 'Baloo Bhaina 2', cursive; */
            background-color: rgba(0, 0, 0, 0.329);


        }
        .navbar {
            display: inline-block;
            /* border: 3px solid white; */
            margin-left: 25%;
            margin-top: 25px;
            border-radius: 5px;
        }

        .navbar li {
            display: inline-block;
        }

        .navbar li a {
            color: white;
            font-size: 23px;
            padding: 33px 50px;
            text-decoration: none;
        }

        .navbar li a:hover {

            color: rgb(97, 7, 7);
            font-size: 23px;
            padding: 0px 50px;
            text-decoration: none;
            border-bottom: 2px lightyellow;
        }
        .container{
            width: 730px;
            height: 750px;
            /* border: 2px solid orange ; */
            margin-left: 400px;
            background-color:rgba(0, 0, 0, 0.918);
           
        }
        .content{
            color:white;
            font-size: 25px;
            padding-left: 100px;
            
            
        }
        .content input{
            padding: 5px 27px;
            margin: 5px;
            border-radius: 5px;
            width: 44%;
            border-radius: 2px solid black;
            font-size: 19px;
            /* padding-left: 80px; */
            padding-top: 10px;
        }
        .content select{
            padding: 5px 20px;
            margin: 5px;
            border-radius: 5px;
            width: 63%;
            border-radius: 4px black;
            font-size: 20px;
            /* padding-left: 80px; */
            padding-top: 10px;
        }
        
        .btn {
            margin: 5px;
            color: white;
            font-size: 20px;
            padding: 14px 80px;
            border-radius: 20px;
            margin-left: 100px;
            background-color: rgb(255, 166, 0);
          
        }
        
    </style>
</head>
<body>
    <header style=" background-color: rgb(0,0,0); /* Fallback color */
background-color: rgba(0, 0, 0, 0.26);">
    <div class="navbar">
        <ul>
            <li><a href="index.html"> Home</a> </li>
            <li> <a href="course.jsp">Courses</a></li>
            <li><a href="registration.jsp">Registration</a></li>
            <li><a href="contact.jsp">Contact Us</a></li>
        </ul>
</header>
<div class="container">
 <center><h1><u>Registration FORM</u></h1></center>
<form action="StuRegConf">
 <table class="content">
    <tr><td>Roll No</td><td>Student Name:</td></tr>
    <tr><td><input type="number" name="rno"></td>
        <td><input type="text" name="name"></td></tr>
    
    <tr><td>Date of Birth</td><td>Gender</td></tr>
    <tr><td><input type="date" name=dob></td>
    <td><input type="radio" name="gender" value="male">
        <label for="male">Male</label>
        <input type="radio" name="gender" value="female">
        <label for="female">Female</label></td></tr>

      <tr><td> Course </td><td>Semester</td></tr>

    <tr><td><select name="course">
        <option value="BCA">BCA</option>
        <option value="B.Tech">B.Tech</option>
        <option value="B.COM">B.Com</option>
        <option value="BBA">BBA</option>
        <option value="BSC">BSC</option>
        <option value="Diploma">Diploma</option>
        <option value="MBA">MBA</option>
        <option value="B.Voc">B.Voc</option></select></td>
         
    <td><input type="number" name="sem"></td></tr>
    
    

    
    <tr><td>Address</td><td>Contact Number</td></tr>
    <tr><td><input type="text" name="addr"></td>
        <td><input type="number" name="cont"></td></tr>

        <tr><td>Email</td><td>User Name</td></tr>
        <tr><td><input type="email" name="email"></td>
        <td><input type="text" name="User"></td></tr>

     <tr><td>Password:</td><td>Confirm Password:</td></tr>

    <tr><td><input type="password" name=pswd></td>
        <td><input type="password" name=cpswd></td></tr>

    
    
</table>
    <hr style="color:solid gray;">
<input type=submit class="btn" value="SUBMIT"><input type=reset class="btn" value="Reset">
</form>
</div>
<div>
    <img src="Images/Placement - Copy.png" alt="">
</div>

</body>
</html>