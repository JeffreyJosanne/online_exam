<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%
//HttpSession ss=request.getSession();
int qn=0;//(Integer)ss.getAttribute("qnv");
int rc=0;//(Integer)ss.getAttribute("rc");
%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>dblogin</title>
<link rel="stylesheet" href="css/style.css">
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.countdown.js"></script>
<script type="text/javascript" src="js/script.js"></script>

<script type="text/javascript">
var c;
function init()
{
<%
	if(qn==0 && rc==0)
	{
		
	}
	else if(qn==1 && rc==0)
	{
		out.println("c=0");
		out.println("insert(c)");
	}
	else
	{
		out.println("c=1");
		out.println("insert(c)");
	}
%>
}

document.ready=init;

</script>

<style>
p input{
padding:0px 0px 10px 1px;
margin-left:10px;
width:750px;
}
select{
margin-left:20px;
}
p{
font-style:italics;
font-size:15px;
}
font
{font-size:13px;
}
textarea
{
padding: 0px 0px 0px 1px;
margin-left:83px;
margin-bottom: 10px;
height:300px;
width:750px;
}
</style>
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
	<div class="logout" style="padding:1px 1px;"><form action="samp" method="post"><input type=submit name="logout" class="btn bgviolet" value="Logout" /></form>
		</div>
	</div>
</section>

<section class="container">
    <div class="db" style="width: auto;background-color:silver">
    <button id="ins" class="btn">Insert questions</button>
    <br>
    	<p id="insert">
    		<u id="qnv">Proceed to insert Quants ,Verbal ,Nonverbal</u>
    		<br>
    		<u id="rc">Proceed to insert Reading Comprehension</u>
    	</p>
    <br>
    <a href="/results.jsp"><button class="btn">View results</button></a>
    </div>
    <div class="question" style="width: auto;margin-top:10px;background-color:lightGrey;">
    
    <form action="qinsert" method="post">
   		
    	<p class="para"><label class="para">Paragraph : </label><font> Insert &lt;br&gt; tag in-between multiple paragraph's and continue the next para in the same line.Insert the questions(all 5 or 2) of the para continuously.</font></br><textarea name="para" rows="" cols="" class="para"></textarea></p>  

    	<p><label >Question   : </label><input type="text" name="question" id="question"  value="" required><font>		For math problems don't use super or sub-script.(Use like log(base 2))</font></p><br>      

    	<p><label >Option A   : </label><input type="text" name="opt1" id="opt1"  value="" required></p><br>   
    	<p><label >Option B   : </label><input type="text" name="opt2" id="opt2"  value="" required></p><br>
    	<p><label >Option C   : </label><input type="text" name="opt3" id="opt3"  value="" required></p><br>
    	<p><label >Option D   : </label><input type="text" name="opt4" id="opt4"  value="" required></p><br>
    	<p><label class="para">Option E   : </label><input type="text" name="opt5" id="opt5" class="para" value="" ></p><br>
        
    	<p><label>Answer     : </label>
    	<select name="answer" style="width:40px;">
                            <option value="A">A</option>
                            <option value="B">B</option>
                            <option value="C">C</option>
                            <option value="D">D</option>
                            <option value="E">E</option>        
        </select></p><br>

    	<p><label>Section    : </label>
    	<select name="section" style="width:100px;">
                            <option value="quants">Quants</option>
                            <option value="nonverbal">NonVerbal</option>
                            <option value="verbal">Verbal</option>
                            <option value="long">Long paragraph with 5 questions</option>
                            <option value="short">Short paragraph with 2 questions</option>        
        </select></p>

    <p class="submit" align="center"><input type="submit" name="insert" id="insert" class="btn bgviolet" value="Insert Values" style="width:200px;font-size:20px;" onClick="insert(this)"/></p>
    </form>
    </div>
</section>

</body>
</html>