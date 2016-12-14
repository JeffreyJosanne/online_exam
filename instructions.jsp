<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>Instructions</title>
<link rel="stylesheet" href="css/style.css">
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/timer.js"></script>
<script type="text/javascript" src="js/script.js"></script>
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
		
	</div>
</section>


<section class="container">
    
    <div class="login" style="width:700px">
      <h1><b>Instructions</b></h1>
      <form method="get" action="/transition.jsp">
	  
			<b>Test Consists Of 4 sections:</b>
			<br>
			<ul>
				<li>QUANTS</li>
				<li>NONVERBAL</li>
				<li>VERBAL</li>
				<li>READING COMPREHENSION</li>
			</ul>
			<br><br>
			<ul>				
				<li>DO NOT REFRESH OR CLICK 'BACK' at any point of time, else your score will be updated as zero.</li>
				<li>You can answer the questions in any order within a section.</li>
				<li>Once a section is completed, you cannot change the answers or go back to the previous section(s).</li>
				<li>You can only exit the test after the time expires.</li>
				<li>Unattended questions will be displayed in orange color in the navigation bar.</li>
				<li>Once a question is attended, it will be flagged green.</li>
				<li>At the end of the test, the scores will be displayed.</li>
				<li>You can review your answers at the end.</li>
		</ul>
	  <br><br>
        <p class="submit" align="center"><input type="submit" name="select"  class="btn bgreen" value="START THE TEST"></p>
      <br><br>
      </form>
	  
    
  </section>

 
</body>
</html>
