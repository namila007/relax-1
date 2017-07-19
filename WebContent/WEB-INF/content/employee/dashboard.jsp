<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html lang="en">

<head>
	
	<s:include value="/WEB-INF/content/common/meta-tags.jsp"></s:include>
    <title><s:text name="global.application.title" /></title>
	<s:include value="/WEB-INF/content/common/css-include.jsp"></s:include>
	<link href="<s:url value="/css/dashboard-component.css" includeParams="none"/>" rel="stylesheet" type="text/css">
	
</head>

<body class="nav-md">
	<div class="container body">
		<div class="main_container">

			<s:include value="/WEB-INF/content/common/title-bar.jsp"></s:include>
			<s:include value="/WEB-INF/content/common/top-bar.jsp"></s:include>
			
				<!-- page content -->
				<div class="right_col" role="main">
				
				  <div class="row" style="margin-top:20px">
	               <div class="col-md-4 clientes">
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
				  
				  <div class="col-md-4 concorrentes" style="padding:0 10px">
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
				  
				  <div class="col-md-4 clientes">
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
				
				<div class="row" style="margin-top:20px">
	               <div class="col-md-4 clientes">
				    <div class="clientes-content">
				    	<div class="content-title">
				            <span style="padding-left:10px">Title</span>
				    	</div>
				        <div class="number"><span>Stat</span></div>
				        <div class="line">
				            <div class="line-1"></div>
				            <div class="line-2"></div>
				        </div>
				        <div class="analysis">
				            <div class="quote"><b>Summary</b></div>
				            <a href="#" class="see-more">More<span class="glyphicon glyphicon-circle-arrow-right"></span></a>
				        </div>
				    </div>
				  </div>
				  
				  <div class="col-md-4 concorrentes" style="padding:0 10px">
				    <div class="concorrentes-content">
				        <div class="content-title">
				            <span style="padding-left:10px">Title</span>
				    	</div>
				        <div class="number"><span>Stat</span></div>
				        <div class="line">
				            <div class="line-1"></div>
				            <div class="line-2"></div>
				        </div>
				        <div class="analysis">
				            <div class="quote"><b>Summary</b></div>
				            <a href="#" class="see-more">More <span class="glyphicon glyphicon-circle-arrow-right"></span></a>
				        </div>
				    </div>
				  </div>
				  
				  <div class="col-md-4 clientes">
				    <div class="clientes-content">
				    	<div class="content-title">
				            <span style="padding-left:10px">Title</span>
				    	</div>
				        <div class="number"><span>Stat</span></div>
				        <div class="line">
				            <div class="line-1"></div>
				            <div class="line-2"></div>
				        </div>
				        <div class="analysis">
				            <div class="quote"><b>Summary</b></div>
				            <a href="#" class="see-more">More<span class="glyphicon glyphicon-circle-arrow-right"></span></a>
				        </div>
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
