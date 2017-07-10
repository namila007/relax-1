<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>

<!DOCTYPE html>
<html lang="en">
<head>

<s:include value="/WEB-INF/content/common/meta-tags.jsp"></s:include>
<s:include value="/WEB-INF/content/common/css-include.jsp"></s:include>
<title><s:text name="global.application.title" /></title>

</head>

<body>

	<div id="wrapper">

		<!-- Navigation -->
		<s:include value="/WEB-INF/content/common/navigation.jsp"></s:include>

		<div id="page-wrapper"></div>

	</div>

	<footer>
		<s:include value="/WEB-INF/content/common/footer.jsp"></s:include>
	</footer>

	<s:include value="/WEB-INF/content/common/js-include.jsp"></s:include>

	<script>
		jQuery('#mainMenuId1').addClass('active');
	</script>

</body>

</html>