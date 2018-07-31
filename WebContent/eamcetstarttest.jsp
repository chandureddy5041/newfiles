<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<title>Online Test</title>
<link rel="stylesheet" href="forTest/styles2.css" type="text/css">
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<script type="text/javascript" src="forTest/TimeCircles.js"></script>
<link rel="stylesheet" href="forTest/TimeCircles.css" />

<link rel="stylesheet"
	href="http://yandex.st/highlightjs/7.3/styles/default.min.css">
<script src="http://yandex.st/highlightjs/7.3/highlight.min.js"></script>
<script>
	hljs.tabReplace = '    ';
	hljs.initHighlightingOnLoad();
</script>
</head>
<body style="background-color:#efefef;width:1300px;">
	<div class="container">
		<div id="CountDownTimer" data-timer="10800"
			style="width: 280px; height: 125px; float: right"></div>
		
	</div>
	<script>
		$("#DateCountdown").TimeCircles();
		$("#CountDownTimer").TimeCircles({
			time : {
				Days : {
					show : false
				},
				Hours : {
					show : true
				}
			}
		});
		$("#PageOpenTimer").TimeCircles();
		var updateTime = function() {
			var date = $("#date").val();
			var time = $("#time").val();
			var datetime = date + ' ' + time + ':00';
			$("#DateCountdown").data('date', datetime).TimeCircles().start();
		}
		$("#date").change(updateTime).keyup(updateTime);
		$("#time").change(updateTime).keyup(updateTime);
		$(".startTimer").click(function() {
			$("#CountDownTimer").TimeCircles().start();
		});
		$(".stopTimer").click(function() {
			$("#CountDownTimer").TimeCircles().stop();
		});

	</script>

	<!-- <div id="header">
		

	</div> -->

	<div id="body1" class="home" style="width:1000px;">
     <div style="float: left;margin-left:140px;">
			<a href="index.jsp" id="logo"><img src="image/logonew1(edited).png" style="width:200px;height:100px;"
				alt="logo"></a>
		</div>
		<form action="" method="post" id="quiz" name="quiz" style="width:900px;margin-top:150px;">
          
			<div id="lessonThree" class="wrap shadow-bottom ">
				<div id="res_sri" style="float: right">
					<h3><strong>Your Answer is</strong></h3>
					<div id="ans" class="bigfont" style="font-size:30px;color:red;"><center>A</center></div>
				</div>

				<ul>

					

						<li>

							<h3 class="bigfont" style="width:690px;font-weight:bold;">
								1. Questions Questions Questions Questions Questions Questions Questions Questions Questions Questions Questions Questions Questions Questions Questions Questions QuestionsQuestions Questions Questions 
							</h3> 
							<br><br>
							<div class="radio">
      							<label><input type="radio" name="optradio">Option 1</label>
    						</div><br>
   							 <div class="radio">
      							<label><input type="radio" name="optradio">Option 2</label>
    						</div><br>
							<div class="radio">
      							<label><input type="radio" name="optradio">Option 3</label>
    						</div><br>
   							 <div class="radio">
      							<label><input type="radio" name="optradio">Option 4</label>
    						</div><br>
						</li>
				</ul>

				<a class="prev">&lt;&lt; Prev</a> <a class="next">Next &gt;&gt;</a>

			</div>
			<script src="forTest/index.js"></script>


			<a href="eamcetresult.jsp"><center><button type="button" class="btn btn-danger">Submit</button></center></a>

		</form>
		 <script type="text/javascript">
var a = $('#CountDownTimer').data('timer')*1000; //getter			
var auto_refresh = setInterval(function() { submitform(); }, a);

function submitform()
{

document.getElementById("quiz").submit();
}

</script> 
<script type="text/javascript">
function submitHidden( )
{
    document.getElementById("quiz").submit();
    alert("TIME OVER");
}
var a = $('#CountDownTimer').data('timer');
window.onload = setInterval( submitHidden, a*1000 );
</script>


	</div>
	<div id="footer">
		<div>
			<p>&#169; 2014 IndianCareerZone. All Rights Reserved.</p>

		</div>
	</div>
</body>
</html> 
