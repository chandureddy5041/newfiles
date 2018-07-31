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
<body style="background-color: #efefef; width: 1300px;">
	<div class="container">
		<div id="CountDownTimer" data-timer="3600"
			style="width: 250px; height: 125px; float: right"></div>
		<h3>dont refresh the page</h3>
	</div>
	<script>
		$("#DateCountdown").TimeCircles();
		$("#CountDownTimer").TimeCircles({
			time : {
				Days : {
					show : false
				},
				Hours : {
					show : false
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

	<div id="body1" class="home" style="width: 1000px;">
		<div style="float: left; margin-left: 140px;">
			<a href="home.jsp" id="logo"><img
				src="image/logonew1(edited).png"
				style="width: 200px; height: 100px;" alt="logo"></a>
		</div>
		<form action="result_onlinetest" method="post" id="quiz" name="quiz"
			style="width: 900px; margin-top: 150px;">

			<div id="lessonThree" class="wrap shadow-bottom ">
				<div id="res_sri" style="float: right">
					<h3>
						<strong>Your Answer is</strong>
					</h3>
					<div id="ans" class="bigfont"
						style="font-size: 35px; color: red; padding-left: 20px;"></div>
				</div>
				<ul>
					<s:iterator value="otquestionlist" status="counter" var="user">
						<li>
							<h3 class="bigfont" style="width: 800px; color: #000;">
								<s:property value="#counter.count" />
								. <b><s:property value="subject" /></b> <br> <br>
								<s:property value="question" />
							</h3> <s:if test="%{#user.program != null && #user.program != ''}">
								<pre>
								<code>
										<s:property value="program" />
										</code>
								</pre>
							</s:if><br> <br>

							<div>
								<input type="radio" class="radio_grp"
									name="question_<s:property value="#counter.count"/>"
									onchange="cbChange(this)"
									id="question_<s:property value="#counter.count"/>" value="a" />
								<label for="question_<s:property value="#counter.count"/>">A)
									<s:property value="a" />
								</label>
							</div>

							<div>
								<input type="radio" class="radio_grp"
									name="question_<s:property value="#counter.count"/>"
									onchange="l(this)"
									id="question_<s:property value="#counter.count"/>" value="b" />
								<label for="question_<s:property value="#counter.count"/>">B)
									<s:property value="b" />
								</label>
							</div>

							<div>
								<input type="radio" class="radio_grp"
									name="question_<s:property value="#counter.count"/>"
									onchange="cbChange(this)"
									id="question_<s:property value="#counter.count"/>" value="c" />
								<label for="question_<s:property value="#counter.count"/>">C)
									<s:property value="c" />
								</label>
							</div>

							<div>
								<input type="radio" class="radio_grp"
									name="question_<s:property value="#counter.count"/>"
									onchange="cbChange(this)"
									id="question_<s:property value="#counter.count"/>" value="d" />
								<label for="question_<s:property value="#counter.count"/>">D)
									<s:property value="d" />
								</label>
							</div>

						</li>
					</s:iterator>
				</ul>

				<a class="prev">&lt;&lt; Prev</a> <a class="next">Next &gt;&gt;</a>

			</div>
			<script src="forTest/index.js"></script>

			<a href=""><center>
					<button type="submit" class="btn btn-danger">Submit</button>
				</center></a>

		</form>
		<script type="text/javascript">
			var a = $('#CountDownTimer').data('timer') * 1000; //getter			
			var auto_refresh = setInterval(function() {
				submitform();
			}, a);

			function submitform() {

				document.getElementById("quiz").submit();
			}
		</script>
		<script type="text/javascript">
			function submitHidden() {
				document.getElementById("quiz").submit();
				alert("TIME OVER");
			}
			var a = $('#CountDownTimer').data('timer');
			window.onload = setInterval(submitHidden, a * 1000);
		</script>


	</div>
	<div id="footer">
		<div>
			<p>&#169; 2014 IndianCareerZone. All Rights Reserved.</p>

		</div>
	</div>
</body>
</html>