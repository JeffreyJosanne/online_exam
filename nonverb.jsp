<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
//HttpSession s=request.getSession();
String [][] nv=(String[][])session.getAttribute("nvreview");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Review</title>
<script type="text/javascript">
        function noBack()
         {
             window.history.forward()
         }
        noBack();
        window.onload = noBack;
        window.onpageshow = function(evt) { if (evt.persisted) noBack() }
        window.onunload = function() { void (0) }
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
  
<%out.println("<h1 style='font-size:40px;color:#e7962c'>NonVerbal</h1></br></br><br/>");

		out.println("<div id='qwrap' class='qwrap'>");
 		for(int i=0;i<nv.length;i++) 
  	  {
 			if(nv[i][0]!=null)
	    	  {
	    		  if(nv[i][0].endsWith(".png")||nv[i][0].endsWith(".jpg")||nv[i][0].endsWith(".jpeg")||nv[i][0].endsWith(".gif"))
	        	  {
	        		  out.println("<p class='tquest'>" + (i+1) + ".</p><img src='images/"+nv[i][0]+"'>");	 
	        	  }
	        	  else
	        	  {
	        		  out.println("<p class='tquest'>" + (i+1) + ". "+nv[i][0]+"</p>");
	        	  }
	        	  
	        	  
	    		  if(nv[i][1].endsWith(".png")||nv[i][1].endsWith(".jpg")||nv[i][1].endsWith(".jpeg")||nv[i][1].endsWith(".gif"))
	        	  {
	    			  out.println("<p id='answer' ><font size='4px' color='GREEN'> Your answer:<img src='images/"+nv[i][1]+"'></font></p><br/>");	 
	        	  }
	     
	        	  else
	        	  {
	        		  out.println("<p id='answer' ><font size='4px' color='PURPLE'> Your answer:"+nv[i][1]+"</font></p>");
	         	  }
	    		  
	    		  
	    		  if(nv[i][2].endsWith(".png")||nv[i][2].endsWith(".jpg")||nv[i][2].endsWith(".jpeg")||nv[i][2].endsWith(".gif"))
	        	  {
	    			  out.println("<p id='answer' ><font size='4px' color='GREEN'> Correct answer:<img src='images/"+nv[i][2]+"'></font></p><br/>");	 
	        	  }
	        	  else
	        	  {
	        		  out.println("<p id='answer' ><font size='4px' color='GREEN'> Correct answer:"+nv[i][2]+"</font></p><br/>");
	        	  }
	    	  }
  		/*		if(nv[i][0]==null)
  	  			{
  					if(nv[i][0].endsWith(".png")||nv[i][0].endsWith(".jpg")||nv[i][0].endsWith(".jpeg")||nv[i][0].endsWith(".gif"))
  	  				{
  		  				out.println("<p class='tquest'>" + (i+1) + ".</p><img src='images/"+nv[i][0]+"'>");	 
  	  				}
  	  				else
  	  				{
  		  				out.println("<p class='tquest'>" + (i+1) + ". "+nv[i][0]+"</p>");
  	  				}
  	  
  		 			out.println("<p id='answer'><font size='4px' color='PURPLE'> Your answer: Unanswered</font></p>");
  	     
		 			if(nv[i][2].endsWith(".png")||nv[i][2].endsWith(".jpg")||nv[i][2].endsWith(".jpeg")||nv[i][2].endsWith(".gif"))
  	  				{
			  			out.println("<p id='answer' ><font size='4px' color='GREEN'> Correct answer:<img src='images/"+nv[i][2]+"'></font></p><br/>");	 
  	  				}
  	  				else
  	  				{
  		  				out.println("<p id='answer' ><font size='4px' color='GREEN'> Correct answer:"+nv[i][2]+"</font></p><br/>");
  	    	  		}
  		 		}*/
  	  	}
%>
<p class="remember_me">
<form method="get" action="/verb.jsp">
<p class="submit" align="center"><input type="submit" name="" class="btn bgviolet" value="Review verbal section" /></p>
	</form>


	</div></div>

  </section>
  
</body>
</html>