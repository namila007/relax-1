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

</head>

<body class="nav-md">
	<div class="container body">
		<div class="main_container">

			<s:include value="/WEB-INF/content/common/title-bar.jsp"></s:include>
			<s:include value="/WEB-INF/content/common/top-bar.jsp"></s:include>

			<div class="row"></div>

			<!-- page content -->
			<div class="addMenu">

				<div class="right_col" role="main">

					<s:include
						value="/WEB-INF/content/patient/diagnostic/common/navbar.jsp"></s:include>

					<div class="container">

						<div class="col-sm-6 col-xs-12">
							<div class="row">
								<div style="color: red; font-size: 20px;"
									class="col-sm-3 col-xs-12">Hepatitis</div>
								<div class="col-sm-2 col-xs-8">
									<div>Hep A</div>
									<div>Hep B</div>
									<div>Hep C</div>
									<div>Other</div>
								</div>
								<div class="col-sm-1 col-xs-4">
									<div>
										<input type="checkbox" value="">
									</div>
									<div>
										<input type="checkbox" value="">
									</div>
									<div>
										<input type="checkbox" value="">
									</div>
									<div>
										<input type="checkbox" value="">
									</div>
								</div>
							</div>

							<div class="row">
								<div class="col-sm-3 col-xs-8">
									<div>HIV</div>
									<div>Hypertension</div>
									<div>Liver Disorders</div>
								</div>
								<div class="col-sm-3 col-xs-4">
									<div>
										<input type="checkbox" value="">
									</div>
									<div>
										<input type="checkbox" value="">
									</div>
									<div>
										<input type="checkbox" value="">
									</div>
								</div>
							</div>

							<div class="row">
								<div style="color: red; font-size: 20px;"
									class="col-sm-3 col-xs-12">Musculo-skeletal</div>
								<div class="col-sm-2 col-xs-8">
									<div>Arthritis</div>
									<div>Joint replacement</div>
									<div>Other</div>
								</div>
								<div class="col-sm-1 col-xs-4">
									<div>
										<input type="checkbox" value="">
									</div>
									<div>
										<input type="checkbox" value="">
									</div>
									<div>
										<input type="checkbox" value="">
									</div>
								</div>
							</div>

						</div>

						<div class="col-sm-6 col-xs-12">

							<div class="row">
								<div style="color: red; font-size: 20px;"
									class="col-sm-3 col-xs-12">Neurological Disorders</div>
								<div class="col-sm-2 col-xs-8">
									<div>Migraine</div>
									<div>Neuralgic Pain</div>
								</div>
								<div class="col-sm-1 col-xs-4">
									<div>
										<input type="checkbox">
									</div>
									<div>
										<input type="checkbox">
									</div>
								</div>
							</div>

							<div class="row">
								<div class="col-sm-4 col-xs-10">Psychiatric/Behavioral
									disorders</div>
								<div class="col-sm-2 col-xs-2">
									<input type="checkbox">
								</div>
							</div>

							<div class="row">
								<div style="color: red; font-size: 20px;"
									class="col-sm-2 col-xs-12">Renal Disorders</div>
								<div class="col-sm-3 col-xs-8">
									<div>Chronic infections</div>
									<div>Kidney failure</div>
									<div>Transplant</div>
								</div>
								<div class="col-sm-1 col-xs-4">
									<div>
										<input type="checkbox">
									</div>
									<div>
										<input type="checkbox">
									</div>
									<div>
										<input type="checkbox">
									</div>
								</div>
							</div>

							<div class="row">
								<div class="col-sm-2"></div>
								<div class="col-sm-4">
									<textarea class="form-control"></textarea>
								</div>
							</div>

						</div>

					</div>

					<div class="col-sm-12">
						<div class="row">
							<div class="col-sm-6 col-xs-12">
								<s:url var="drughistory" action="drughistory"
									namespace="/patient"></s:url>
								<s:a href="%{#drughistory}">
									<button type="button" class="btn btn-primary"
										style="width: 100%; height: 50px; float: right;"
										class="btn btn-success">Back</button>
								</s:a>
							</div>
							<div class="col-sm-6 col-xs-12">
								<s:url var="drughistory3page" action="drughistory3page"
									namespace="/patient"></s:url>
								<s:a href="%{#drughistory3page}">
									<button type="button" class="btn btn-primary"
										style="width: 100%; height: 50px; float: right;"
										class="btn btn-success">Next</button>
								</s:a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- /page content -->

		</div>
	</div>

	<s:include value="/WEB-INF/content/common/footer.jsp"></s:include>
	<!-- Custom Theme Scripts -->
	<s:include value="/WEB-INF/content/common/js-include.jsp"></s:include>

</body>
</html>
