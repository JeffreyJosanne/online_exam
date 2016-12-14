<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%
//HttpSession s=request.getSession();
int q=(Integer)session.getAttribute("quants");
int v=(Integer)session.getAttribute("verbal");
int nv=(Integer)session.getAttribute("nonverbal");
int comp=(Integer)session.getAttribute("comp");
session.setAttribute("refresh",0);
%>    
    
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>Transition</title>
<link rel="stylesheet" href="css/style.css">
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/timer.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script>
function noBack()
{
	
    window.history.forward()
}

noBack();
window.onload = noBack;
window.onpageshow = function(evt) { if (evt.persisted) {noBack()} }
window.onunload = function() { void (0) }
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
		
	</div>
</section>

<section class="container1">
    <div class="login" style="width: auto;">

     
      
	  <%
	  //out.println("<p>q="+q+" v="+v+" nv="+nv+" comp="+comp+"</p>");
	  if(q==0)
	  {
		  out.println("<form method=\"get\" action=\"quants\">");
		  out.println("<p><b>QUANTS</b> section consists of 15 questions to be solved in 20 minutes. Click  proceed to take the test.</p>");	 
	  }
	  else
	  {
	  if(v==0 && nv==0 && comp==0)
	  {
		  out.println("<form method=\"get\" action=\"nonverbal\">");
			out.println("<p><b>NONVERBAL</b> section consists of 14 questions to be solved in 15 minutes. Click  proceed to take the test.</p>");
		   }
		  else if(nv==1 && v==0 && comp==0)
		  {
			  out.println("<form method=\"get\" action=\"verbal\">");
				 out.println("<p><b>VERBAL</b> section consists of 15 questions to be answered in 15 minutes. Click  proceed to take the test.</p>");
		   }
		  else 
		  {
			  out.println("<form method=\"get\" action=\"verbmod\">");
				  out.println("<p><b>READING COMPREHENSION</b> section consists of 1 reading comprehensions and a time limit of 5 minutes.Click  proceed to take the test.</p>");
			 }
	  }
	  
	  %>
	  
        <p class="submit" align="center"><input type="submit" name="select"  class="btn bgreen" value="Proceed"></p>
      <br><br>
      </form>
	  
    </div>
  </section>

 
</body>
</html>
