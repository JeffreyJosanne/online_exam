<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>Monitor</title>
<link rel="stylesheet" href="css/style.css">
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.countdown.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<link href="css/calendar.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="js/calendar.js"></script>
<script>
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

$(document).ready(function(){
	
	$("input").click(function(){
		$('result').show();
	})
	});
</script>
</head>

<body>

<section class="header">
	<div class="wrap collname">
	
		<div class="colldet">
			<div class="collhead cycle">
				<h1 class="ele sjce">St. Joseph's College of Engineering</h1>
				<h1 class="ele sjit">St. Joseph's Institute of Technology</h1>
			</div>
		<h1>Online Aptitude Test</h1>
		</div>
	<div class="logout" style="padding:1px 1px;"><form action="samp" method="post"><input type=submit name="logout" class="btn bgviolet" value="Logout" /></form>
		</div>
	</div>
</section>
 
  <section class="container">
      <div class="db" style="width: auto;background-color:silver">
    <form action="qinsert" method="get" target="Results">
     <p><label>check : </label><select name="list">
                            <option value="1">Completed students</option>
                            <option value="2">Online students</option>
                        </select>
                    </p>
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

                    <p><label>YEAR : </label><select name="year">
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                        </select>
                    </p>
                    <p><label>COLLEGE : </label><select name="college">
                            <option value="St.Joseph\'s Engineering">St.Joseph's Engineering</option>
                            <option value="St.Joseph\'s Technology">St.Joseph's Technology</option>
                        </select>
                    </p>
                    <p><label>STAY : </label><select name="hostel">
                            <option value="Hostel">Hostel</option>
                            <option value="DayScholar">DayScholar</option>
                        </select>
                    </p>
     <center><input type="submit" name="submit" id="submit" class="btn bgviolet" value="View Students List" ></center>
     </form>
     </div>
     <div class="result" style="width: auto;margin-top:10px;">
	<iframe name=Results width=100% height=350px>
	
	</iframe>
    
    
    </div>
  </section>

 
</body>
</html>
