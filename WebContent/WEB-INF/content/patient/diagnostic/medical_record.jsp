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
	window.onload = function() {
		startTab();
	};

	function startTab() {
		document.getElementById("defaultOpen").click();

	}
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

				<div class="container">

					<div class="tab">
						<button class="tablinks" onclick="openCity(event, 'London')"
							id="defaultOpen">FirstPage</button>
						<button class="tablinks" onclick="openCity(event, 'Paris')">SecondPage</button>
						<button class="tablinks" onclick="openCity(event, 'Tokyo')">ThirdPage</button>
						<button class="tablinks" onclick="openCity(event, 'Fourth')">FourthPage</button>
					</div>

					<div id="London" class="tabcontent"
						style="overflow-y: scroll; height: 500px;">
						<div class="container form-horizontal">
							<div class="form-group">
								<label class="control-label col-sm-1">Allergies</label>

								<div class="col-sm-11">
									<div class="form-group col-sm-12">
										<label class="control-label col-sm-2">Drug</label>

										<div class="col-sm-10 col-lg-6 nopad">
											<div class="checkbox">
												<label><input type="checkbox"
													name="Penicillin/Amoxicillin"
													value="Penicillin/Amoxicillin">Penicillin /
													Amoxicillin</label>
											</div>
											<div class="checkbox">
												<label><input type="checkbox" name="Paracetamol"
													value="Paracetamol"> Paracetamol</label>
											</div>
											<div class="checkbox">
												<label><input type="checkbox" name="NSAIDS"
													value="NSAIDS"> NSAIDS</label>
											</div>
											<div class="checkbox">
												<label><input type="checkbox" name="Aspirin"
													value="Aspirin"> Aspirin</label>
											</div>
											<input type="text" class="form-control" id="usr0"
												placeholder="Other"">
										</div>
									</div>

									<div class="form-group col-sm-12 ">
										<label class="col-sm-2 control-label">Food</label>

										<div class="col-sm-10 col-lg-6 nopad">
											<div class="checkbox">
												<label><input type="checkbox"
													name="Pineapple value="Pineapple">Pineapple</label>
											</div>
											<div class="checkbox">
												<label><input type="checkbox" name="Tomatoes value="Tomatoes">Tomatoes</label>
											</div>
											<div class="checkbox">
												<label><input type="checkbox" name="Canned fish"
													value="Canned fish">Canned fish</label>
											</div>
											<div class="nopad">
												<input type="text" class="form-control" id="usr1"
													placeholder="Other">
											</div>
										</div>
									</div>

									<div class="form-group col-sm-12">
										<label class="control-label col-sm-2">Latex/Rubber</label>

										<div class="col-sm-10 col-lg-6 nopad">
											<input type="text" class="form-control" id="usr2"
												placeholder="Other">
										</div>
									</div>

									<div class="form-group col-sm-12">
										<label class="control-label col-sm-2">Other</label>

										<div class="col-sm-10 col-lg-6 nopad">
											<input type="text" class="form-control" id="usr3"
												placeholder="Other">
										</div>
									</div>

								</div>
							</div>

							<div class="form-group">
								<label class="control-label col-sm-1">Anaemia</label>

								<div class="col-sm-10  col-lg-6 nopad">
									<input type="text" class="form-control" id="usr3"
										placeholder="Other">
								</div>
							</div>
						</div>

					</div>


					<div id="Paris" class="tabcontent" class="tabcontent"
						style="overflow-y: scroll; height: 500px;">
						<div class="container form-horizontal">
							<div class="form-group">

								<label class="col-sm-1 control-label">Athsma</label>
								<div class="col-sm-10 container-fluid col-lg-6 col-sm-12">
									<input type="text" class="form-control" id="usr3"
										placeholder="Type here">
								</div>
							</div>

							<div class="form-group">

								<label class=" col-sm-1 control-label">Bleeding
									Disorders</label>
								<div class="col-sm-10 container-fluid">
									<div class="checkbox">
										<label><input type="checkbox" name="Haemophilia"
											value="">Haemophilia</label>
									</div>
								</div>
							</div>

							<div class="form-group">

								<label class=" col-sm-1 control-label">Cardiac Disorders</label>
								<div class="col-sm-10 container-fluid">
									<div class="checkbox">
										<label><input type="checkbox" name="Angina" value="">Angina</label>
									</div>

									<div class="container">

										<div class="form-group">
											<label class="control-label col-sm-2">Valvular
												problems</label>
											<div class="col-sm-10">
												<div class="container col-sm-4">
													<label class="control-label">Indication for SABE
														prophylaxis</label>
												</div>
												<div class="col-sm-4">

													<div class="radio-inline radio-info">
														<label><input type="radio" name="optradio4">Yes
														</label>
													</div>

													<div class="radio-inline radio-info">
														<label><input type="radio" name="optradio4">No
														</label>
													</div>
												</div>
											</div>
										</div>

										<div class="form-group">
											<label class="control-label col-sm-2">Rheumatic
												carditis</label>
											<div class="col-sm-10">
												<div class="container col-sm-4">
													<label class="control-label">Regular Oral
														penicillin?</label>
												</div>
												<div class="col-sm-4">

													<div class="radio-inline radio-info">
														<label><input type="radio" name="optradio5">Yes
														</label>
													</div>

													<div class="radio-inline radio-info">
														<label><input type="radio" name="optradio5">No
														</label>
													</div>
												</div>
											</div>
										</div>

										<div class="form-group">
											<label class="control-label col-sm-2">Prosthetic
												heart valve</label>
											<div class="col-sm-10">
												<div class="col-sm-10 container col-lg-6 col-sm-12">
													<input type="text" class="form-control" id="usr3"
														placeholder="Type here">
												</div>
											</div>
										</div>

										<div class="form-group">
											<label class="control-label col-sm-2">Pacemaker</label>
											<div class="col-sm-10">
												<div class="col-sm-10 container col-lg-6 col-sm-12">
													<input type="text" class="form-control" id="Pacemaker"
														placeholder="Type here">
												</div>
											</div>
										</div>

										<div class="form-group">
											<label class="control-label col-sm-2">Other</label>
											<div class="col-sm-10">
												<div class="col-sm-10 container col-lg-6 col-sm-12">
													<input type="text" class="form-control" id="Other"
														placeholder="Type here">
												</div>
											</div>
										</div>

									</div>
								</div>
							</div>
						</div>

					</div>


					<div id="Tokyo" class="tabcontent" class="tabcontent" style="">
						<div class="container-fluid"
							style="overflow-y: scroll; height: 400px;">
							<div class="container form-horizontal">

								<div class="form-group">

									<label class="control-label col-sm-2">Developmental</label>
									<div class="col-sm-10 container-fluid">
										<div class="checkbox">
											<label><input type="checkbox" name="Cleft Lip/Palate">Cleft
												Lip/Palate</label>
										</div>
										<div class="checkbox">
											<label><input type="checkbox" name="Cerebral Palsy">Cerebral
												Palsy</label>
										</div>
										<div class="checkbox">
											<label><input type="checkbox" name="Syndromic">Syndromic</label>
										</div>
									</div>
								</div>

								<div class="form-group">

									<label class="control-label col-sm-2">Epilepsy</label>
								</div>

								<div class="form-group">

									<label class="control-label col-sm-2">Endocrine</label>
									<div class="col-sm-10 col-lg-6 container-fluid">
										<div class="checkbox">
											<label><input type="checkbox" name="Diabetes">Diabetes</label>
										</div>
										<div class="checkbox">
											<label><input type="checkbox" name="Hypothyroidism">Hypothyroidism</label>
										</div>
										<div class="checkbox">
											<label><input type="checkbox" name="Hyperthyroidism">Hyperthyroidism</label>
										</div>
										<div class="checkbox">
											<label><input type="checkbox" name="Endocrine-other">Other</label><input
												class="form-control col-lg-6 col-sm-12" type="text"
												name="Endocrine-other-text">
										</div>
									</div>
								</div>

								<div class="form-group">

									<label class="control-label col-sm-2">Gastro-intestinal</label>
									<div class="col-sm-10 col-lg-6 container-fluid">
										<div class="checkbox">
											<label><input type="checkbox" name="Ulcers">Ulcers</label>
										</div>
										<div class="checkbox">
											<label><input type="checkbox" name="Gastric reflux">Gastric
												reflux</label>
										</div>
										<div class="checkbox">
											<label><input type="checkbox" name="Endocrine-other">Other</label><input
												class="form-control col-lg-6 col-sm-12" type="text"
												name="Endocrine-other-text">
										</div>
									</div>
								</div>

								<div class="form-group">

									<label class="control-label col-sm-2">Hepatitis</label>
									<div class="col-sm-10 col-lg-6 container-fluid">
										<div class="checkbox">
											<label><input type="checkbox" name="HepA">Hep
												A</label>
										</div>
										<div class="checkbox">
											<label><input type="checkbox" name="HepB">Hep
												B</label>
										</div>
										<div class="checkbox">
											<label><input type="checkbox" name="HepC">Hep
												C</label>
										</div>
										<div class="checkbox">
											<label><input type="checkbox" name="Hepatitis-other">Other</label>
										</div>
									</div>
								</div>

								<div class="form-group">

									<label class="control-label col-sm-2">Musculo-skeletal</label>
									<div class="col-sm-10 col-lg-6 container-fluid">
										<div class="checkbox">
											<label><input type="checkbox" name="Arthritis">Arthritis</label>
										</div>
										<div class="checkbox">
											<label><input type="checkbox"
												name="Joint-replacement">Joint replacement</label>
										</div>
										<div class="checkbox">
											<label><input type="checkbox" name="HepC">Hep
												C</label>
										</div>
										<div class="checkbox">
											<label><input type="checkbox"
												name="Musculo-skeletal-Other">Other</label>
										</div>
									</div>
								</div>

								<div class="form-group">

									<label class="control-label col-sm-2"></label>
									<div class="col-sm-10 col-lg-6 container-fluid">
										<div class="checkbox">
											<label><input type="checkbox" name="HIV">HIV</label>
										</div>
										<div class="checkbox">
											<label><input type="checkbox" name="Hypertension">Hypertension</label>
										</div>
										<div class="checkbox">
											<label><input type="checkbox" name="Other">Other</label>
										</div>
									</div>
								</div>
							</div>

						</div>
					</div>
					<div id="Fourth" class="tabcontent" class="tabcontent" style="">
						<div class="container form-horizontal">

							<div class="col-sm-6">

								<div class="row">

									<div class="col-sm-5 col-xs-12 ">
										<label>Neurological Disorders</label>
									</div>

									<div class="col-sm-7 col-xs-12">
										<div class="col-sm-12 col-xs-12">
											<div class="checkbox">
												<label><input type="checkbox" value="">Migraine</label>
											</div>
										</div>
										<div class="col-sm-12 col-xs-12">
											<div class="checkbox">
												<label><input type="checkbox" value="">Neuralgic
													Pain</label>
											</div>
										</div>
									</div>
								</div>

								<div class="row">

									<div class="col-sm-4 col-xs-12 ">
										<div class="col-sm-12 col-xs-12">
											<label class="checkbox"><input type="checkbox"
												value="">
												<p>Psychiatric/Behavioral disorders</p></label>
										</div>
										<div class="col-sm-12 col-xs-12">
											<label class="checkbox"><input type="checkbox"
												value="">
												<p>TMD</p></label>
										</div>
									</div>

									<div class="col-sm-8 col-xs-12"></div>


								</div>

							</div>

							<div class="col-sm-6">

								<div class="row">

									<div class="col-sm-4 col-xs-12">
										<label>Renal Disorders </label>
									</div>

									<div class="col-sm-8 col-xs-12">
										<div class="col-sm-12 col-xs-12">
											<div class="checkbox">
												<label><input type="checkbox" value="">Chronic
													infections</label>
											</div>
										</div>
										<div class="col-sm-12 col-xs-12">
											<div class="checkbox">
												<label><input type="checkbox" value="">Kidney
													failure</label>
											</div>
										</div>
										<div class="col-sm-12 col-xs-12">
											<div class="checkbox">
												<label><input type="checkbox" value="">Transplant</label>
											</div>
										</div>
										<div class="col-sm-12 col-xs-12">
											<div class="checkbox">
												<label>Other</label>
											</div>
											<input type="text" style="width: 100%">
										</div>
									</div>

								</div>


								<div class="row">

									<div class="col-sm-5 col-xs-12 ">
										<label>Pregnancy</label>
									</div>

									<div class="col-sm-7 col-xs-12">
										<div class="col-sm-12 col-xs-12">
											<div class="checkbox">
												<label><input type="checkbox" value="">1st
													Trimester</label>
											</div>
										</div>
										<div class="col-sm-12 col-xs-12">
											<div class="checkbox">
												<label><input type="checkbox" value="">2nd
													Trimester</label>
											</div>
										</div>
										<div class="col-sm-12 col-xs-12">
											<div class="checkbox">
												<label><input type="checkbox" value="">3rd
													Trimester</label>
											</div>
										</div>
									</div>

									<div class="row">

										<div class="col-sm-5 col-xs-12 ">
											<label>On hormonal contraceptives</label>
										</div>
										<div class="col-sm-4">
											<div class="col-sm-12 col-xs-12">
												<div class="checkbox">
													<label><input type="checkbox" value="">Pills</label>
												</div>
											</div>
											<div class="col-sm-12 col-xs-12">
												<div class="checkbox">
													<label><input type="checkbox" value="">Injections</label>
												</div>
											</div>
											<div class="col-sm-12 col-xs-12">
												<div class="checkbox">
													<label><input type="checkbox" value="">Contraceptive
														implants
												</div>
											</div>
										</div>

									</div>
								</div>
							</div>
						</div>

						<div class="fixed-bottom">
							<div class="col-sm-1">
								<s:url var="complaint" action="complaint" namespace="/patient"></s:url>
								<s:a href="%{#complaint}">
									<button id="next-btn" type="button"
										class="btn btn-success btn-lg pull-right  prabha-transform">Previous</button>
							</div>
							</s:a>
							<div class="col-sm-10"></div>
							<s:url var="plaqueControl" action="plaque_control"
								namespace="/patient"></s:url>
							<s:a href="%{#plaqueControl}">
								<button id="next-btn" type="button"
									class="btn btn-success btn-lg pull-right  prabha-transform">Next</button>
							</s:a>

						</div>



					</div>
				</div>

			</div>




		</div>
	</div>
	</div>




	<s:include value="/WEB-INF/content/common/footer.jsp"></s:include>

	<!-- Custom Theme Scripts -->
	<s:include value="/WEB-INF/content/common/js-include.jsp"></s:include>

</body>
</html>


