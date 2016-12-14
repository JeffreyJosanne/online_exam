<!DOCTYPE html>
<%@page
	import="java.text.*,java.util.Calendar,javax.servlet.*,java.util.Date,javax.servlet.http.*,javax.sql.*,java.sql.*,java.io.*"%>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>Scores</title>
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
      <h1>Scores</h1>
       <form method="get" action="samp">
<%
	//HttpSession ss = request.getSession();
	if((Integer)session.getAttribute("refresh")==1)
	{
		RequestDispatcher rd=request.getRequestDispatcher("/review.jsp");
		rd.forward(request,response);
	}
	else
	{
		session.setAttribute("refresh",0);
		out.println("<p style=\"font-size:20px;color:#006600\">");
		out.println("ROLL. NO. = "+session.getAttribute("rollno"));
		out.println("</br></p>");
		out.println("<p style=\"font-size:20px;color:#006600\">");
		out.println("NAME= "+session.getAttribute("name"));
		out.println("</br></p>");
		out.println("<div class=tquest>");
		out.println("<br>Quants = " + session.getAttribute("qscore") + "/10");
		out.println("<br>Verbal = " + session.getAttribute("vscore") + "/30");
		out.println("<br>Nonverbal = " + session.getAttribute("nvscore") + "/16");
		out.println("<br>Comprehension = " + session.getAttribute("cscore") + "/5");
		Date d=new Date();
		//int month=d.getMonth()+1;
		String date=d.getDate()+"/"+(d.getMonth()+1)+"/"+(d.getYear()-100); 
		int quants=(Integer)session.getAttribute("qscore");
		int v=(Integer)session.getAttribute("vscore");
		int nv=(Integer)session.getAttribute("nvscore");
		int c=(Integer)session.getAttribute("cscore");
		int total = (Integer) session.getAttribute("qscore")+ (Integer) session.getAttribute("vscore")+ (Integer) session.getAttribute("nvscore")+(Integer) session.getAttribute("cscore");
		out.println("<br>Total = " + total);
		out.println("</div>");
		Class.forName("com.mysql.jdbc.Driver"); 
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sjce","root","Stjosephs123@");
       //java.sql.Date mySqlDate = new java.sql.Date(dat.getTime());

		float avg=0;
		DateFormat df = new SimpleDateFormat("HH:mm:ss");
        Calendar calobj = Calendar.getInstance();
        String time=df.format(calobj.getTime());
	
		String rollno = (String) session.getAttribute("rollno");
		String sql = "select * from student where rollnumber='" + rollno + "'";
		String sql1="update student set flag=0,logout='"+time+"' where rollnumber='"+rollno+"'";
		Statement statement = con.createStatement();
		ResultSet rs = statement.executeQuery(sql);
		
	
		if (rs.next()) {
			int testsattended=rs.getInt("testsattended");
			testsattended++;
			statement.executeUpdate(sql1);
			statement.close();
			Statement stmt=con.createStatement();
		
			String q="select * from marks where rollnumber='"+rollno+"'";
			rs=stmt.executeQuery(q);
			rs.next();
			for(int i=1;i<testsattended;i++)
				avg=avg+(Float)rs.getFloat("test"+i);
			avg=avg+total;
			avg=(float)avg/testsattended;
			out.println("<p style='font-size:20px;color:#000099'>Your Average until now : "+avg+"</p");
		
			String query1="update marks set test"+testsattended+" = "+total+",date"+testsattended+" = '"+date+"',average="+avg+",quants="+quants+",verbal="+v+",nonverbal="+nv+",comp="+c+" where rollnumber='" + rollno + "'";
			stmt.executeUpdate(query1);
			stmt.close();
		
			Statement stmt3=con.createStatement();
			String query3="update student set testsattended = "+testsattended+" where rollnumber='" + rollno + "'";
			stmt3.executeUpdate(query3);
			stmt3.close();
			
			rs.close();
			con.close();
	}
}
	
%>

<p class="remember_me">
        <center> <p></p> </center>
        
        <!--<p class="submit" align="center"><input type="submit" name="review" value="Review your answers" class="btn bggreen"></p>-->
        <p align='center' > <a href="/review.jsp"><input type="button" value="Review nonverbal section" class="btn bggreen"/></a></p>
      </form>
    </div>  
  </section>
  

 
</body>
</html>
