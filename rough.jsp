<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%
//HttpSession ss=request.getSession();
String sel=(String)session.getAttribute("sel");
String[] opt1=(String[])session.getAttribute("opt1");
String[] opt2=(String[])session.getAttribute("opt2");
String[] opt3=(String[])session.getAttribute("opt3");
String[] opt4=(String[])session.getAttribute("opt4");
String[] opt5=(String[])session.getAttribute("opt5");
String[] para=(String[])session.getAttribute("para");
session.setAttribute("qno","0");
int qno=0;
String[] ans=(String[])session.getAttribute("answer");
String[] question=(String[])session.getAttribute("question");
int[] random=(int[]) session.getAttribute("random");
int score=0;
int count=question.length;

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 
    
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Reading Comprehension</title>
<link rel="stylesheet" href="css/style.css">

<script type="text/javascript">

var c;
var jqno=0;
function b()
{
    /*window.jqno++;
    if(window.jqno>6)
    window.jqno=6;

	var f=document.getElementById("paraframe");
        if(window.jqno>=0&&window.jqno<5)
        {
	f.setAttribute("src","/rcques.jsp");
        }
        else
          {
	f.setAttribute("src","rcques1.jsp");
        }   */
}
function a()
{
/*	window.jqno--;
if(window.jqno<0)
	window.jqno=0;
	var f=document.getElementById("paraframe");
	if(window.jqno>=0&&window.jqno<5)
        {
			f.setAttribute("src","rcques.jsp");
	    }
        else
        {
        	f.setAttribute("src","rcques1.jsp");
        }   */
}
function init()
{
	<% long d=0,diff=0;
	if((Integer)session.getAttribute("refresh")==0)
	{
		long m=System.currentTimeMillis();
		
		session.setAttribute("start",m);
	}
		if((Integer)session.getAttribute("refresh")==1)
{
	d=System.currentTimeMillis();
 diff=d-((Long)session.getAttribute("start"));

}
		
			out.println("c="+(3000-diff));
			  session.setAttribute("refresh",1);
	 %>
	 timer(c);
}
document.ready=init;

$(function(){
	$("#formsub").sisyphus();
});
</script>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.countdown.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/sisyphus.js"></script>
<script type="text/javascript" src="js/sisyphus.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Questions</title>
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
		
		<div class="infobox">
		</div>
	</div>
</section>
<section class="container">
	 
<br>
<CENTER><h1><b>READING COMPREHENSION</b></h1></CENTER>


<iframe id="paraframe" src="/rcques.jsp" align="left" width="45%" height="400px" style="position:absolute; left:18px; top:270px"  seamless>
  <p>Your browser does not support iframes.</p>
</iframe>

<section class="wrap main clearfix" style="left: 650px; top: 278px; width: 650px; right: 18px; margin-right: 1px; margin-left: 1px; position: absolute;">      
	<div class="leftCol"><div class="lWrap"> 
      <form id="formsub" method="get" action="calcscores" >
 
     	<% 
      for(int i=0;i<count;i++) 
      {
    		 
    	 out.println("<div id='qwrap" + (i+1) + "' class='qwrap'>");
    	  
    	 out.println("<p class='tquest'>" + (i+1) + ". " +question[i]+"</p>");
    	 out.println("<label class='optn'><input type='radio' name='option"+i+"' id='opt' value='A' />"+opt1[i]+"</label>");
    	 out.println("<label class='optn'><input type='radio' name='option"+i+"' id='opt' value='B' />"+opt2[i]+"</label>");
    	 out.println("<label class='optn'><input type='radio' name='option"+i+"' id='opt' value='C' />"+opt3[i]+"</label>");
    	 out.println("<label class='optn'><input type='radio' name='option"+i+"' id='opt' value='D' />"+opt4[i]+"</label>");
   		 out.println("<label class='optn'><input type='radio' name='option"+i+"' id='opt' value='E' />"+opt5[i]+"</label>");
    	 out.println("</div>");
      }
      %>

        <p class="qnav">
		<input type="button" name="prev" id="prevBtn" value="Previous" class="btn" onclick="a()"/>
		<input type="button" name="next" id="nextBtn" value="Next" class="btn bggreen" onclick="b()"/>

		</p>
		<center>
	<div class="fwrap">
		<p class="submit" align="center"><input type="submit" name="submit" class="btn bgviolet" value="Submit Section" /></p>
	</div>
	</center>
      </form></div></div>

	<div class="rightCol"><div class="rWrap">
	</div></div>

</section>
</section>	
</body>
</html>