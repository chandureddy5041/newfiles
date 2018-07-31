<%@ include file="header.jsp"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<script src="themes/js/fresherregvalidations.js" type="text/javascript"></script>
<section class="header_text sub">
	<br />
	<h4>
		<span>Fresher Register</span>
	</h4>
</section>
<s:if test="#session.username!=null">
	<s:if test="#session.freshlist!=null">
		<section class="header_text sub">
			<span>Hello, <s:property value="#session.username" /> <s:actionerror />
			</span><br> <span>This details can't be modified.</span>
			<s:iterator value="freshlist">
				<div class="form-group">
					<span>Name :</span> <strong><s:property
							value="#session.username" /></strong> <br /> <span>SSC % :</span> <strong><s:property
							value="f_ssc" /></strong><br /> <span>SSC YOP :</span> <strong><s:property
							value="f_ssc_yop" /></strong><br /> <span>PUC % :</span> <strong><s:property
							value="f_puc" /></strong><br /> <span>PUC YOP :</span> <strong><s:property
							value="f_puc_yop" /></strong><br /> <span>UG % :</span> <strong><s:property
							value="f_ug" /></strong><br /> <span>UG YOP :</span> <strong><s:property
							value="f_ug_yop" /></strong><br /> <span>UG Branch :</span> <strong><s:property
							value="f_ug_branch" /></strong><br /> <span>PG % :</span> <strong><s:property
							value="f_pg" /></strong><br /> <span>PG YOP :</span> <strong><s:property
							value="f_pg_yop" /></strong><br /> <span>PG Branch :</span> <strong><s:property
							value="f_pg_branch" /></strong><br />
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
			<form method="post" action="fresherregistration"
				enctype="multipart/form-data" name="fresh">
				<div class="row">
					<div class="span2"></div>
					<div class="span5">
						<div>
							<div class="form-group">
								<span>Name :</span> <strong><s:property
										value="#session.username" /></strong> <br /> <br />
							</div>
							<div class="form-group ">
								<strong>Note:</strong> <span>Rounding percentage and year
									of <br />pass are required.
								</span>
							</div>
							<div class="form-group">
								<input type="number" min="0" max="99" name="ssc_perc"
									class="form-control" id="ssc_percid" placeholder="SSC (%)"
									required="required"
									onkeyup="ssc_perc1(document.fresh.ssc_percid);"
									onkeypress="return onlyNumbers(event);" maxlength="2" /><span
									id="message8" style="color: red;"></span>
							</div>
							<div class="form-group ">
								<input type="number" min="1990" max="2013" name="ssc_yop"
									class="form-control" id="ssc_yopid"
									placeholder="SSC Year of Pass" required="required"
									onkeypress="return onlyNumbers(event);" /><br /> <br />
							</div>
							<div class="form-group ">
								<strong>Note:</strong> <span>Rounding percentage and year
									of <br />pass are required.
								</span>
							</div>
							<div class="form-group">
								<input type="number" min="0" max="99" name="inter_perc"
									class="form-control" id="inter_percid"
									placeholder="PUC/ Inter (%)" required="required"
									onkeyup="inter_perc1(document.fresh.inter_percid);"
									onkeypress="return onlyNumbers(event);" maxlength="2" /><span
									id="message9" style="color: red;"></span>
							</div>
							<div class="form-group ">
								<input type="number" min="2000" max="2015" name="inter_yop"
									class="form-control" id="inter_yopid"
									placeholder="PUC/ Inter Year of Pass" required="required"
									onkeypress="return onlyNumbers(event);" /><br /> <br />
							</div>
							<div class="form-group ">
								<strong>Note:</strong> <span>Rounding percentage, year of
									<br />pass and branch are required.
								</span>
							</div>
							<div class="form-group">
								<input type="number" min="0" max="99" name="ug_perc"
									class="form-control" id="ug_percid" placeholder="UG (%)"
									required="required"
									onkeyup="ug_perc1(document.fresh.ug_percid);"
									onkeypress="return onlyNumbers(event);" maxlength="2" /><span
									id="message10" style="color: red;"></span>
							</div>
							<div class="form-group ">
								<input type="number" min="2005" max="2016" name="ug_yop"
									class="form-control" id="ug_yopid"
									placeholder="UG Year of Pass" required="required"
									onkeypress="return onlyNumbers(event);" />
							</div>
							<div class="form-group ">
								<input type="text" name="branch_ug" class="form-control"
									id="branch_ugid" placeholder="Branch in UG" required="required"
									onkeypress="return onlyAlphabets(event);">
							</div>
							<br />
						</div>
					</div>
					<div class="span5">
						<fieldset>
							<br /> <br />
							<div class="form-group ">
								<strong>Note:</strong> <span>Mention if you attended any
									PG courses.<br /> If not leave this section.
								</span>
							</div>
							<div class="form-group">
								<input type="number" min="0" max="99" name="pg_perc"
									class="form-control" id="pg_percid" placeholder="PG (%)"
									onkeyup="pg_perc1(document.fresh.pg_percid);"
									onkeypress="return onlyNumbers(event);" maxlength="2" /><span
									id="message11" style="color: red;"></span>
							</div>
							<div class="form-group ">
								<input type="number" min="2010" max="2016" name="pg_yop"
									class="form-control" id="pg_yopid"
									placeholder="PG Year of Pass"
									onkeypress="return onlyNumbers(event);" />
							</div>
							<div class="form-group ">
								<input type="text" name="branch_pg" class="form-control"
									id="branch_pgid" placeholder="Branch in PG"
									onkeypress="return onlyAlphabets(event);">
							</div>
							<br />
							<div class="form-group ">
								<strong>Note:</strong> <span>Latest updated resume
									required.</span>
							</div>
							<div class="form-group file_width">
								<label for="resumeid"><strong>Resume </strong> <span
									id="message12" style="color: red;"></span></label> <input type="file"
									id="resumeid" name="resume" required="required">
								<script type="text/javascript">
									/*For Resume*/
									var myfile = "";
									var message = document
											.getElementById('message12');
									$('#resumeid')
											.on(
													'change',
													function() {
														myfile = $(this).val();
														var ext = myfile.split(
																'.').pop();
														if (ext == "pdf"
																|| ext == "docx"
																|| ext == "doc") {
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

						</fieldset>
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