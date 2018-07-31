<%@ include file="header.jsp"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<script src="themes/js/experienceregvalidations.js"
	type="text/javascript"></script>
<section class="header_text sub">
	<!-- <img class="pageBanner" src="image/img9.jpg" style="height:200px;" alt="New products" >
			 -->
	<h4>
		<span>Experience Register</span>
	</h4>
</section>
<s:if test="#session.username!=null">
	<s:if test="#session.explist!=null">
		<section class="header_text sub">
			<span>Hello, <s:property value="#session.username" /> <s:actionerror />
			</span><br> <span>This details can't be modified.</span><br />
			<s:iterator value="explist">
				<div class="form-group">
					<span>Name :</span> <strong><s:property
							value="#session.username" /></strong> <br /> <span>Relevant
						Experience :</span> <strong><s:property value="e_rel_exp" /></strong><br />
					<span>Current Company :</span> <strong><s:property
							value="e_currentcompany" /></strong><br /> <span>Current CTC :</span> <strong><s:property
							value="e_ctc" /></strong><br /> <span>Expected CTC :</span> <strong><s:property
							value="e_ectc" /></strong><br /> <span>Total Experience :</span> <strong><s:property
							value="e_total_exp" /></strong><br /> <span>Notice Period :</span> <strong><s:property
							value="e_np" /></strong><br />
				</div>
			</s:iterator>
		</section>
	</s:if>
	<s:else>
		<section class="header_text sub">
			<span>Hello, <s:property value="#session.username" /> ! Once
				you fill and submit this form, you can't make any change of it.
			</span><br> <span>Be cautious while filling the form.</span>
			<s:actionerror />
		</section>
		<section class="main-content">
			<form method="post" action="experienceregistration"
				enctype="multipart/form-data" name="exp">
				<div class="row">
					<div class="span2"></div>
					<div class="span5" style="margin-left: 300px">
						<div>
							<div class="form-group">
								<span>Name :</span> <strong><s:property
										value="#session.username" /></strong> <br /> <br />
							</div>
							Relevant Experience: <span id="message8" style="color: red;"></span>
							<span id="message9" style="color: red;"></span>
							<div class="form-group ">
								<input type="number" name="RE_years" min="1" max="15"
									class="form-control" id="RE_yearsid" placeholder="Years"
									required="required"
									onkeyup="RE_years1(document.exp.RE_yearsid);"
									onkeypress="return onlyNumbers(event);" maxlength="2" /> <input
									type="number" name="RE_months" min="0" max="11"
									class="form-control" id="RE_monthsid" placeholder="Months"
									required="required"
									onkeyup="RE_months1(document.exp.RE_monthsid);"
									onkeypress="return onlyNumbers(event);" maxlength="2" />
							</div>
							<div class="form-group ">
								<input type="text" name="company" class="form-control"
									id="companyid" placeholder="Current Company"
									required="required" onkeypress="return onlyAlphabets(event);">
							</div>
							<br />
							<div class="form-group">
								<input type="number" name="ctc_c" min="0" max="10000000"
									class="form-control" id="ctc_cid"
									placeholder="Current CTC (PA)" required="required"
									onkeypress="return onlyNumbers(event);" maxlength="2" /><span
									id="message10" style="color: red;"></span>
							</div>
							<div class="form-group ">
								<input type="number" name="ctc_e" min="0" max="100000000"
									class="form-control" id="ctc_eid"
									placeholder="Expected CTC (PA)" required="required"
									onkeypress="return onlyNumbers(event);" maxlength="2" /><span
									id="message11" style="color: red;"></span>
							</div>
							<br /> Total Experience: <span id="message12"
								style="color: red;"></span> <span id="message13"
								style="color: red;"></span>
							<div class="form-group ">
								<input type="number" name="TE_years" min="1" max="15"
									class="form-control" id="TE_yearsid" placeholder="Years"
									required="required"
									onkeyup="TE_years1(document.exp.TE_yearsid);"
									onkeypress="return onlyNumbers(event);" maxlength="2" /> <input
									type="number" name="TE_months" min="0" max="11"
									class="form-control" id="TE_monthsid" placeholder="Months"
									required="required"
									onkeyup="TE_months1(document.exp.TE_monthsid);"
									onkeypress="return onlyNumbers(event);" maxlength="2" />
							</div>
							<div class="form-group">
								<input type="number" name="notice_p" min="0" max="100"
									class="form-control" id="notice_pid"
									placeholder="Notice Period (in days)" required="required"
									onkeyup="notice_p1(document.exp.notice_pid);"
									onkeypress="return onlyNumbers(event);" maxlength="2" /><span
									id="message14" style="color: red;"></span>
							</div>

							<div class="form-group file_width">
								<label for="resumeid"><strong>Resume </strong> <span
									id="message15" style="color: red;"></span></label> <input type="file"
									id="resumeid" name="resume" required="required">
								<script type="text/javascript">
									/*For Resume*/
									var myfile = "";
									var message = document
											.getElementById('message15');
									$('#resumeid')
											.on(
													'change',
													function() {
														myfile = $(this).val();
														var ext = myfile.split(
																'.').pop();
														if (ext == "pdf"
																|| ext == "docx"
																|| ext == "doc" || ext == "txt") {
															message.innerHTML = "";
															return true;
														} else {
															message.innerHTML = "Enter valid file";
															this.value = "";
															return false;
														}
													});
								</script>
							</div>
							<br />
						</div>
					</div>
				</div>
				<div class="row">
					<div class="span5"></div>
					<div class="span3">
						<input type="submit" class="btn btn-danger" value="Submit" />
					</div>
				</div>
			</form>
		</section>
	</s:else>
</s:if>
<s:else>
	<section class="header_text sub">
		<div class="row">
			<div class="span9">
				<h4 class="title" style="margin-left: 150px;">
					<span><strong><a href="loginregistration">Login
								or Register</a></strong> To Continue</span>
				</h4>
			</div>
		</div>
	</section>
</s:else>

<jsp:include page="footer.jsp"></jsp:include>
</div>
<script src="themes/js/common.js"></script>
</body>
</html>