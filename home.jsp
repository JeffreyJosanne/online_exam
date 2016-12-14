<!DOCTYPE html>
<%@page
	import="javax.servlet.*,javax.servlet.http.*,java.util.Date,javax.sql.*,java.sql.*,java.io.*"%>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>Home</title>
<script>
function noBack()
 {
     window.history.forward()
 }
noBack();
window.onload = noBack;
window.onpageshow = function(evt) { if (evt.persisted) noBack() }
window.onunload = function() { void (0) }
</script>
<link rel="stylesheet" href="css/style.css">
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.countdown.js"></script>
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
		<h1>Center for Training and Placement</h1>
		</div>
	
	</div>
</section>


  <section class="container">
  <div>
  
  <center>
  <font size=5px>
<%
 	//HttpSession ss = request.getSession();

Class.forName("com.mysql.jdbc.Driver"); 
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sjce","root","Stjosephs123@");
	String rollno = (String) session.getAttribute("rollno");
 	String sql = "select * from student where rollnumber='" + rollno + "'";
 	Statement statement = con.createStatement();
 	ResultSet rs = statement.executeQuery(sql);
	if(rs.next())
	{   
		session.setAttribute("name",rs.getString("name"));
		out.println("Welcome " +  rs.getString("name"));
	} 
	statement.close();
	con.close();

%></font><br><br>
 
  <div>
 
  </div>
  </center>
 
  </div> 
 
    <div class="login">
      
      <form method="post" action="/instructions.jsp">
        <center>
        <input type="submit" name="commit" value="Placement Test" class="btn bgblue"><br><br><br>
       
      </center>
        
        
      </form>
      
      
    </div>  
  </section>

 
</body>
</html>
