<%@ include file="header.jsp"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<section class="main-content">
	<div class="row">
		<div class="span12">
			<div class="row">
				<div class="span12">
					<h4 class="title">
						<span class="pull-left"><span class="text"><span
								class="line">Practice Paper <strong>Test Result</strong></span></span></span>
					</h4>
					<div id="myCarousel" class="myCarousel carousel slide">
						<div class="carousel-inner">
							<div class="active item">
								<ul class="thumbnails">
									<li class="span2"></li>
									<li class="span8">
										<div class="product-box">
											<span class="sale_tag"></span><br> <label
												style="font-size: 15px;"><strong>Result : <s:property
														value="#session.totalcorrectanswers" />/25
														<br> Result % : <s:property value="#session.percantage"/>
											</strong></label> <a href="testdetails"><button type="button"
													class="btn btn-danger">Click here to attend
													another test</button></a>
										</div>
									</li>

								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
			<br /> <br>
		</div>
	</div>
</section>

<jsp:include page="footer.jsp" />