<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>Thank you</title>
<script>
function noBack()
 {
     window.history.forward()
 }
 
noBack();
window.onload = noBack;
window.onpageshow = function(evt) { if (evt.persisted) noBack() }
window.onunload = function() { void (0) }
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
<h1>Thank you for attending this aptitude test.</h1>

<p class="remember_me">
References :<br><br>
<a href=http://www.bbc.co.uk/worldservice/learningenglish>http://www.bbc.co.uk/worldservice/learningenglish/</a>
<a href=http://www.usingenglish.com>http://www.usingenglish.com/</a>
<a href=http://learningenglish.voanews.com>http://learningenglish.voanews.com/</a>
<a href=http://www.ello.org>http://www.ello.org/</a>
<a href=http://www.english-test.net>http://www.english-test.net/</a>
<a href=http://www.dailygrammar.com/archive.html>http://www.dailygrammar.com/archive.html/</a>
<a href=http://grammar.ccc.comment.edu/grammar>http://grammar.ccc.comment.edu/grammar/</a>
<a href=http://www.tlsbooks.com/englishworksheets.html>http://www.tlsbooks.com/englishworksheets.html</a>
<a href=http://www.englishbanana.com>http://www.englishbanana.com/</a><br><br>
</p>
<form method=post action=samp>
           <p align='center' ><input type="submit" name="logout" value="Logout" class="btn bggreen"/></p>
</form>
</div>
</section>
</body>
</html>

