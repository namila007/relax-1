<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html lang="en">
<head>
<s:include value="/WEB-INF/content/common/meta-tags.jsp"></s:include>
<title><s:text name="global.application.title" /></title>
<s:include value="/WEB-INF/content/common/css-include.jsp"></s:include>
</head>

<body class="nav-md">
	<div class="container body">
		<div class="main_container">

			<s:include value="/WEB-INF/content/common/title-bar.jsp"></s:include>
			<s:include value="/WEB-INF/content/common/top-bar.jsp"></s:include>

			<!-- page content -->
			<div class="right_col" role="main">
				<h4>Patient Registration</h4>

				<s:form namespace="/patient" action="save" method="post">

					<div>

						<!-- <div class="form-group">
							<div class="row">
								<div class="col-xs-9">
									<label for="serialNumber">Serial Number:</label>
								</div>
								<div class="col-xs-3">
									<input type="text" class="form-control" id="name" name="serial"
										placeholder="20170312345">
								</div>
							</div>

						</div> -->



						<!--  -->
						<div class="form-group">
							<div class="row">
								<div class="col-xs-2">
									<label for="name">Patient Name:</label>
								</div>
								<div class="col-xs-1">
									<select class="form-control" name="title">
										<option value="Mr" selected>Mr.</option>
										<option value="Ms">Ms.</option>
										<option value="Rev">Rev.</option>
									</select>
								</div>
								<div class="col-xs-3">
									<input type="text" class="form-control" id="name"
										name="surName" placeholder="Surname">
								</div>
								<div class="col-xs-2">
									<input type="text" class="form-control" id="name"
										name="initials" placeholder="Initials">
								</div>
								<div class="col-xs-3">
									<input type="text" class="form-control" id="name"
										name="firstName" placeholder="First name">
								</div>
							</div>
						</div>
						<!--  -->


						<div class="form-group">
							<div class="row">

								<div class="col-xs-1">
									<label for="checkbox">Child</label> <input type="checkbox"
										name="child" class="checkbox-inline" id="check_child"
										value="child">
								</div>

								<div class="col-xs-1">
									<label for="serialNumber">NIC No.:</label>
								</div>
								<div class="col-xs-2">
									<input type="text" class="form-control" id="nic" name="nic"
										placeholder="">
								</div>

							</div>

						</div>
						<script>
							document.getElementById('check_child').onchange = function() {
								document.getElementById('nic').disabled = this.checked;
							};
						</script>

						<div class="form-group">
							<div class="row">
								<div class="col-xs-2">
									<label for="birthDay">Date of Birth:</label>
								</div>
								<div class="col-xs-2">
									<input type="date" class="form-control" id="bday"
										name="birthday">
								</div>
								<div class="col-xs-5"></div>
							</div>
						</div>

						<div class="form-group">
							<div class="row">
								<div class="col-xs-2">
									<label for="sex">Sex: </label>
								</div>
								<div class="col-xs-4">
									<div class="form-control">
										<label class="radio-inline"><input type="radio"
											name="male">Male</label> <label class="radio-inline"><input
											type="radio" name="female">Female</label> <label
											class="radio-inline"><input type="radio" name="other">Other</label>
									</div>
								</div>
								<div class="col-xs-6"></div>
							</div>
						</div>

						<div class="form-group">
							<div class="row">
								<div class="col-xs-2">
									<label for="ethnicity">Ethnicity: </label>
								</div>

								<div class="col-xs-2">
									<select class="form-control">
										<option value="Sinhala" selected>Sinhala</option>
										<option value="Tamil">Tamil</option>
										<option value="Muslim">Muslim</option>
										<option value="Other">Other</option>
									</select>
								</div>

								<div class="col-xs-1">
									<label for="district">District:</label>
								</div>
								<div class="col-xs-2">
									<input type="text" class="form-control" id="district_id"
										name="district" list="districtList">
									<datalist id="districtList">
										<label for="districtList"> or pick a districtList </label>
										<select id="suggestion" name="altDistrict">
											<option>Ampara</option>
											<option>Anuradhapura</option>
											<option>Badulla</option>
											<option>Batticaloa</option>
											<option>Colombo</option>
											<option>Galle</option>
											<option>Gampaha</option>
											<option>Hambantota</option>
											<option>Jaffna</option>
											<option>Kalutara</option>
											<option>Kandy</option>
											<option>Kegalle</option>
											<option>Kilinochchi</option>
											<option>Kurunegala</option>
											<option>Mannar</option>
											<option>Matale</option>
											<option>Matara</option>
											<option>Moneragala</option>
											<option>Mullaitivu</option>
											<option>Nuwara Eliya</option>
											<option>Polonnaruwa</option>
											<option>Puttalam</option>
											<option>Ratnapura</option>
											<option>Trincomalee</option>
											<option>Vavuniya</option>
										</select>
									</datalist>
								</div>
							</div>
						</div>




						<div class="form-group">
							<div class="row">
								<div class="col-xs-2">
									<label for="country">Country: </label>
								</div>
								<div class="col-xs-2">
									<select class="form-control">
										<option value="Sri Lankan" selected>Sri Lankan</option>
										<option value="Non Sri Lankan">Non Sri Lankan</option>
									</select>
								</div>
								<div class="col-xs-6"></div>
							</div>
						</div>
						<br>
						<div class="form-group">
							<div class="row">
								<div class="col-xs-2">
									<label for="phone">Phone number:</label>
								</div>
								<div class="col-xs-2">
									<input type="text" class="form-control" id="phoneNo"
										name="patient_phoneNo">
								</div>
								<div class="col-xs-1">
									<label for="mail">E-mail:</label>
								</div>
								<div class="col-xs-3">
									<input type="email" class="form-control" id="mail"
										name="patient_mail">
								</div>
							</div>
						</div>

						<div class="form-group">
							<div class="row">
								<div class="col-xs-2">
									<label for="address">Address:</label>
								</div>
								<div class="col-xs-4">
									<textarea class="form-control" id="address"
										name="patient_address"></textarea>
								</div>
								<div class="col-xs-6"></div>
							</div>
						</div>

						<br>
						<div class="form-group">
							<div class="row">
								<div class="col-xs-2"></div>
								<div class="col-xs-4">
									<s:submit cssClass="btn btn-success" label="Submit"></s:submit>
								</div>
								<div class="col-xs-6"></div>
							</div>
						</div>
					</div>

				</s:form>

			</div>
			<!-- /page content -->

		</div>
	</div>

	<!-- Custom Theme Scripts -->
	<s:include value="/WEB-INF/content/common/js-include.jsp"></s:include>
</body>
</html>
