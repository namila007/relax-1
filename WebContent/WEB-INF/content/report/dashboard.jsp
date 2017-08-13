<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html lang="en">

<head>
	<link href="<s:url value="/css/dashboard-component.css" includeParams="none"/>" rel="stylesheet" type="text/css">
	<link href="<s:url value="/css/style.css" includeParams="none"/>" rel="stylesheet" type="text/css">
	
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
				<h2>Report Dashboard</h2>
				
				<div class="row flexRow">
					<div class="col-md-2 col-sm-2 col-xs-12" >
						<label class="labelCustom" >Custom Report :</label>
					</div>
					<div class="col-md-3 col-sm-3 col-xs-12"  >
						<input type="date" class="form-control" id="dateStart" 
							name="customReport.startDate" value="<s:property value='%{customReport.startDate}' />">
					</div>
					
					<div class="col-md-1 col-sm-1 col-xs-12" style="text-align: center;" >
						<label class="labelCustom" >  to </label>
					</div>
					
					<div class="col-md-3 col-sm-3 col-xs-12" >
						<input type="date" class="form-control" id="dateEnd"
							name="customReport.endDate" value="<s:property value='%{customReport.endDate}' />">
					</div>
					
					<div class="col-md-2 col-sm-2 col-xs-12"> 
						
						<s:url var="patientAddUrl" namespace="/patient" action="registration-form.html"></s:url>
				
						<s:a href="%{#patientAddUrl}" cssClass="btn btn-primary" style="padding: 6px 60px;" role="button">
							<i class="glyphicon glyphicon-print" style="padding: 0px;"></i>
							Print
						</s:a>
						
					
					</div>
					
				</div>
								
				<div class="row">
								
					<div class="col-md-6 col-sm-6 col-xs-12" style="padding: 10px;">
	            		<s:url var="dailyReports" namespace="/report" action="reports-daily.html"></s:url>
				     	<s:a href="%{#dailyReports}" cssClass="mainSelect yellow">
						    <i class="glyphicon glyphicon-list-alt" style="padding: 10px 25px 10px 0px;"></i>Daily Reports
						</s:a>
	            	</div>
	            	
	            	<div class="col-md-6 col-sm-6 col-xs-12" style="padding: 10px;">
	            		<s:url var="weeklyReports" namespace="/report" action="reports-weekly.html"></s:url>
				     	<s:a href="%{#weeklyReports}" cssClass="mainSelect green">
						    <i class="glyphicon glyphicon-list-alt" style="padding: 10px;"></i>Weekly Reports
						</s:a>
	            	</div>
	            	
	            	
	            	            	
			    </div>
			    
			    
				<div class="row">
				
	            	<div class="col-md-6 col-sm-6 col-xs-12" style="padding: 10px;">
	            		<s:url var="patientListUrl" namespace="/patient" action="list.html"></s:url>
				     	<s:a href="#" cssClass="mainSelect green">
						    <i class="glyphicon glyphicon-list-alt" style="padding: 10px;"></i>Monthly Reports
						</s:a>
	            	</div>
	            
	            	<div class="col-md-6 col-sm-6 col-xs-12" style="padding: 10px;">
	            		<s:url var="patientListUrl" namespace="/patient" action="list.html"></s:url>
				     	<s:a href="#" cssClass="mainSelect yellow">
						    <i class="glyphicon glyphicon-list-alt" style="padding: 10px 20px 10px 0px;"></i>Annual Report
						</s:a>
	            	</div>
			    
			    </div>
				
				<!--   Uncomment when patient visit form is finalized
				
				<div class="row" style="margin-top:50px">
	               <div class="col-md-4 col-sm-6 col-xs-12 clientes">
				    <div class="clientes-content">
				    	<div class="content-title">
				            <span style="padding-left:10px">Registrations (This Week)</span>
				    	</div>
				        <div class="number"><span>270</span></div>
				        <div class="line">
				            <div class="line-1"></div>
				            <div class="line-2"></div>
				        </div>
				        <div class="analysis">
				            <div class="quote"><b>55% Kandy</b></div>
				            <a href="#" class="see-more">More<span class="glyphicon glyphicon-circle-arrow-right"></span></a>
				        </div>
				    </div>
				  </div>
				  
				  <div class="col-md-4 col-sm-6 col-xs-12 concorrentes" style="padding:0 10px">
				    <div class="concorrentes-content">
				        <div class="content-title">
				            <span style="padding-left:10px">New Intakes (Today)</span>
				    	</div>
				        <div class="number"><span>10</span>  <span> / 25</span></div>
				        <div class="line">
				            <div class="line-1"></div>
				            <div class="line-2"></div>
				        </div>
				        <div class="analysis">
				            <div class="quote"><b>40% are new intakes</b></div>
				            <a href="#" class="see-more">More <span class="glyphicon glyphicon-circle-arrow-right"></span></a>
				        </div>
				    </div>
				  </div>
				  
				  <div class="col-md-4 col-sm-6 col-xs-12 clientes">
				    <div class="clientes-content">
				    	<div class="content-title">
				            <span style="padding-left:10px">Planed Surgeries (Today)</span>
				    	</div>
				        <div class="number"><span>4</span></div>
				        <div class="line">
				            <div class="line-1"></div>
				            <div class="line-2"></div>
				        </div>
				        <div class="analysis">
				            <div class="quote"><b></b></div>
				            <a href="#" class="see-more">More<span class="glyphicon glyphicon-circle-arrow-right"></span></a>
				        </div>
				    </div>
				  </div>
				</div> 
				
				
				-->
			</div>	
			<!-- /page content -->

		</div>
	</div>
	
	<s:include value="/WEB-INF/content/common/footer.jsp"></s:include>
	<!-- Custom Theme Scripts -->
	<s:include value="/WEB-INF/content/common/js-include.jsp" ></s:include>

</body>
</html>
