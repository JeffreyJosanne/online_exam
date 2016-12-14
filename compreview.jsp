<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
//HttpSession s=request.getSession();
String [][] v=(String[][])session.getAttribute("creview");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Review</title>
<script type="text/javascript">

</script>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.countdown.js"></script>
<!-- <script type="text/javascript" src="js/script.js"></script> -->
<link rel="stylesheet" href="css/style.css">
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
		
		<!-- <div class="infobox">
		</div>-->
	</div>
</section>
  
<section class="wrap main clearfix">
      
	<div class="leftCol"><div class="lWrap">

<%out.println("<h1 style='font-size:40px;color:#e7962c'>Comprehension</h1></br></br><br/>");

		out.println("<div id='qwrap' class='qwrap'>");
			out.println("<p class='tquest'>"+v[0][3]+"</p>");
 		for(int j=0;j<5;j++) 
  	  {
 			if(v[j][0]!=null)
 	    	  {
 	    		  out.println("<p class='tquest'>" + (j+1) + ". "+v[j][0]+"</p>");
 	    	      out.println("<p id='answer' ><font size='4px' color='PURPLE'> Your answer:"+v[j][1]+"</font></p>");
 	    	      out.println("<p id='answer' ><font size='4px' color='GREEN'> Correct answer:"+v[j][2]+"</font></p><br/>");
 	    	  }
 	    	  
  	  }
 	/*	out.println("<p class='tquest'>"+v[1][3]+"</p>");
 		for(int j=5;j<7;j++) 
  	  {
 			if(v[j][0]!=null)
 	    	  {
 	    		  out.println("<p class='tquest'>" + (j+1) + ". "+v[j][0]+"</p>");
 	    	      out.println("<p id='answer' ><font size='4px' color='PURPLE'> Your answer:"+v[j][1]+"</font></p>");
 	    	      out.println("<p id='answer' ><font size='4px' color='GREEN'> Correct answer:"+v[j][2]+"</font></p><br/>");
 	    	  }
 	    	  
  	  }*/
%>
          <p align='center' ><a href="/graph.jsp"><input type="button" value="View Graph" class="btn bggreen"/></a></p>
	
	</div></div>

  </section>
  
</body>
</html>