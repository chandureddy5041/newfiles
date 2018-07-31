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
	column-width: 184.6px;
}

.nav li a {
	font-size: 15px;
	color: #000;
}
</style>
<nav class="navbar navbar-inverse">
	<div class="container-fluid">

		<ul class="nav navbar-nav">
			<li><a href="clanguage" style="color: #000;">C</a></li>
			<li class="active"><a href="cpplanguage">C++</a></li>
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
					<h2 class="text-center">C++ TUTORIAL</h2>
				</div>
			</div>
		</div>
		<div class="subsection">
			<ul>
				<li class="tip_text1">1. What is C++? <span class="hover_text">
						<a target="_blank" href="http://www.javatpoint.com/cpp-tutorial">Link 1</a><br>
						<a target="_blank" href="https://www.tutorialspoint.com/cplusplus/index.htm">Link 2</a>
				</span><br>
				</li>
				<br>
				<br>
				<li class="tip_text1">2. Data Types in C++ <span class="hover_text">
						<a target="_blank" href="http://www.javatpoint.com/cpp-data-types">Link 1</a><br>
						<a target="_blank" href="https://www.tutorialspoint.com/cplusplus/cpp_data_types.htm">Link 2</a>
				</span><br>
				</li>
				<br>
				<br>
				<li class="tip_text1">3. Conditional Statements in C++ <span class="hover_text">
						<a target="_blank" href="http://www.javatpoint.com/cpp-if-else">Link 1</a><br>
						<a target="_blank" href="https://www.tutorialspoint.com/cplusplus/cpp_decision_making.htm">Link 2</a>
				</span><br>
				</li>
				<br>
				<br>
				<li class="tip_text1">4. Looping Statements in C++ <span class="hover_text">
						<a target="_blank" href="http://www.javatpoint.com/cpp-for-loop">Link 1</a><br>
						<a target="_blank" href="https://www.tutorialspoint.com/cplusplus/cpp_loop_types.htm">Link 2</a>
				</span><br>
				</li>
				<br>
				<br>
				<li class="tip_text1">5. Arrays in C++ <span class="hover_text">
						<a target="_blank" href="http://www.javatpoint.com/cpp-arrays">Link 1</a><br>
						<a target="_blank" href="https://www.tutorialspoint.com/cplusplus/cpp_arrays.htm">Link 2</a>
				</span><br>
				</li>
				<br>
				<br>
				<li class="tip_text1">6. Pointers in C++ <span class="hover_text">
						<a target="_blank" href="http://www.javatpoint.com/cpp-pointers">Link 1</a><br>
						<a target="_blank" href="https://www.tutorialspoint.com/cplusplus/cpp_pointers.htm">Link 2</a>
				</span><br>
				</li>
				<br>
				<br>
				<li class="tip_text1">7. Strings in C++ <span class="hover_text">
						<a target="_blank" href="http://www.javatpoint.com/cpp-strings">Link 1</a><br>
						<a target="_blank" href="https://www.tutorialspoint.com/cplusplus/cpp_strings.htm">Link 2</a>
				</span><br>
				</li>
				<br>
				<br>
				<li class="tip_text1">8. OOPS in C++ <span class="hover_text">
						<a target="_blank" href="http://www.javatpoint.com/cpp-oops-concepts">Link 1</a><br>
						<a target="_blank" href="https://www.tutorialspoint.com/cplusplus/cpp_classes_objects.htm">Link 2</a>
				</span><br>
				</li>
				<br>
				<br>
				<li class="tip_text1">9. Exception Handling in C++ <span class="hover_text">
						<a target="_blank" href="http://www.javatpoint.com/cpp-exception-handling">Link 1</a><br>
						<a target="_blank" href="https://www.tutorialspoint.com/cplusplus/cpp_exceptions_handling.htm">Link 2</a>
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