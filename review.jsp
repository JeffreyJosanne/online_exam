<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
//HttpSession s=request.getSession();
String [][] q=(String[][])session.getAttribute("qreview");
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
 
		<% out.println("<h1 style=\"font-size:40px;float:left;color:#e7962c \"><b>Quants</b></h1></br></br></br>");
		
		out.println("<div id='qwrap' class='qwrap'>");
      for(int i=0;i<q.length;i++) 
    	  {
    	  if(q[i][0]!=null)
    	  {
    		  if(q[i][0].endsWith(".png")||q[i][0].endsWith(".jpg")||q[i][0].endsWith(".jpeg")||q[i][0].endsWith(".gif"))
        	  {
        		  out.println("<p class='tquest'>" + (i+1) + ".</p><img src='images/"+q[i][0]+"'>");	 
        	  }
        	  else
        	  {
        		  out.println("<p class='tquest'>" + (i+1) + ". "+q[i][0]+"</p>");
        	  }
        	  
    		  if(q[i][1].endsWith(".png")||q[i][1].endsWith(".jpg")||q[i][1].endsWith(".jpeg")||q[i][1].endsWith(".gif"))
        	  {
    			  out.println("<p id='answer' ><font size='4px' color='PURPLE'> Your answer:<img src='images/"+q[i][1]+"'></font></p><br/>");	 
        	  }
     
        	  else
        	  {
        		  out.println("<p id='answer' ><font size='4px' color='PURPLE'> Your answer:"+q[i][1]+"</font></p>");
              }
    		  
    		  if(q[i][2].endsWith(".png")||q[i][2].endsWith(".jpg")||q[i][2].endsWith(".jpeg")||q[i][2].endsWith(".gif"))
        	  {
    			  out.println("<p id='answer' ><font size='4px' color='GREEN'> Correct answer:<img src='images/"+q[i][2]+"'></font></p><br/>");	 
        	  }
        	  else
        	  {
        		  out.println("<p id='answer' ><font size='4px' color='GREEN'> Correct answer:"+q[i][2]+"</font></p><br/>");
      		  }
         	}
	  }            	
      %>

     <p align='center' > <a href="/nonverb.jsp"><input type="button" value="Review nonverbal section" class="btn bggreen"/></a></p>
	
	</div></div>

  </section>
  
</body>
</html>