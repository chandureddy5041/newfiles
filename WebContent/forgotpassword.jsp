<%@ include file="header.jsp"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<script src="themes/js/loginregvalidations.js" type="text/javascript"></script>
<section class="header_text sub">
	<h4>
		<span>Forgot Password</span>
	</h4>
</section>
<section class="main-content" style="margin-left: 400px;">
	<div class="row">
		<div class="span5">
			<h4 class="title">
				<span class="text"><strong>Forgot Password</strong></span>
			</h4>
			<form action="forgotthepassword" method="post" name="form3">
				<input type="hidden" name="next" value="/">
				<fieldset>
					<div class="control-group">
						<label class="control-label">Email</label>
						<div class="controls">
							<input type="text" name="to" placeholder="Enter your email"
								id="emailid2" class="input-xlarge"
								onkeyup="forgotemail(document.form3.emailid2);"><span
								id="emailid2a" style="color: red;"></span>
						</div>
					</div>
					<div class="control-group">
						<label class="control-label"></label>
						<div class="controls">
							<input type="submit" class="btn btn-primary" id="send"
								value="Send" class="input-xlarge"
								onclick="return formsubmit2();"><span id="forsub"
								style="color: red;"></span>
						</div>
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