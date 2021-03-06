<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html lang="en">

<head>
<link
	href="<s:url value="/css/dashboard-component.css" includeParams="none"/>"
	rel="stylesheet" type="text/css">

<s:include value="/WEB-INF/content/common/meta-tags.jsp"></s:include>
<title><s:text name="global.application.title" /></title>
<s:include value="/WEB-INF/content/common/css-include.jsp"></s:include>
<!-- custom css for diagnostic menu bar starts-->
<link href="<s:url value="/css/menubar.css" includeParams="none"/>"
	rel="stylesheet" type="text/css">
<!-- custom css for diagnostic menu bar ends-->
<style type="text/css">
#text {
	height: 150px;
}

#printbtn {
	width: 150px;
}

input[type=text] {
	padding-left: 8px;
	border-radius: 5px;
	border-color: black;
	border-width: 1px;
}
</style>
</head>

<body class="nav-md">
	<div class="container body">
		<div class="main_container">

			<s:include value="/WEB-INF/content/common/title-bar.jsp"></s:include>
			<s:include value="/WEB-INF/content/common/top-bar.jsp"></s:include>

			<div class="row"></div>

			<!-- page content -->
			<div class="addMenu">

				<div class="right_col" role="main" style="margin-bottom: 40px;">

					<s:include
						value="/WEB-INF/content/patient/diagnostic/common/navbar.jsp"></s:include>
					<div class="container">


						<div style="margin-top:50px;">
							<s:form  action="complaint.save" method="post" namespace="/patient">
								<div class="row">
								<div class="form-group">
									<label class="control-label col-sm-3 col-md-3" for="Complaint">Complaint:</label>
									<div class="col-sm-7 col-md-3">

										<s:textfield type="text" class="form-control" id="complaint"
													 placeholder="Complaint" name="complaint.complaint"/>
									</div>
								</div>
								</div>
								<div class="row">
								<div class="form-group">
									<label class="control-label col-sm-3 col-md-3" for="Type">Type:</label>
									<div class="col-sm-7 col-md-3">
										<s:textfield type="text" class="form-control" id="type"
													 placeholder="Type" name="complaint.type"/>
									</div>
								</div>
								</div>
								<div class="row">
								<div class="form-group">
									<label class="control-label col-sm-3 col-md-3" for="History">History
										of presenting complaint:</label>
									<div class="col-sm-7 col-md-7">
										<s:textfield type="text" class="form-control" id="complaintHistory"
													 placeholder="History of Complaint" name="complaint.complaintHistory"/>
									</div>
								</div>
								</div>
								<div class="row">
								<div class="col-md-3 col-sm-3 col-xs-12">
									<s:submit cssClass="btn btn-success" value="Save"/>
								</div>
								</div>
							</s:form>


						</div>
					</div>


				</div>
				<!-- /page content -->

			</div>
		</div>
	</div>
	<s:include value="/WEB-INF/content/common/footer.jsp"></s:include>
	<!-- Custom Theme Scripts -->
	<s:include value="/WEB-INF/content/common/js-include.jsp"></s:include>
</body>
</html>
