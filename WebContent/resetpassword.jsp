<%@ include file="header.jsp"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<script src="themes/js/loginregvalidations.js" type="text/javascript"></script>
<section class="main-content" style="margin-left: 400px;">
<br/><br/>
	<div class="row">
		<div class="span5">
			<h4 class="title">
				<span class="text"><strong>Reset Password</strong></span>
			</h4>
			<form action="changepassword" method="post" name="resetpassform">
				<input type="hidden" name="next" value="/">
				<fieldset>
					<div class="control-group">
						<label class="control-label">Your Email Id: <strong><s:property
									value="#session.to" /></strong></label>

					</div>
					<div class="control-group">
						<label class="control-label">New Password:</label>
						<div class="controls">
							<input type="password" name="NewPassword" required="required"
								placeholder="Enter new password" id="newpassword"
								class="input-xlarge" onkeyup="return newpassd();"><span id="newpassmin"></span>
						</div>
					</div>
					<div class="control-group">
						<label class="control-label">Confirm New Password:</label>
						<div class="controls">
							<input type="password" name="RetypeNewPassword"
								required="required" placeholder="confirm new password"
								id="cnfnewpassword" class="input-xlarge"
								onkeyup="return newpassd();"><span id="changepasswd"></span>
						</div>
					</div>
					<div class="control-group">
						<label class="control-label"></label>
						<div class="controls">
							<input type="submit" onclick="return formsubmit3();"
								class="btn btn-primary" id="resetpwd" value="Reset Password"
								class="input-xlarge"><span id="forgotsub"
								style="color: red;"></span>
						</div>
					</div>

				</fieldset>
			</form>
		</div>
	</div>
</section>
<section id="footer-bar">
	<div class="row">
		<div class="span3">
			<h4>Navigation</h4>
			<ul class="nav">
				<li><a href="./index.jsp">Homepage</a></li>
				<li><a href="./about.jsp">About Us</a></li>
				<li><a href="./contact.jsp">Contac Us</a></li>
				<li><a href="./cart.jsp">Your Cart</a></li>
				<li><a href="./register.jsp">Login/Regsiter</a></li>
			</ul>
		</div>
		<div class="span4">
			<h4>My Account</h4>
			<ul class="nav">
				<li><a href="#">My Account</a></li>
				<li><a href="#">Order History</a></li>
				<li><a href="#">Wish List</a></li>
				<li><a href="#">Newsletter</a></li>
			</ul>
		</div>
		<div class="span5">
			<p class="logo">
				<a href="index.jsp" class="logo pull-left">Online Metro Logo <!-- <img src="themes/images/logo.png" class="site_logo" alt=""> -->
				</a>
				<!-- <img src="themes/images/logo.png" class="site_logo" alt=""> -->
			</p>
			<br>
			<p>Lorem Ipsum is simply dummy text of the printing and
				typesetting industry. the Lorem Ipsum has been the industry's
				standard dummy text ever since the you.</p>
			<br /> <span class="social_icons"> <a class="facebook"
				href="#">Facebook</a> <a class="twitter" href="#">Twitter</a> <a
				class="skype" href="#">Skype</a> <a class="vimeo" href="#">Vimeo</a>
			</span>
		</div>
	</div>
</section>
<section id="copyright">
	<span>Copyright 2016 MetroOnline All right reserved.</span>
</section>
</div>
<script src="themes/js/common.js"></script>
<script>
			$(document).ready(function() {
				$('#checkout').click(function (e) {
					document.location.href = "checkout.jsp";
				})
			});
		</script>

</body>
</html>