<%@ include file="header.jsp"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<script src="themes/js/loginregvalidations.js" type="text/javascript"></script>
<section class="header_text sub">
	<!-- <img class="pageBanner" src="image/img9.jpg" style="height:200px;" alt="New products" >
			 -->
	<h4>
		<span>Online Test Register</span>
	</h4>
</section>
<section class="main-content">
	<form action="starttest_ot" method="post" class="form-stacked" name="form1">
		<div class="row">
			<div class="span2"></div>
			<div class="span5" style="margin-left: 300px">
				<div>
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
							<input type="text" name="emailot" id="emaili"
								placeholder="email@website.com" class="input-xlarge"
								onkeyup="emailid(document.form1.emaili);"> <span
								id="message7" style="color: red;"></span>
						</div>
					</div>
					<br />
				</div>
			</div>
		</div>
		<div class="row">
			<div class="span5"></div>
			<div class="actions">
				<input tabindex="9" class="btn btn-inverse large" type="submit"
					value="Start Online Test" onclick="return onlineformsubmit();">
				<span id="message16" style="color: red;"></span>
			</div>
		</div>
	</form>
</section>

<jsp:include page="footer.jsp"></jsp:include>

<script src="themes/js/common.js"></script>
</body>
</html>