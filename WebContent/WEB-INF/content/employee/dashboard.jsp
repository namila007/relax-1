<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html lang="en">

<head>
	
	<s:include value="/WEB-INF/content/common/meta-tags.jsp"></s:include>
    <title><s:text name="global.application.title" /></title>
	<s:include value="/WEB-INF/content/common/css-include.jsp"></s:include>
	<style type="text/css">
	.btn-block {
	    padding: 10% 0; 
	}
	</style>	
</head>

<body class="nav-md">
	<div class="container body">
		<div class="main_container">

			<s:include value="/WEB-INF/content/common/title-bar.jsp"></s:include>
			<s:include value="/WEB-INF/content/common/top-bar.jsp"></s:include>
			
			<!-- page content -->
			<div class="right_col" role="main">
				<h2>Dashboard</h2>
				<s:include value="/WEB-INF/content/patient/header.jsp"></s:include>
				<hr>
				
				<div class="form-group">
					<div class="row">
						<div class="col-md-6 col-sm-6 col-xs-12">
							<button type="button" class="btn btn-info btn-block"><strong>Modification </strong>
							<span class="glyphicon glyphicon-edit"></span>							
							</button> 
						</div>
						<div class="col-md-6 col-sm-6 col-xs-12">
							<button type="button" class="btn btn-info btn-block"><strong>Registration </strong>
							<span class="fa fa-user-plus"></span>
							</button> 
						</div>
					</div>
				</div>				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
			</div>	
			<!-- /page content -->

		</div>
	</div>

	<!-- Custom Theme Scripts -->
	<s:include value="/WEB-INF/content/common/js-include.jsp" ></s:include>
</body>
</html>
