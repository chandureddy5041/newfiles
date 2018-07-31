<jsp:include page="header.jsp"></jsp:include>
<style>
.tip_text {
	display: inline;
	font-weight: bold;
	float: left;
	z-index: -1;
	font-size: 15px;
}

.tip_text1 {
	display: inline;
	padding-left: 100px;
	font-weight: bold;
	float: left;
	z-index: -1;
	font-size: 15px;
}

.hover_text {
	display: none;
	position: absolute;
	border: 1px solid #fff;
	font-weight: none;
	width: auto;
	height: auto;
	z-index: 5;
	padding: 5px;
	text-align: center;
}

.subsection {
	padding-left: 300px;
	padding-top: 30px;
}

.nav {
	width: 1120px;
	background-color: #81b7d8;
}

.nav li {
	border: 1px solid #000;
	column-width: 184.2px;
}

.nav li a {
	font-size: 15px;
	color: #000;
}
</style>
<nav class="navbar navbar-inverse">
	<div class="container-fluid">

		<ul class="nav navbar-nav">
			<li class="active"><a href="clanguage">C</a></li>
			<li><a href="cpplanguage" style="color: #000;">C++</a></li>
			<li><a href="javaprogramming" style="color: #000;">Core Java</a></li>
			<li><a href="advjava" style="color: #000;">Java Frameworks</a></li>
			<li><a href="softwaretesting" style="color: #000;">Testing</a></li>
			<li><a href="learnothers" style="color: #000;">Others</a></li>
		</ul>
	</div>
</nav>
<center>
	<section>
		<div class="row">
			<div class="col-md-12 col-sm-12 col-xs-12">
				<div class="head_name">
					<h2 class="text-center">C TUTORIAL</h2>
				</div>
			</div>
		</div>
		<div class="subsection">
			<ul>
				<li class="tip_text1"><a href="historyOfC.jsp">1. History of C?</a> <span class="hover_text">
				</span><br>
				</li>
				<br>
				<li class="tip_text1">2. Data Types in C <span class="hover_text">
						<a target="_blank" href="http://www.javatpoint.com/data-types-in-c">Link 1</a><br>
						<a target="_blank" href="https://www.tutorialspoint.com/cprogramming/c_data_types.htm">Link 2</a>
				</span><br>
				</li>
				<br>
				<br>
				<li class="tip_text1">3. Conditional Statements in C <span class="hover_text">
						<a target="_blank" href="http://www.javatpoint.com/c-if-else">Link 1</a><br>
						<a target="_blank" href="https://www.tutorialspoint.com/cprogramming/c_decision_making.htm">Link 2</a>
				</span><br>
				</li>
				<br>
				<br>
				<li class="tip_text1">4. Looping Statements in C <span class="hover_text">
						<a target="_blank" href="http://www.javatpoint.com/c-loop">Link 1</a><br>
						<a target="_blank" href="https://www.tutorialspoint.com/cprogramming/c_loops.htm">Link 2</a>
				</span><br>
				</li>
				<br>
				<br>
				<li class="tip_text1">5. Arrays in C <span class="hover_text">
						<a target="_blank" href="http://www.javatpoint.com/c-array">Link 1</a><br>
						<a target="_blank" href="https://www.tutorialspoint.com/cprogramming/c_arrays.htm">Link 2</a>
				</span><br>
				</li>
				<br>
				<br>
				<li class="tip_text1">6. Pointers in C <span class="hover_text">
						<a target="_blank" href="http://www.javatpoint.com/c-pointers">Link 1</a><br>
						<a target="_blank" href="https://www.tutorialspoint.com/cprogramming/c_pointers.htm">Link 2</a>
				</span><br>
				</li>
				<br>
				<br>
				<li class="tip_text1">7. Strings in C <span class="hover_text">
						<a target="_blank" href="http://www.javatpoint.com/c-strings">Link 1</a><br>
						<a target="_blank" href="https://www.tutorialspoint.com/cprogramming/c_strings.htm">Link 2</a>
				</span><br>
				</li>
				<br>
				<br>
				<li class="tip_text1">8. Structure in C <span class="hover_text">
						<a target="_blank" href="http://www.javatpoint.com/structure-in-c">Link 1</a><br>
						<a target="_blank" href="https://www.tutorialspoint.com/cprogramming/c_structures.htm">Link 2</a>
				</span><br>
				</li>
				<br>
				<br>
				<li class="tip_text1">9. Preprocessors in C <span class="hover_text">
						<a target="_blank" href="http://www.javatpoint.com/c-preprocessor">Link 1</a><br>
						<a target="_blank" href="https://www.tutorialspoint.com/cprogramming/c_preprocessors.htm">Link 2</a>
				</span><br>
				</li>
				<br>
				<br>
				
				<br>
				<br>
				<br>
				<br>
			</ul>
		</div>
		<script>
			$(".tip_text1").mouseover(
					function() {
						$(this).children(".hover_text").show();
						$(this).children(".hover_text").css("background-color",
								"#81b7d8");
						$(this).css("z-index", "5");
						$(".tip_text1").css("z-index", "0");
					}).mouseout(function() {
				$(this).children(".hover_text").hide();
			});
		</script>
	</section>
</center>
<jsp:include page="footer.jsp"></jsp:include>