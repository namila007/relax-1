
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
<link href="<s:url value="/css/diagnostic.css" includeParams="none"/>"
	rel="stylesheet" type="text/css">
<link href="<s:url value="/css/menubar.css" includeParams="none"/>"
	rel="stylesheet" type="text/css">

<script>
	function openCity(evt, cityName) {
		var i, tabcontent, tablinks;
		tabcontent = document.getElementsByClassName("tabcontent");
		for (i = 0; i < tabcontent.length; i++) {
			tabcontent[i].style.display = "none";
		}
		tablinks = document.getElementsByClassName("tablinks");
		for (i = 0; i < tablinks.length; i++) {
			tablinks[i].className = tablinks[i].className
					.replace(" active", "");
		}
		document.getElementById(cityName).style.display = "block";
		evt.currentTarget.className += " active";
	}
</script>

</head>

<body class="nav-md">
	<div class="container body">
		<div class="main_container">

			<s:include value="/WEB-INF/content/common/title-bar.jsp"></s:include>
			<s:include value="/WEB-INF/content/common/top-bar.jsp"></s:include>

			<div class="row"></div>

			<!-- page content -->
			<div class="right_col" role="main" style="margin-bottom: 40px;">

				<s:include
					value="/WEB-INF/content/patient/diagnostic/common/navbar.jsp"></s:include>
				<div class="container-fluid"
					style="overflow-y: scroll; height: 500px;">
					<div class="container-fluid">
						<form class="form-horizontal" action="/action_page.php">
							<div class="form-group">


								<label class="col-sm-2 control-label">Anticoagulants</label>
								<div class="col-sm-10"
									style="padding: 20px; padding-top: 0px !important;">

									<div class="row top-space">
										<div class="checkbox col-sm-2">
											<label><input type="checkbox" name="remember">Warfarin</label>
										</div>
										<div class="col-sm-5">
											<input class="form-control full-width" type="text"
												name="Dose_Warfarin" placeholder="Dose Regime">
										</div>
										<div class="col-sm-3">
											<input class="form-control full-width" type="text"
												name="Duration_Warfarin" placeholder="Duration">
										</div>
											<div class="col-sm-2">
											<select>
 										<option value="days">days</option>
 									<option value="weeks">weeks</option>
									<option value="months">months</option>
									<option value="years">years</option>
								</select>
								</div>
									</div>

									<div class="row top-space">
										<div class="checkbox col-sm-2">
											<label><input type="checkbox" name="Clopidogrel"
												value="Clopidogrel">Clopidogrel</label>
										</div>
										<div class="col-sm-5">
											<input class="form-control full-width" type="text"
												name="Dose_Clopidogrel" placeholder="Dose Regime">
										</div>
										<div class="col-sm-3">
											<input class="form-control full-width" type="text"
												name="Duration_Clopidogrel" placeholder="Duration">
										</div>
										<div class="col-sm-2">
											<select>
 										<option value="days">days</option>
 									<option value="weeks">weeks</option>
									<option value="months">months</option>
									<option value="years">years</option>
								</select>
								</div>
									</div>

									<div class="row top-space">
										<div class="checkbox col-sm-2">
											<label><input type="checkbox" name="Aspirin"
												value="Aspirin">Aspirin</label>
										</div>
										<div class="col-sm-5">
											<input class="form-control full-width" type="text"
												name="Dose_Aspirin" placeholder="Dose Regime">
										</div>
										<div class="col-sm-3">
											<input class="form-control full-width" type="text"
												name="Duration_Aspirin" placeholder="Duration">
										</div>
										<div class="col-sm-2">
											<select>
 										<option value="days">days</option>
 									<option value="weeks">weeks</option>
									<option value="months">months</option>
									<option value="years">years</option>
								</select>
								</div>
									</div>

									<div class="row top-space">
										<div class="checkbox col-sm-2">
											<label><input type="checkbox" name="Other"
												value="Other">Other</label>
										</div>
										<div class="col-sm-3">
											<input class="form-control full-width" type="text"
												name="Dose_Other" placeholder="Dose Regime">
										</div>
										<div class="col-sm-3">
											<input class="form-control full-width" type="text"
												name="Duration_Other" placeholder="Duration">
										</div>
										<div class="col-sm-4">
											<input class="form-control full-width" name="Comments"
												placeholder="Type if any other comments">
										</div>
									</div>
								</div>
							</div>

							<div class="form-group">

								<label class="col-sm-2 control-label">Antidiabetes</label>
								<div class=" col-sm-10 container-fluid">
									<div class="col-sm-4">
										<input class="form-control full-width" type="text"
											name="Antidiabetes" placeholder="Antidiabetes">
									</div>
									<div class="col-sm-4">
										<input class="form-control full-width" type="text"
											name="Dose_Antidiabetes" placeholder="Dose Regime">
									</div>
									<div class="col-sm-2">
										<input class="form-control full-width" type="text"
											name="Duration_Antidiabetes" placeholder="Duration">
									</div>
									<div class="col-sm-2">
											<select>
 										<option value="days">days</option>
 									<option value="weeks">weeks</option>
									<option value="months">months</option>
									<option value="years">years</option>
								</select>
								</div>
								</div>

							</div>

							<div class="form-group">

								<label class="col-sm-2 control-label">Anti Epileptic</label>
								<div class=" col-sm-10 container-fluid">
									<div class="col-sm-4">
										<input class="form-control full-width" type="text"
											name="Anti Epileptic" placeholder="Anti Epileptic">
									</div>
									<div class="col-sm-4">
										<input class="form-control full-width" type="text"
											name="Dose_AntiEpileptic" placeholder="Dose Regime">
									</div>
									<div class="col-sm-2">
										<input class="form-control full-width" type="text"
											name="Duration_AntiEpileptic" placeholder="Duration">
									</div>
									<div class="col-sm-2">
											<select>
 										<option value="days">days</option>
 									<option value="weeks">weeks</option>
									<option value="months">months</option>
									<option value="years">years</option>
								</select>
								</div>
								</div>

							</div>

							<div class="form-group">

								<label class="col-sm-2 control-label">Antihypertensives</label>
								<div class=" col-sm-10 container-fluid">
									<div class="col-sm-4">
										<input class="form-control full-width" type="text"
											name="Antihypertensivesc" placeholder="Antihypertensivesc">
									</div>
									<div class="col-sm-4">
										<input class="form-control full-width" type="text"
											name="Dose_Antihypertensives" placeholder="Dose Regime">
									</div>
									<div class="col-sm-2">
										<input class="form-control full-width" type="text"
											name="Duration_Antihypertensives" placeholder="Duration">
									</div>
									<div class="col-sm-2">
											<select>
 										<option value="days">days</option>
 									<option value="weeks">weeks</option>
									<option value="months">months</option>
									<option value="years">years</option>
								</select>
								</div>
								</div>

							</div>

							<div class="form-group">

								<label class="col-sm-2 control-label">NSAIDS</label>
								<div class=" col-sm-10 container-fluid">
									<div class="col-sm-4">
										<input class="form-control full-width" type="text"
											name="NSAIDS" placeholder="NSAIDS">
									</div>
									<div class="col-sm-4">
										<input class="form-control full-width" type="text"
											name="Dose_NSAIDS" placeholder="Dose Regime">
									</div>
									<div class="col-sm-2">
										<input class="form-control full-width" type="text"
											name="Duration_NSAIDS" placeholder="Duration">
									</div>
									<div class="col-sm-2">
											<select>
 										<option value="days">days</option>
 									<option value="weeks">weeks</option>
									<option value="months">months</option>
									<option value="years">years</option>
								</select>
								</div>
								</div>

							</div>

							<div class="form-group">

								<label class="col-sm-2 control-label">Steroids</label>
								<div class=" col-sm-10 container-fluid">
									<div class="col-sm-4">
										<input class="form-control full-width" type="text"
											name="Steroids " placeholder="Steroids ">
									</div>
									<div class="col-sm-4">
										<input class="form-control full-width" type="text"
											name="Dose_Steroids " placeholder="Dose Regime">
									</div>
									<div class="col-sm-2">
										<input class="form-control full-width" type="text"
											name="Duration_Steroids " placeholder="Duration">
									</div>
									<div class="col-sm-2">
											<select>
 										<option value="days">days</option>
 									<option value="weeks">weeks</option>
									<option value="months">months</option>
									<option value="years">years</option>
								</select>
								</div>
								</div>

							</div>

							<div class="form-group">

								<label class="col-sm-2 control-label">Chemotherapy</label>
								<div class=" col-sm-10 container-fluid">
									<div class="col-sm-4">
										<input class="form-control full-width" type="text"
											name="Chemotherapy  " placeholder="Chemotherapy  ">
									</div>
									<div class="col-sm-4">
										<input class="form-control full-width" type="text"
											name="Dose_Chemotherapy  " placeholder="Dose Regime">
									</div>
									<div class="col-sm-2">
										<input class="form-control full-width" type="text"
											name="Duration_Chemotherapy  " placeholder="Duration">
									</div>
									<div class="col-sm-2">
											<select>
 										<option value="days">days</option>
 									<option value="weeks">weeks</option>
									<option value="months">months</option>
									<option value="years">years</option>
								</select>
								</div>
								</div>

							</div>

							<div class="form-group">

								<label class="col-sm-2 control-label">Radiation therapy</label>
								<div class=" col-sm-10 container-fluid">
									<div class="col-sm-3">
										<input class="form-control full-width" type="text"
											name="Duration_RadiationTherapy  " placeholder="Duration">
									</div>
									<div class="col-sm-2">
											<select>
 										<option value="days">days</option>
 									<option value="weeks">weeks</option>
									<option value="months">months</option>
									<option value="years">years</option>
								</select>
								</div>
								</div>

							</div>

							<div class="form-group">

								<label class="col-sm-2 control-label">Others</label>
								<div class=" col-sm-10 container-fluid">
									<div class="col-sm-4">
										<input class="form-control full-width" type="text"
											name="Others" placeholder="Type if any other details">
									</div>
								</div>

							</div>
							<div class="fixed-bottom">
								<div class="col-sm-1">
									<s:url var="dietary_history" action="dietary_history"
										namespace="/patient"></s:url>
									<s:a href="%{#dietary_history}">
										<button id="next-btn" type="button"
											class="btn btn-success btn-lg pull-right  prabha-transform">Previous</button>
								</div>
								</s:a>
								<div class="col-sm-10"></div>
								<s:url var="complaint" action="complaint" namespace="/patient"></s:url>
								<s:a href="%{#complaint}">
									<button id="next-btn" type="button"
										class="btn btn-success btn-lg pull-right  prabha-transform">Next</button>
								</s:a>

							</div>





						</form>
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


