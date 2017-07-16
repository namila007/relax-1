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
				<s:include value="/WEB-INF/content/patient/header.jsp"></s:include>
				<h3>Patient Registration summary</h3>
				<section>


					<div class="form-group">
						<div class="row">
							<div class="col-xs-2">
								<label for="name">Patient Name:</label>
							</div>
							<div class="col-xs-6">
								<s:property value="%{patient.title}"/>  <s:property value="%{patient.firstName}"/> <s:property value="%{patient.surname}"/>
							</div>

						</div>
					</div>


					<div class="form-group">
						<div class="row">
							<div class="col-xs-2">
								<label for="nic">NIC number:</label>
							</div>
							<div class="col-xs-6"><s:property value="%{patient.nic}"/></div>

						</div>
					</div>

					<div class="form-group">
						<div class="row">
							<div class="col-xs-2">
								<label for="name">Date of Birth:</label>
							</div>
							<div class="col-xs-6"><s:date name="%{patient.dateOfBirth}" format="yyyy-MM-dd"/></div>

						</div>
					</div>

					<div class="form-group">
						<div class="row">
							<div class="col-xs-2">
								<label for="name">Sex:</label>
							</div>
							<div class="col-xs-6"><s:property value="%{patient.sex}"/> </div>

						</div>
					</div>

					<div class="form-group">
						<div class="row">
							<div class="col-xs-2">
								<label for="ethnicity">Ethnicity:</label>
							</div>
							<div class="col-xs-6"><s:property value="%{patient.ethnicity}"/> </div>

						</div>
					</div>

					<div class="form-group">
						<div class="row">
							<div class="col-xs-2">
								<label for="district">District:</label>
							</div>
							<div class="col-xs-6"><s:property value="%{patient.getDistrictId()}"/></div>

						</div>
					</div>

					<div class="form-group">
						<div class="row">
							<div class="col-xs-2">
								<label for="country">Country:</label>
							</div>
							<div class="col-xs-6"><s:property value="%{patient.getCountry()}"/></div>

						</div>
					</div>

					<div class="form-group">
						<div class="row">
							<div class="col-xs-2">
								<label for="phoneNumber">Phone number:</label>
							</div>
							<div class="col-xs-6"><s:property value="%{patient.mobile}"/></div>

						</div>
					</div>
					
					<div class="form-group">
						<div class="row">
							<div class="col-xs-2">
								<label for="email">E-mail:</label>
							</div>
							<div class="col-xs-6"><s:property value="%{patient.email}"/></div>

						</div>
					</div>					
					
					<div class="form-group">
						<div class="row">
							<div class="col-xs-2">
								<label for="address">Address:</label>
							</div>
							<div class="col-xs-6"><s:property value="%{patient.address}"/></div>

						</div>
					</div>						

					<div class="form-group">
						<div class="row">
							<div class="col-xs-2">
								<label for="referral">Referral:</label>
							</div>
							<div class="col-xs-6"><s:property value="%{patient.referral}"/></div>

						</div>
					</div>
					
					<br>
					<div class="form-group">
						<div class="row">
							<div class="col-xs-2"></div>
							<div class="col-xs-1">
								<s:submit cssClass="btn btn-success" value="Print"></s:submit>
							</div>
							<div class="col-xs-1">
								<s:submit cssClass="btn btn-success" value="Edit"></s:submit>							
							</div>
						</div>
					</div>					
					
					
					
				</section>
	

			</div>
			<!-- /page content -->

		</div>
	</div>

	<!-- Custom Theme Scripts -->
	<s:include value="/WEB-INF/content/common/js-include.jsp"></s:include>
	
	
</body>
</html>
