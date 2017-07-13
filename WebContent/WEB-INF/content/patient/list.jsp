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
				<h4>Patients</h4>
				
				<s:if test="patients.size > 0">
				
					<table class="table table-condensed">
  						<tr>
  							<th>Index</th>
  							<th>Name</th>
  							<th>Sex</th>
  							<th>Birth (Age)</th>
  							<th>Mobile</th>
  							<th>Address</th>
  							<th>Events</th>
  						</tr>
						<s:iterator value="patients" status="rowIndex">
							<td><s:property value="%{#rowIndex.index + 1}" /> </td>
  							<td><s:property value="firstName" /> <s:property value="surname" /> </td>
  							<td><s:property value="sex" /></td>
  							<td><s:date name="dateOfBirth" nice="true"/></td>
  							<td><s:property value="mobile" /></td>
  							<td><s:property value="address" /></td>
  							<td>Events</td>
						</s:iterator>
					</table>
				</s:if>
				<s:else>
					<div class="bg-info text-white">No patients registered yet</div>				
				</s:else> 
				
			</div>
			<!-- /page content -->

		</div>
	</div>

	<!-- Custom Theme Scripts -->
	<s:include value="/WEB-INF/content/common/js-include.jsp"></s:include>
</body>
</html>
