<script src="themes/js/common.js"></script>
<script src="themes/js/jquery.flexslider-min.js"></script>
<script type="text/javascript">
	$(function() {
		$(document).ready(function() {
			$('.flexslider').flexslider({
				animation : "fade",
				slideshowSpeed : 4000,
				animationSpeed : 600,
				controlNav : false,
				directionNav : true,
				controlsContainer : ".flex-container" // the container that holds the flexslider
			});
		});
	});
</script>
<section id="footer-bar">
	<div class="row">
		<div class="span2"></div>
		<div class="span3">
			<h4></h4>
			<ul class="nav">
				<li><a href="./index.jsp">About Us</a></li>
				<li><a href="./contact.jsp">Contac Us</a></li>
				<li><a href="./register.jsp">Login</a></li>
			</ul>
		</div>
		<div class="span3">
			<h4></h4>
			<ul class="nav">
				<li><a href="fresher.jsp">Career</a></li>
				<li><a href="c.jsp">Tutorial</a></li>
				<li><a href="test.jsp">Online Test</a></li>
			</ul>
		</div>
		<div class="span3">
			<h4></h4>
			<ul class="nav">
				<li><a href="fresher.jsp">Fresher Jobs</a></li>
				<li><a href="experience.jsp">Jobs for Experienced</a></li>
			</ul>
		</div>
	</div>
</section>
<section id="copyright">
	<span>Copyright 2014 IndianCareerZone All right reserved.</span>
</section>