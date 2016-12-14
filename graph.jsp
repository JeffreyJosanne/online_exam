<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="javax.servlet.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="js/jpgraph.js" type="text/javascript" charset="utf-8"></script>

<link rel="stylesheet" href="css/960.css"/>
<link rel="stylesheet" href="css/jpprodstyle.css"/>
<link rel="stylesheet" href="css/style.css">
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.countdown.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<title>Graph Analysis</title>
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
	<div id="bargraph"></div>
<%//HttpSession s=request.getSession();
         float qscore=(((float)((Integer)session.getAttribute("qscore"))/10)*100);
         float vscore=(((float)((Integer)session.getAttribute("vscore"))/30)*100);
         float nvscore=(((float)((Integer)session.getAttribute("nvscore"))/16)*100);
		float cscore=(((float)((Integer)session.getAttribute("cscore"))/5)*100);
%>
    <script type="text/javascript" charset="utf-8">
    window.onload = function() {

        /**
         * set graph data
         */
         
         var data = ({series1data : new Array('<%=qscore%>','<%=nvscore%>','<%=vscore%>','<%=cscore%>')});
             /**
         * draw the graph
         */
        var graph = new JpGraph(
                'horizontal bar',
                'bargraph',
                data,
                {
                  width                 : 1000,
                  height                : 500,
                  backgroundColor       : '#f9f5da',
                  series1              : "title: Quants; color:#e94933; scale:left",
                  series2               : "title: NonVerbal; color:red; scale:left",
                 series3             : "title: Verbal; color:#0f0; scale:left",
                  series4               : "title: Comprehension; color:#00f; scale:left",
                  xLabels               : 'Quants | NonVerbal | Verbal | Comprehension',
                  xfontColor            : "#444",
                  xopacity              : 1.0,
                  xfontSize             : 12,
                  xfontWeight           : "normal",
                  xfontStyle            : "normal",
                  xfontFamily           : "Helvetica, Arial, Verdana, sans-serif",
                  xtextAnchor           : "end",
                  xrotation             : 315,
                  xinterval				: 10,
                  barWidth              : 23,
                  barGap                : 20,
                  displayValues         : true,
                  title                 : "Scores",
                  titleFontSize         : "24px",
                  titleFontWeight       : "normal",
                  titleFontStyle        : "normal",
                  titleFontFamily       : "Helvetica, Arial, Verdana, sans-serif",
                  titleFontColor        : "#444",
                  xTitle                : "Scores %",
                  xTitleFontSize        : 16,
                  xTitleFontWeight      : "normal",
                  xTitleFontStyle       : "normal",
                  xTitleFontFamily      : "Helvetica, Arial, Verdana, sans-serif",
                  xTitleFontColor       : "#444",
                  yTitle                : "Section",
                  yTitleFontSize        : 16,
                  yTitleFontWeight      : "normal",
                  yTitleFontStyle       : "normal",
                  yTitleFontFamily      : "Helvetica, Arial, Verdana, sans-serif",
                  yTitleFontColor       : "#444",
                  threeD                : false, //true=3d else normal
                  //depth                 : 10,
                  animationTime         : 750,
                  gridBackgroundColor   : "#dbd39a",
                  gridBanding           : true,
                  gridOpacity           : 1.0,
                  gridBackgroundImage   : "",
                  gridLineWidth         : 0.3,
                  gridLineStyle         : ". ",
                  gridAxisWidth         : 2,
                  gridAxisStyle         : "- ",
                  gridNRows             : 1,
                  gridColSpacing        : 70,
                  gridRowSpacing        : 60,
                  gridxPos              : 95,
                  gridyPos              : 420,
                  xLabelPre             : "",
                  xLabelPost            : "",
                  yLabelColor           : "#777",
                  yLabelPost            : "",
                  x2LabelPre            : "",
                  x2LabelPost           : "",
                  y2LabelPre            : "",
                  y2LabelPost           : "",
                  ndecplaces            : 0,
                  ndecplaces2           : 3,
                  labelFontSize         : 12,
                  labelFontWeight       : "lighter",
                  labelFontStyle        : "normal",
                  labelFontFamily       : "Helvetica, Arial, Verdana, sans-serif",
                  labelFontColor        : "#000",
                  xrotation             : 315,
                  legendXpos            : 650,
                  legendYpos            : 60,
                  legendPadding         : 6,
                  legendRoundRadius     : 6,
                  legendOpacity         : 0.7,
                  legendBackground      : true,
                  legendBackgoundColor  : '#ffffff',
                  legendBorderColor     : '#888',
                  legendBorderWidth     : 1,
                  legendStyle           : 'vertical',
                  legendFontSize        : 12,
                  legendFontWeight      : 'normal',
                  legendFontStyle       : 'normal',
                  legendFontFamily      : 'Helvetica, Arial, Verdana, sans-serif',
                  legendFontColor       : '#444'
                });
    }

    </script>
    <br>
<p class="remember_me">
<form method="post" action="/logout.jsp">
<p class="submit" align="center"><input type="submit" name="finish" class="btn bgviolet" value="Finish" /></p>
	</form>

</body>
</html>