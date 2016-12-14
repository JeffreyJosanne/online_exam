<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%
//HttpSession session=request.getSession();
String section=(String)session.getAttribute("sel");
String sel=null;
if(section.equalsIgnoreCase("quants"))
	sel="Quants";
if(section.equalsIgnoreCase("verbal"))
	sel="Verbal";
if(section.equalsIgnoreCase("nonverbal"))
	sel="Non Verbal";

String[] opt1=(String[])session.getAttribute("opt1");
String[] opt2=(String[])session.getAttribute("opt2");
String[] opt3=(String[])session.getAttribute("opt3");
String[] opt4=(String[])session.getAttribute("opt4");
String[] opt5=null,para=null;
String[] ans=(String[])session.getAttribute("answer");
String[] question=(String[])session.getAttribute("question");
if(sel.equalsIgnoreCase("comprehension"))
{
	opt5=(String[])session.getAttribute("opt5");
	para=(String[])session.getAttribute("para");	
}
int[] random=(int[]) session.getAttribute("random");
int score=0;
int count=question.length;
int quants=(Integer)session.getAttribute("quants");
int verbal=(Integer)session.getAttribute("verbal");
int nv=(Integer)session.getAttribute("nonverbal");
int comp=(Integer)session.getAttribute("comp");

%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html oncontextmenu="return false;">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Questions</title>
<script type="text/javascript">
var c;
function init()
{
	
	//c=document.getElementById("infobox").value;
	//window.alert(c);
	<% //if(((Integer)session.getAttribute("refresh"))==0){
	//1500000,600000,1500000
	long d=0,diff=0;
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
			
	if(quants==1 && nv==0 && verbal==0)
			{
			out.println("c="+(1200000-diff));

			}
		if(nv==1 && verbal==0)
    		{
			out.println("c="+(900000-diff));
	//		session.setAttribute("nonverbal",0);
    		}
	    if(verbal==1)
	    	{
	    	out.println("c="+(900000-diff));
	  //  	session.setAttribute("verbal",0);
	    	}
	    //if(
	  //  }
	    session.setAttribute("refresh",1);
	 %>
	// c=document.getElementById("infobox").innerText;
		//window.alert(c);

	 timer(c);
}
document.ready=init;

function noBack()
 {
     window.history.forward()
 }
noBack();
window.onload = noBack;
window.onpageshow = function(evt) { if (evt.persisted) noBack() }
window.onunload = function() { void (0) }

$(function(){
	$("#formsub").sisyphus();
});
</script>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.countdown.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/sisyphus.js"></script>
<script type="text/javascript" src="js/sisyphus.min.js"></script>
<link rel="stylesheet" href="css/style.css">
</head>
<body>
<script type = "text/javascript">
    window.onload = function () {
        document.onkeydown = function (e) {
            return ((e.which || e.keyCode) != 116);
        };
    }
      function stopRKey(evt) {
    var evt = (evt) ? evt : ((event) ? event : null);
    var node = (evt.target) ? evt.target : ((evt.srcElement) ? evt.srcElement : null);
    if (((evt.keyCode == 13) && (node.type == "text")) || ((evt.which || evt.keyCode) != 116)) {
        return false;
    }
}

document.onkeypress = stopRKey;
</script>
<section class="header">
	<div class="wrap collname">
	
		<div class="colldet">
			<div class="collhead cycle">
				<h1 class="ele sjce">St. Joseph's College of Engineering</h1>
				<h1 class="ele sjit">St. Joseph's Institute of Technology</h1>
			</div>
			<h1>Online Aptitude Test</h1>
		</div>
		
		<div class="infobox" id="infobox">
		</div>
	</div>
</section>
 
 <CENTER><h1><b style="font-weight: bold;font-size: x-large;"><%out.println(sel);%> </b></h1></CENTER>
 <br><br> 
<section class="wrap main clearfix">
	 
	<div class="leftCol"><div class="lWrap">
      <form id="formsub" method="get" action="calcscores" >
		
		<% 
      for(int i=0;i<count;i++) 
      {
    	  out.println("<div id='qwrap" + (i+1) + "' class='qwrap'>");
    	
    	  if(question[i].endsWith(".png")||question[i].endsWith(".jpg")||question[i].endsWith(".jpeg")||question[i].endsWith(".gif"))
    	  {
				out.println("<p class='tquest'>" + (i+1) + ".</p><img src='images/"+question[i]+"'>");	 
    	  }
    	  else
    	  {
				out.println("<p class='tquest'>" + (i+1) + ". " +question[i]+"</p>");
    	  }
    	  
    	  if(opt1[i].endsWith(".png")||opt1[i].endsWith(".jpg")||opt1[i].endsWith(".jpeg")||opt1[i].endsWith(".gif"))
    	  {
    		  	out.println("<label class='optn'><input type='radio' name='option"+i+"' id='opt' value='A' /><img src='images/"+opt1[i]+"'></label>");
    	  }
    	  else
    	  {
    	 		out.println("<label class='optn'><input type='radio' name='option"+i+"' id='opt' value='A' />"+opt1[i]+"</label>");
    	  }
    	  
    	  if(opt2[i].endsWith(".png")||opt2[i].endsWith(".jpg")||opt2[i].endsWith(".jpeg")||opt2[i].endsWith(".gif"))
    	  {
    		  	out.println("<label class='optn'><input type='radio' name='option"+i+"' id='opt' value='B' /><img src='images/"+opt2[i]+"'></label>");
    	  }
    	  else
    	  {
    	 		out.println("<label class='optn'><input type='radio' name='option"+i+"' id='opt' value='B' />"+opt2[i]+"</label>");
    	  }
    	  
    	  if(opt3[i].endsWith(".png")||opt3[i].endsWith(".jpg")||opt3[i].endsWith(".jpeg")||opt3[i].endsWith(".gif"))
    	  {
    		 	out.println("<label class='optn'><input type='radio' name='option"+i+"' id='opt' value='C' /><img src='images/"+opt3[i]+"'></label>");
    	  }
    	  else
    	  {
    	 		out.println("<label class='optn'><input type='radio' name='option"+i+"' id='opt' value='C' />"+opt3[i]+"</label>");
    	  }
    	  
    	  if(opt4[i].endsWith(".png")||opt4[i].endsWith(".jpg")||opt4[i].endsWith(".jpeg")||opt4[i].endsWith(".gif"))
    	  {
    			out.println("<label class='optn'><input type='radio' name='option"+i+"' id='opt' value='D' /><img src='images/"+opt4[i]+"'></label>");
    	  }
    	  else
    	  {
    	 		out.println("<label class='optn'><input type='radio' name='option"+i+"' id='opt' value='D' />"+opt4[i]+"</label>");
    	  }

    	 out.println("</div>");
      }
     
      %>

        <p class="qnav">
			<input type="button" name="prev" id="prevBtn" value="Previous" class="btn" />
			<input type="button" name="next" id="nextBtn" value="Next" class="btn bggreen"/>
		</p>
		<center>
	<div class="fwrap">
		<p class="submit" align="center"><input type="submit" name="submit" class="btn bgviolet" value="Submit Section" /></p>
		</div>
	</center>
      </form>
	  
	</div></div>
	
	

	<div class="rightCol"><div class="rWrap">
	
	<aside id="navBar">
		<ul class="clearfix"></ul>
	</aside>
	
	  </div></div>
  </section>
  
</body>
</html>