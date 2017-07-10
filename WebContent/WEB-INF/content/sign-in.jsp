<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html lang="en">

<head>
	
	<s:include value="/WEB-INF/content/common/meta-tags.jsp"></s:include>
    <title><s:text name="global.application.title" /></title>
	<s:include value="common/css-include.jsp"></s:include>
	
</head>

<body class="login">
    <div>
      <a class="hiddenanchor" id="signup"></a>

      <div class="login_wrapper">
        <div class="animate form login_form">
          <section class="login_content">
            <s:form namespace="/" action="sign-in.html" method="post"
				cssClass="form-signin" id="signInFrm">
				
              <h3><s:text name="global.application.name"></s:text> </h3>
              <div class="form-group">
				<input type="text" name="userAccount.userName"
						placeholder='<s:property value="%{getText('user.login.email')}"/>'
						class="form-control" required autofocus
						/>
				</div>
				<div class="form-group">
					<input type="password" name="userAccount.userPassword"
						class="form-control"
						placeholder="<s:property value="%{getText('user.login.password')}"/>"
						required />
				</div>
              <div align="left">
                <s:submit cssClass="btn btn-default submit" >Log in</s:submit>
                <a class="reset_pass" href="#">Lost your password?</a>s
              </div>

              <div class="clearfix"></div>
            </s:form>
          </section>
        </div>

       </div>
    </div>
    
    <s:include value="/WEB-INF/content/common/js-include.jsp" ></s:include>

</body>

</html>
