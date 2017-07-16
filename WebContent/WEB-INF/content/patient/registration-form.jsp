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

				<hr>

				<s:form namespace="/patient" action="registration-save" method="post">

					<div>
						<!-- panel start -->
							<div class="panel panel-default">
							  <div class="panel-heading">Patient Registration</div>
							  <div class="panel-body">
							  
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
										<div class="col-xs-12 col-md-2">
											<label for="name">Patient Name:</label>
										</div>
										<div class="col-xs-3 col-md-1">
											<s:select cssClass="form-control" name="patient.title" list="#{'Mr':'Mr.','Ms':'Ms'}"/>
												
										</div>
										<div class="col-xs-5 col-md-3">
											<input type="text" class="form-control" id="name"
												name="patient.surname" placeholder="Surname" required>
										</div>
										<div class="col-xs-6 col-md-2">
											<input type="text" class="form-control" id="name"
												name="patient.initials" placeholder="Initials" required>
										</div>
										<div class="col-xs-6 col-md-3">
											<input type="text" class="form-control" id="name"
												name="patient.firstName" placeholder="First name">
										</div>
									</div>
								</div>
								<!--  -->
		
		    
								<div class="form-group">
									<div class="row">
		
										<div class="col-xs-3 col-md-2">
											<label for="checkbox">Child</label> 
												<input type="checkbox"
												name="patient.child" class="checkbox-inline" id="check_child"
												value="child">
										</div>
		
										<div class="col-xs-3 col-md-1">
											<label for="serialNumber">NIC No.:</label>
										</div>
										<div class="col-xs-6 col-md-2">
											<input type="text" class="form-control" id="nic" name="patient.nic"
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
										<div class="col-xs-6 col-md-2">
											<label for="birthDay">Date of Birth:</label>
										</div>
										<div class="col-xs-6 col-md-3">
											<input type="date" class="form-control" id="bday" name="patient.birthDayString">
										</div>
																				
										<div class="col-xs-6 col-md-1">
											<label for="sex">Sex: </label>
										</div>
										<div class="col-xs-6 col-md-4">
											<div class="form-control">
												<s:radio required="required" label="Answer" name="patient.sex" list="#{'Male':'Male','Female':'Female','Other':'Other'}"/>
											</div>
										</div>										
									</div>
								</div>
		
<%-- 								<div class="form-group">
									<div class="row">
										<div class="col-xs-3 col-md-2">
											<label for="sex">Sex: </label>
										</div>
										<div class="col-xs-9 col-md-4">
											<div class="form-control">
												<s:radio required="required" label="Answer" name="patient.sex" list="#{'Male':'Male','Female':'Female','Other':'Other'}"/>
											</div>
										</div>
										<div class="col-xs-6"></div>
									</div>
								</div> --%>
		<hr>
								<div class="form-group">
									<div class="row">
										<div class="col-xs-6 col-md-2">
											<label for="ethnicity">Ethnicity: </label>
										</div>
		
										<div class="col-xs-6 col-md-2">
											<s:select cssClass="form-control"  name="patient.ethnicity" list="#{'Sinhala':'Sinhala','Tamil':'Tamil','Muslim':'Muslim','Other':'Other'}"/>
										</div>
		
										<div class="col-xs-6 col-md-1">
											<label for="district">District:</label>
										</div>
										
										<div class="col-xs-6 col-md-2">
											<s:select cssClass="form-control"  name="patient.districtId" listKey="id" listValue="name" list="districts"/>
										</div>
										<div class="col-xs-6 col-md-1">
											<label for="country">Country: </label>
										</div>
										<div class="col-xs-6 col-md-2">
											<select class="form-control">
												<option value="Sri Lankan" selected>Sri Lankan</option>
												<option value="Non Sri Lankan">Non Sri Lankan</option>
											</select>
										</div>										
									</div>
								</div>
		
<%-- 								<div class="form-group">
									<div class="row">
										<div class="col-xs-6 col-md-2">
											<label for="country">Country: </label>
										</div>
										<div class="col-xs-6 col-md-2">
											<select class="form-control">
												<option value="Sri Lankan" selected>Sri Lankan</option>
												<option value="Non Sri Lankan">Non Sri Lankan</option>
											</select>
										</div>
										<div class="col-xs-6 col-md-6"></div>
									</div>
								</div> --%>
								
								<hr>
								<div class="form-group">
									<div class="row">
										<div class="col-xs-6 col-md-2">
											<label for="phone">Phone number:</label>
										</div>
										<div class="col-xs-6 col-md-2">
											<input type="text" class="form-control" id="phoneNo"
												name="patient.mobile">
										</div>
										<div class="col-xs-6 col-md-1">
											<label for="mail">E-mail:</label>
										</div>
										<div class="col-xs-6 col-md-3">
											<input type="email" class="form-control" id="mail"
												name="patient.email">
										</div>
									</div>
								</div>
		
								<div class="form-group">
									<div class="row">
										<div class="col-xs-3 col-md-2">
											<label for="address">Address:</label>
										</div>
										<div class="col-xs-6 col-md-6">
											<textarea class="form-control" id="address" name="patient.address" required></textarea>
										</div>
										
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
							</div>
						<!-- panel ends -->



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
