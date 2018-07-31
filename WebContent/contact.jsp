<%@ include file="header.jsp"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<script src="themes/js/loginregvalidations.js" type="text/javascript"></script>
<!-- <section class="google_map">
				<iframe width="100%" height="300" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://www.google.co.in/maps/place/Panelcoder+Software+Technologies/@12.957972,77.7424073,17z/data=!3m1!4b1!4m5!3m4!1s0x3bae1209e56aaaab:0xda1f8cf1a74fdab!8m2!3d12.957972!4d77.744596"></iframe>
			</section> -->
<section class="header_text sub">
	<img class="pageBanner" src="image/img5.jpg" style="height: 300px;"
		alt="New products">
	<h4>
		<span>Contact Us</span>
	</h4>
</section>
<section class="main-content">
	<div class="row">
		<div class="span5">
			<div>
				<h5>ADDITIONAL INFORMATION</h5>
				<p>
					<strong>Address:</strong>&nbsp;Indian Career Zone<br>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4th Floor, Sigma Tech Park<br>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;WhiteField, Bangalore<br>
					<strong>Phone:</strong>&nbsp;+91 999 99 99 999<br> <strong>Email:</strong>&nbsp;<a
						href="#">info@indiancareerzone.com</a>
				</p>
				<br />
			</div>
		</div>
		<div class="span7">
			<p>Feel free to contact us any time. Just drop in a message and
				we will contact you.</p>
			<s:actionerror />
			<form method="post" action="contactform" name="form1">
				<fieldset>
					<div class="clearfix">
						<label for="name"><span>Name:</span></label>
						<div class="input">
							<input tabindex="1" size="18" id="fname" name="name" type="text"
								value="" class="input-xlarge" placeholder="Name"
								required="required" onkeyup="ufname(document.form1.fname);"
								onkeypress="return onlyAlphabets(event);"> <span
								id="fi_name" style="color: red;"></span>
						</div>
					</div>

					<div class="clearfix">
						<label for="email"><span>Email:</span></label>
						<div class="input">
							<input tabindex="2" size="25" id="emaili" name="email"
								type="text" value="" class="input-xlarge"
								placeholder="Email Address" required="required"
								onkeyup="emailid(document.form1.emaili);"> <span
								id="message7" style="color: red;"></span>
						</div>
					</div>

					<div class="clearfix">
						<label for="message"><span>Message:</span></label>
						<div class="input">
							<textarea tabindex="3" class="input-xlarge" id="message"
								name="message" rows="7" placeholder="Message"
								required="required"></textarea>
						</div>
					</div>

					<div class="actions">
						<input type="submit" onclick="contactformsubmit();" tabindex="3"
							class="btn btn-inverse" value="Send message"><span
							id="messagespan" style="color: red;"></span>
					</div>
				</fieldset>
			</form>
		</div>
	</div>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</div>
<script src="themes/js/common.js"></script>
</body>
</html>