<%@ include file="header.jsp"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<script src="themes/js/loginregvalidations.js" type="text/javascript"></script>
<section class="header_text sub">
	<!-- <img class="pageBanner" src="image/img7.jpg" style="height:250px;" alt="New products" >
			 -->
	<h4>
		<span>Login or Register</span>
	</h4>
</section>
<section class="main-content">
	<div class="row">
		<div class="span5">
			<h4 class="title">
				<span class="text"><strong>Login</strong> Form</span>
			</h4>
			<form action="userlogin" method="post" name="form2">
				<input type="hidden" name="next" value="/">
				<fieldset>
					<div class="control-group">
						<label class="control-label">Email:</label>
						<div class="controls">
							<input type="text" name="uname" id="emailid1"
								placeholder="email@website.com" class="input-xlarge"
								onkeyup="loginemail(document.form2.emailid1);"><span
								style="color: red;" id="message20"></span>
						</div>
					</div>
					<div class="control-group">
						<label class="control-label">Password:</label>
						<div class="controls">
							<input type="password" name="pass" required="required"
								placeholder="Enter your password" id="password"
								class="input-xlarge">
						</div>
					</div>
					<div class="control-group">
						<input tabindex="3" class="btn btn-inverse large" type="submit"
							value="Sign into your account" onclick="return formsubmit1();"><span
							id="message23" style="color: red;"></span>
						<hr>
						<p class="reset">
							Recover your <a tabindex="4" href="forgotpassword"
								title="Recover your username or password">username or
								password</a>
						</p>
					</div>
				</fieldset>
				<s:actionerror />
			</form>
		</div>
		<div class="span7">
			<h4 class="title">
				<span class="text"><strong>Register</strong> Form</span>
			</h4>
			<form action="userregister" method="post" class="form-stacked"
				name="form1">
				<fieldset>
					<div class="control-group">
						<label class="control-label">First Name:</label>
						<div class="controls">
							<input type="text" name="FirstName" id="fname"
								placeholder="First Name" class="input-xlarge"
								onkeyup="ufname(document.form1.fname);"
								onkeypress="return onlyAlphabets(event);"> <span
								id="fi_name" style="color: red;"></span>
						</div>
					</div>
					<div class="control-group">
						<label class="control-label">Last Name:</label>
						<div class="controls">
							<input type="text" name="LastName" id="lname"
								placeholder="Last Name" class="input-xlarge"
								onkeyup="ulname(document.form1.lname);"
								onkeypress="return onlyAlphabets(event);"> <span
								id="la_name" style="color: red;"></span>
						</div>
					</div>
					<div class="control-group">
						<label class="control-label">Date of Birth:</label>
						<div class="controls">
							<input type="date" name="dob" required="required"
								placeholder="DOB" class="input-xlarge">
						</div>
					</div>
					<div class="control-group ">
						<label class="control-label">Gender:</label>
						<div class="controls">
							<input type="radio" name="gender" checked="checked" value="Male">M
							<input type="radio" name="gender" value="Female">F
						</div>
					</div>
					<div class="control-group">
						<label class="control-label">Mobile Number:</label>
						<div class="controls">
							<input type="text" name="MobileNumber" id="mobilenumber"
								placeholder="Enter 10 digit number" class="input-xlarge"
								onkeyup="cellph(document.form1.mobilenumber);"
								onkeypress="return onlyNumbers(event);" maxlength="10">
							<span id="message8" style="color: red;"></span>
						</div>
					</div>
					<div class="control-group">
						<label class="control-label">Email:</label>
						<div class="controls">
							<input type="text" name="email" id="emaili"
								placeholder="email@website.com" class="input-xlarge"
								onkeyup="emailid(document.form1.emaili);"> <span
								id="message7" style="color: red;"></span>
						</div>
					</div>
					<div class="control-group">
						<label class="control-label">Password:</label>
						<div class="controls">
							<input type="password" name="Password" id="Password"
								placeholder="Enter your password" class="input-xlarge"
								onkeyup="return passd();"><span id="passmin"
								style="color: red;"></span>
						</div>
					</div>
					<div class="control-group">
						<label class="control-label">Re-type Password:</label>
						<div class="controls">
							<input type="password" id="retypepassword"
								placeholder="Re-type password" class="input-xlarge"
								onkeyup="return passd();"> <span id="message1"
								style="color: red;"></span>
						</div>
					</div>
					<div class="control-group">
						<label class="control-label">City:</label>
						<div class="controls">
							<input type="text" name="City" id="cityname"
								placeholder="City Name" class="input-xlarge"
								onkeyup="city_name(document.form1.cityname);"
								onkeypress="return onlyAlphabets(event);"> <span
								id="ci_name" style="color: red;"></span>
						</div>
					</div>
					<div class="control-group">
						<label class="control-label">State:</label>
						<div class="controls">
							<input type="text" name="State" id="statename"
								placeholder="State Name" class="input-xlarge"
								onkeyup="state_name(document.form1.statename);"
								onkeypress="return onlyAlphabets(event);"> <span
								id="st_name" style="color: red;"></span>
						</div>
					</div>
					<div class="control-group">
						<label class="control-label">Zip code:</label>
						<div class="controls">
							<input type="text" name="ZipCode" id="zip" placeholder="Zip Code"
								class="input-xlarge" onkeyup="zip_code(document.form1.zip);"
								onkeypress="return onlyNumbers(event);" maxlength="6"> <span
								id="zip_message" style="color: red;"></span>
						</div>
					</div>
					<!-- <div class="control-group">
									<p>Now that we know who you are. I'm not a mistake! In a comic, you know how you can tell who the arch-villain's going to be?</p>
								</div> -->

					<div class="actions">
						<input tabindex="9" class="btn btn-inverse large" type="submit"
							value="Create your account" onclick="return formsubmit();">
						<span id="message16" style="color: red;"></span>
					</div>
					<hr>
				</fieldset>
			</form>
		</div>
	</div>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</div>
<script src="themes/js/common.js"></script>
<script>
	$(document).ready(function() {
		$('#checkout').click(function(e) {
			document.location.href = "checkout.jsp";
		})
	});
</script>
</body>
</html>