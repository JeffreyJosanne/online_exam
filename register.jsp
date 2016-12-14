<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
 
    
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Registration Form</title>
        <link rel="stylesheet" href="css/style.css">
        <link href="css/calendar.css" rel="stylesheet" type="text/css">
        <script type="text/javascript" src="js/calendar.js"></script>
        <script type="text/javascript"> 

            function stopRKey(evt) {
                var evt = (evt) ? evt : ((event) ? event : null);
                var node = (evt.target) ? evt.target : ((evt.srcElement) ? evt.srcElement : null);
                if ((evt.keyCode == 13) && (node.type == "text")) {
                    return false;
                }
            }

            document.onkeypress = stopRKey;
            function checkroll(rollnumber)
            {
                var no1 = document.getElementById("rollnumber").value;
                var reg = new RegExp("[0-9]{2}[A-Z]{2,5}[0-9]{3,5}$");
                if (!reg.test(no1))
                {
                    document.getElementById("proll").innerHTML = "Enter a valid roll number in capital letters";
                    setTimeout("rollnumber.focus();", 0);
                }
                 else
                {
                    document.getElementById("proll").innerHTML = "";
                }
            }
            function checkemail(email)
            {
                var no = document.getElementById("email").value;
               // var reg = new RegExp("^[a-z0-9]+@[a-z]{3,20}+\.[a-z]{2,4}$");
               var reg = new RegExp("[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,6}$");
                if (!reg.test(no))
                {
                    document.getElementById("pmail").innerHTML = "Enter a valid Email number";
                    setTimeout("email.focus();", 0);
                }
                 else
                {
                    document.getElementById("pmail").innerHTML = "";
                }
            }
            function checkreg(regno)
            {

                var no2 = document.getElementById("regno").value;

                var reg = new RegExp("[0-9]{12}");
                if (!reg.test(no2))
                {
                    document.getElementById("preg").innerHTML = "Enter a valid registration number";
                    setTimeout("regno.focus();", 0);
                }
                else if (no2.length > 12)
                {
                    setTimeout("regno.focus();", 0);
                    document.getElementById("preg").innerHTML = "Enter a valid registration number";
                }
                else
                {
                    document.getElementById("preg").innerHTML = "";
                }
            }
            function checkmobile(mobile)
            {

                var no3 = document.getElementById("mobile").value;
                var reg = new RegExp("[0-9]{10}");
                if (!reg.test(no3))
                {
                    document.getElementById("pphone").innerHTML = "Enter a valid 10-digit mobile number";
                    setTimeout("mobile.focus();", -1);
                }
                else
                document.getElementById("pphone").innerHTML = " ";
                if (no3.length > 10)
                {
                    document.getElementById("pphone").innerHTML = "Enter a valid 10-digit mobile number";
                    setTimeout("mobile.focus();", -1);
                }
             }

           
            function configureDropDownLists(course, dept) {

                var BE = new Array('', 'CSE', 'MECHANICAL', 'EIE', 'EEE', 'ECE', 'ICE', 'CIVIL');
                var BTECH = new Array('', 'IT', 'BIOTECH','CHEMICAL');
                var ME = new Array('', 'COMPUTER SCIENCE', 'APPLIED ELECTRONICS', 'MANUFACTURING ENGINEERING', 'POWER ELECTRONICS', 'POWER SYSTEMS', 'CONTROL AND INSTRUMENTATION');
                var MTECH = new Array('', 'SOFTWARE ENGINEERING', 'BIOTECHNOLOGY');
                var MCA = new Array('', 'NA');
                var MBA = new Array('', 'NA');
                var MSCCT = new Array('', 'NA');

                switch (course.value) {
                    case 'BE':
                        document.getElementById(dept).options.length = 0;
                        for (i = 0; i < BE.length; i++) {
                            createOption(document.getElementById(dept), BE[i], BE[i]);
                        }
                        break;
                    case 'BTECH':
                        document.getElementById(dept).options.length = 0;
                        for (i = 0; i < BTECH.length; i++) {
                            createOption(document.getElementById(dept), BTECH[i], BTECH[i]);
                        }
                        break;
                    case 'ME':
                        document.getElementById(dept).options.length = 0;
                        for (i = 0; i < ME.length; i++) {
                            createOption(document.getElementById(dept), ME[i], ME[i]);
                        }
                        break;
                    case 'MTECH':
                        document.getElementById(dept).options.length = 0;
                        for (i = 0; i < MTECH.length; i++) {
                            createOption(document.getElementById(dept), MTECH[i], MTECH[i]);
                        }
                        break;
                    case 'MCA':
                        document.getElementById(dept).options.length = 0;
                        for (i = 0; i < MCA.length; i++) {
                            createOption(document.getElementById(dept), MCA[i], MCA[i]);
                        }
                        break;
                    case 'MBA':
                        document.getElementById(dept).options.length = 0;
                        for (i = 0; i < MBA.length; i++) {
                            createOption(document.getElementById(dept), MBA[i], MBA[i]);
                        }
                        break;
                    case 'MSCCT':
                        document.getElementById(dept).options.length = 0;
                        for (i = 0; i < MSCCT.length; i++) {
                            createOption(document.getElementById(dept), MSCCT[i], MSCCT[i]);
                        }
                        break;
                }

            }

            function createOption(dept, text, value) {
                var opt = document.createElement('option');
                opt.value = value;
                opt.text = text;
                dept.options.add(opt);
            }

        </script>
    </head>



    <body>
        <script type="text/javascript" src="js/jquery.min.js"></script>
        <script type="text/javascript" src="js/jquery.countdown.js"></script>
        <script type="text/javascript" src="js/script.js"></script>
        <section class="header">
            <div class="wrap collname">

                <div class="colldet">
                    <div class="collhead cycle">
                        <h1 class="ele sjce">St. Joseph's College of Engineering</h1>
                        <h1 class="ele sjit">St. Joseph's Institute of Technology</h1>
                    </div>
                    <h1>Online Aptitude Test</h1>
                </div>

            </div>
        </section>




        <section class="container">
            <div class="login">
                <h1>REGISTRATION FORM</h1>
                <form method="post" action="register" name="registration">
  <p><label>ROLL NUMBER : </label><input type="text" name="rollnumber" id="rollnumber" value="" onBlur="checkroll(this)" required></p>
                    <p id="proll" style="color: red"></p>
                  
                    <p><label>NAME : </label><input type="text" name="name" id="name" value="" required></p>
                    <p><label>UNIVERSITY REGISTRATION NUMBER : </label><input type="text" name="regno" id="regno" value="" onBlur="checkreg(this)" required></p>
                    <p id="preg" style="color: red"></p>
                    <p><label>GENDER:</label><INPUT type="radio" name="gender" id="gender" value="Male" checked/>Male   <INPUT type="radio" name="gender" id="gender" value="Female"/>Female</p>
                    <p><label>HOSTELITE:</label><INPUT type="radio" name="hostel" id="hostel" value="Hostel" checked/>Yes   <INPUT type="radio" name="hostel" id="hostel" value="DayScholar"/>No</p>
                   	<p><label>DATE OF BIRTH : </label></p>
                    <select name="day" id="day">

	<%for(int i=1;i<=9;i++)
	out.println("<option value=\"0"+i+"\">"+i+"");
			for(int i=10;i<=31;i++)
				out.println("<option value=\""+i+"\">"+i+"");
	%>
</select>

<select name="month" id="month">
	<option value="01">January
	<option value="02">February
	<option value="03">March
	<option value="04">April
	<option value="05">May
	<option value="06">June
	<option value="07">July
	<option value="08">August
	<option value="09">September
	<option value="10">October
	<option value="11">November
	<option value="12">December
</select>

<select name="dyear" id="dyear">
<% for(int i=1960;i<=2020;i++)
	out.println("<option value=\""+i+"\">"+i+"");
%>
</select>
                    
                    <p><label>EMAIL ID : </label><input type="text" name="email" id="email" value="" onblur="checkemail(this)" placeholder="eg. xxx@gmail.com" required></p>
                    <p id="pmail" style="color: red"></p>
                    
                    <p><label>COLLEGE : </label><select name="college" id="college" required>
                            <option value=""></option>
                            <option value="St.Joseph\'s Engineering">St.Joseph's Engineering</option>
                            <option value="St.Joseph\'s Technology">St.Joseph's Technology</option>
                        </select></p>


                    <p><label>COURSE : </label><select name="course" id="course" onchange="configureDropDownLists(this, 'dept')" required>
                            <option value=""></option>
                            <option value="BE">BE</option>
                            <option value="BTECH">BTECH</option>
                            <option value="ME">ME</option>
                            <option value="MTECH">MTECH</option>
                            <option value="MCA">MCA</option>
                            <option value="MBA">MBA</option>
                            <option value="MSCCT">MSCCT</option>
                        </select></p>


                        <p><label>DEPARTMENT : </label><select name="dept" id="dept" required>
                        </select>
                    </p>

                    <p><label>SECTION : </label><select name="sec">
                          <option value="NA">NA</option> 
                            <option value="A">A</option>
                            <option value="B">B</option>
                            <option value="C">C</option>
                            <option value="D">D</option>  
                                    
                        </select></p>
                    <p><label>YEAR : </label><select name="year">
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                        </select>
                    </p>
                    
                    <p><label>MOBILE NUMBER : </label><input type="text" name="mobile" value="" id="mobile" onBlur="checkmobile(this)" required ></p>
                    <p id="pphone" style="color: red"></p>
                    <p><label>FATHER'S FIRST NAME : </label><input type="text" name="dad" id="dad" value="" required></p>
                    <p><label>MOTHER'S FIRST NAME : </label><input type="text" name="mom" id="mom" value="" required></p>
                    <p><label>BROTHER'S FIRST NAME : </label><input type="text" name="bro" id="bro" value="" required></p>
                    <p><label>SISTER'S FIRST NAME : </label><input type="text" name="sis" id="sis" value="" required></p>
                    <p class="remember_me">


                    <p class="submit" align="center"><input type="submit" name="commit" value="Register" class="btn bggreen" ></p>
                </form>
            </div>  
        </section>


    </body>
</html>
