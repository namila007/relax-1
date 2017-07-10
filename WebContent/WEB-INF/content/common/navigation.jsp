<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<s:if test="admin">
	<s:include value="/WEB-INF/content/common/admin-navigation.jsp" />
</s:if>
<s:elseif test="organizationAdmin">
	<s:include value="/WEB-INF/content/common/organization-admin-navigation.jsp" />
</s:elseif>
<s:elseif test="user">
	<s:include value="/WEB-INF/content/common/user-navigation.jsp" />
</s:elseif>