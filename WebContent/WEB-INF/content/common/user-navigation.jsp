<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>


<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
	<!-- Brand and toggle get grouped for better mobile display -->
	<div class="navbar-header">
		<button type="button" class="navbar-toggle" data-toggle="collapse"
			data-target=".navbar-ex1-collapse">
			<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span>
			<span class="icon-bar"></span> <span class="icon-bar"></span>
		</button>
		<a class="navbar-brand stackable" href="#">
			<span>
				<%--  img src="<s:url value="/images/logo.png" includeParams="none"/>"alt="sltb"> --%>
			</span> 
			<span class="cname">National Transport Data Platform</span>
		</a>
	</div>
	<!-- Top Menu Items -->
	<ul class="nav navbar-right top-nav">

		<li class="dropdown"><a href="#" class="dropdown-toggle"
			data-toggle="dropdown"><i class="fa fa-user"></i> <s:property
					value="#session.SESSION_USER.name" /> | <s:property
					value="#session.SESSION_USER.roleName" /> <b class="caret"></b></a>
			<ul class="dropdown-menu">
				<li><s:url var="myProfileUrl" action="viewMyProfile"
						namespace="/myProfile" includeParams="none" /> <s:a
						href="%{#myProfileUrl}">
						<i class="fa fa-cog" aria-hidden="true"></i>
		  							My Profile
		  						</s:a></li>
				<li><s:url var="changePasswordUrl" action="change-password"
						namespace="/" includeParams="none" /> <s:a
						href="%{#changePasswordUrl}">
						<i class="fa fa-exchange"></i>
		  							Change Password
		  						</s:a></li>
				<li class="divider"></li>
				<li><s:url var="logoutUrl" action="sign-out" namespace="/"
						includeParams="none" /> <s:a href="%{#logoutUrl}">
						<i class="fa fa-fw fa-power-off"></i>
		  						Sign Out
		  					</s:a></li>
			</ul></li>
	</ul>
	<!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
	<div class="collapse navbar-collapse navbar-ex1-collapse">
		<ul class="nav navbar-nav side-nav">
		
			<li class="mainMenu" id="mainMenuId1"><s:url
					var="dashboardDashboardUrl" action="dashboard" namespace="/"
					includeParams="none" /> <s:a href="%{#dashboardDashboardUrl}">
					<i class="fa fa-fw fa-dashboard"></i> Dashboard <br />
					<small>Summary information</small>
				</s:a></li>

		</ul>
	</div>
	<!-- /.navbar-collapse -->
</nav>