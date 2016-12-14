<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  pageEncoding="ISO-8859-1"%>
<%
//HttpSession s=request.getSession();
String [][] v=(String[][])session.getAttribute("vreview");
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

<%out.println("<h1 style='font-size:40px;color:#e7962c'>Verbal</h1></br></br><br/>");

		out.println("<div id='qwrap' class='qwrap'>");
 		for(int i=0;i<v.length;i++) 
  	  {
 	    	  if(v[i][0]!=null)
 	    	  {
 	    		  if(v[i][0].endsWith(".png")||v[i][0].endsWith(".jpg")||v[i][0].endsWith(".jpeg")||v[i][0].endsWith(".gif"))
 	        	  {
 	        		  out.println("<p class='tquest'>" + (i+1) + ".</p><img src='images/"+v[i][0]+"'>");	 
 	        	  }
 	        	  else
 	        	  {
 	        		  out.println("<p class='tquest'>" + (i+1) + ". "+v[i][0]+"</p>");
 	        	  }
 	        	  
 	    		  if(v[i][1].endsWith(".png")||v[i][1].endsWith(".jpg")||v[i][1].endsWith(".jpeg")||v[i][1].endsWith(".gif"))
 	        	  {
 	    			  out.println("<p id='answer' ><font size='4px' color='PURPLE'> Your answer:<img src='images/"+v[i][1]+"'></font></p><br/>");	 
 	        	  }    
 	        	  else
 	        	  {
 	        		  out.println("<p id='answer' ><font size='4px' color='PURPLE'> Your answer:"+v[i][1]+"</font></p>");
         	      }
 	    		  
 	    		  if(v[i][2].endsWith(".png")||v[i][2].endsWith(".jpg")||v[i][2].endsWith(".jpeg")||v[i][2].endsWith(".gif"))
 	        	  {
 	    			  out.println("<p id='answer' ><font size='4px' color='GREEN'> Correct answer:<img src='images/"+v[i][2]+"'></font></p><br/>");	 
 	        	  }
 	        	  else
 	        	  {
 	        		  out.println("<p id='answer' ><font size='4px' color='GREEN'> Correct answer:"+v[i][2]+"</font></p><br/>");
       	    	  }
 	    	  }
  	  }
%>
          
	<form method="get" action="/compreview.jsp">
<p class="submit" align="center"><input type="submit" name="" class="btn bgviolet" value="Review Comprehension section" /></p>
	</form>
	</div></div>

  </section>
  
</body>
</html>