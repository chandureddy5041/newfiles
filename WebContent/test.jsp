<jsp:include page="header.jsp"></jsp:include>
<%@ taglib uri="/struts-tags" prefix="s"%>
<style>
.pp {
	font-size: 15px;
}
</style>

<section class="main-content">
	<div class="row">
		<div class="span12">
			<div class="row">
				<div class="span12">
					<h4 class="title">
						<span class="pull-left"><span class="text"><span
								class="line">Online <strong>Test</strong></span></span></span>
					</h4>
					<div id="myCarousel-2" class="myCarousel carousel slide">
						<div class="carousel-inner">
							<div class="active item">
								<ul class="thumbnails">
									<li class="span3"></li>
									<li class="span6">
										<div class="product-box">
											<span class="sale_tag"></span>
											<p style="font-size: 13px;">
												The rules to be followed while attending the test are as
												below : <br>

												<ul
												style="list-style: none;">
												<li>1. The total number of questions are 60.</li>
												<li>2. There is <strong>no negative marking.</strong></li>
												<li>3. For 60 questions, total time provided is 60
													minutes.</li>
											</ul>
											<br>
											<s:if test="#session.username!=null">
											<a href="onlinetestregister"><button
													type="button" class="btn btn-danger">Next</button></a>
											</s:if>
											<s:else>
											<a href="loginregistration"><button
													type="button" class="btn btn-danger">Login to Continue</button></a>
											</s:else>
										</div>
									</li>

								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
			<br>

			<div class="row">
				<div class="span12">
					<h4 class="title">
						<span class="pull-left"><span class="text"><span
								class="line">Practice <strong>Paper</strong></span></span></span>
					</h4>
					<div id="myCarousel" class="myCarousel carousel slide">
						<div class="carousel-inner">
							<div class="active item">
								<ul class="thumbnails">
									<li class="span3"></li>
									<li class="span6">
										<div class="product-box">
											<span class="sale_tag"></span>
											<ul class="pp" style="list-style: none;">
												<strong> <s:iterator value="allsubjects">
												<li><a href="practicesubject?sub=<s:property />"><s:property /></a></li>
												</s:iterator>
												</strong>
											</ul>
										</div>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
			<br />
		</div>

	</div>
</section>
<jsp:include page="footer.jsp"></jsp:include>