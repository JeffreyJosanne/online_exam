<!DOCTYPE html>
<%@page
	import="javax.servlet.*,java.util.Random,javax.servlet.http.*,javax.sql.*,java.sql.*,java.io.*"%>

<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>Security</title>
<script type="text/javascript">   
function Redirect() 
{  
window.location="/index.html"; 
} 
function init()
{
setTimeout('Redirect()', 24000);
}
onload=init;
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
		<h1>Online Aptitude Test</h1>
		</div>
	
	</div>
</section>


  <section class="container">
    <div class="login">
      <h1>Security Question</h1>
      <form method="post" action="samp">
      <% 	
  	Class.forName("com.mysql.jdbc.Driver"); 
      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sjce","root","Stjosephs123@");
      Random rand =new Random(); 
	int x=rand.nextInt(5); 
	x++; 
	Statement statement = con.createStatement(); 
	String sql = "select * from securityquestion where sno = "+x ; 
	ResultSet rs = statement.executeQuery(sql);
	if(rs.next()) {
		String question=rs.getString("questions");
		out.println("Question : " + question);
		out.println("<input type='hidden' name='question' value="+question+">");
		rs.close();
		statement.close();
		con.close();
	  }%>
      
        <p><input type="text" name="answer" value="" placeholder="answer"></p>
      
        
        <p class="remember_me">
        <center> <p></p> </center>
        
        <p class="submit" align="center"><input type="submit" name="commit" value="Proceed" class="btn bggreen"></p>
      </form>
    </div>  
  </section>

 
</body>
</html>