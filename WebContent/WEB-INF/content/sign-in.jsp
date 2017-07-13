<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html lang="en">

<head>

<s:include value="/WEB-INF/content/common/meta-tags.jsp"></s:include>
<title><s:text name="global.application.title" /></title>
<s:include value="common/css-include.jsp"></s:include>
<style type="text/css">
/*
 * Specific styles of signin component
 */
/*
 * General styles
 */
body, html {
	height: 100%;
	background-repeat: no-repeat;
	background-image: linear-gradient(rgb(104, 145, 162), rgb(12, 97, 33));
}

.card-container.card {
	max-width: 350px;
	padding: 40px 40px;
}

.btn {
	font-weight: 700;
	height: 36px;
	-moz-user-select: none;
	-webkit-user-select: none;
	user-select: none;
	cursor: default;
}

/*
 * Card component
 */
.card {
	background-color: #F7F7F7;
	/* just in case there no content*/
	padding: 20px 25px 30px;
	margin: 0 auto 25px;
	margin-top: 50px;
	/* shadows and rounded borders */
	-moz-border-radius: 2px;
	-webkit-border-radius: 2px;
	border-radius: 2px;
	-moz-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
	-webkit-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
	box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
}

.profile-img-card {
	width: 96px;
	height: 96px;
	margin: 0 auto 10px;
	display: block;
	-moz-border-radius: 50%;
	-webkit-border-radius: 50%;
	border-radius: 50%;
}

/*
 * Form styles
 */
.profile-name-card {
	font-size: 16px;
	font-weight: bold;
	text-align: center;
	margin: 10px 0 0;
	min-height: 1em;
}

.reauth-email {
	display: block;
	color: #404040;
	line-height: 2;
	margin-bottom: 10px;
	font-size: 14px;
	text-align: center;
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
	-moz-box-sizing: border-box;
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
}

.form-signin #inputEmail, .form-signin #inputPassword {
	direction: ltr;
	height: 44px;
	font-size: 16px;
}

.form-signin input[type=email], .form-signin input[type=password],
	.form-signin input[type=text], .form-signin button {
	width: 100%;
	display: block;
	margin-bottom: 10px;
	z-index: 1;
	position: relative;
	-moz-box-sizing: border-box;
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
}

.form-signin .form-control:focus {
	border-color: rgb(104, 145, 162);
	outline: 0;
	-webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075), 0 0 8px
		rgb(104, 145, 162);
	box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075), 0 0 8px
		rgb(104, 145, 162);
}

.btn.btn-signin {
	/*background-color: #4d90fe; */
	background-color: rgb(104, 145, 162);
	/* background-color: linear-gradient(rgb(104, 145, 162), rgb(12, 97, 33));*/
	padding: 0px;
	font-weight: 700;
	font-size: 14px;
	height: 36px;
	-moz-border-radius: 3px;
	-webkit-border-radius: 3px;
	border-radius: 3px;
	border: none;
	-o-transition: all 0.218s;
	-moz-transition: all 0.218s;
	-webkit-transition: all 0.218s;
	transition: all 0.218s;
}

.btn.btn-signin:hover, .btn.btn-signin:active, .btn.btn-signin:focus {
	background-color: rgb(12, 97, 33);
}

.forgot-password {
	color: rgb(104, 145, 162);
}

.forgot-password:hover, .forgot-password:active, .forgot-password:focus
	{
	color: rgb(12, 97, 33);
}

.container {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
}
</style>

<script type="text/javascript">
	$(document).ready(function() {
		// DOM ready

		// Test data
		/*
		 * To test the script you should discomment the function
		 * testLocalStorageData and refresh the page. The function
		 * will load some test data and the loadProfile
		 * will do the changes in the UI
		 */
		// testLocalStorageData();
		// Load profile if it exits
		loadProfile();
	});

	/**
	 * Function that gets the data of the profile in case
	 * thar it has already saved in localstorage. Only the
	 * UI will be update in case that all data is available
	 *
	 * A not existing key in localstorage return null
	 *
	 */
	function getLocalProfile(callback) {
		var profileImgSrc = localStorage.getItem("PROFILE_IMG_SRC");
		var profileName = localStorage.getItem("PROFILE_NAME");
		var profileReAuthEmail = localStorage.getItem("PROFILE_REAUTH_EMAIL");

		if (profileName !== null && profileReAuthEmail !== null
				&& profileImgSrc !== null) {
			callback(profileImgSrc, profileName, profileReAuthEmail);
		}
	}

	/**
	 * Main function that load the profile if exists
	 * in localstorage
	 */
	function loadProfile() {
		if (!supportsHTML5Storage()) {
			return false;
		}
		// we have to provide to the callback the basic
		// information to set the profile
		getLocalProfile(function(profileImgSrc, profileName, profileReAuthEmail) {
			//changes in the UI
			$("#profile-img").attr("src", profileImgSrc);
			$("#profile-name").html(profileName);
			$("#reauth-email").html(profileReAuthEmail);
			$("#inputEmail").hide();
			$("#remember").hide();
		});
	}

	/**
	 * function that checks if the browser supports HTML5
	 * local storage
	 *
	 * @returns {boolean}
	 */
	function supportsHTML5Storage() {
		try {
			return 'localStorage' in window && window['localStorage'] !== null;
		} catch (e) {
			return false;
		}
	}

	/**
	 * Test data. This data will be safe by the web app
	 * in the first successful login of a auth user.
	 * To Test the scripts, delete the localstorage data
	 * and comment this call.
	 *
	 * @returns {boolean}
	 */
	function testLocalStorageData() {
		if (!supportsHTML5Storage()) {
			return false;
		}
		localStorage
				.setItem(
						"PROFILE_IMG_SRC",
						"//lh3.googleusercontent.com/-6V8xOA6M7BA/AAAAAAAAAAI/AAAAAAAAAAA/rzlHcD0KYwo/photo.jpg?sz=120");
		localStorage.setItem("PROFILE_NAME", "César Izquierdo Tello");
		localStorage.setItem("PROFILE_REAUTH_EMAIL", "oneaccount@gmail.com");
	}
</script>
</head>

<body>
	<!-- <body class="login"> -->



	<div class="container">
		<a class="hiddenanchor" id="signup"></a>
		<div class="card card-container">
			<section class="login_content">
				<img id="profile-img" class="profile-img-card"
					src="//ssl.gstatic.com/accounts/ui/avatar_2x.png" />
				<p id="profile-name" class="profile-name-card"></p>
				<form class="form-signin">

					<s:form namespace="/" action="sign-in.html" method="post"
						cssClass="form-signin" id="signInFrm">

						<h3>
							<s:text name="global.application.name"></s:text>
						</h3>
						<div class="form-group">
							<input type="text" name="userAccount.userName"
								placeholder='<s:property value="%{getText('user.login.email')}"/>'
								class="form-control" required autofocus />
						</div>
						<div class="form-group">
							<input type="password" name="userAccount.userPassword"
								class="form-control"
								placeholder="<s:property value="%{getText('user.login.password')}"/>"
								required />
						</div>
						<div align="left">
							<s:submit cssClass="btn btn-primary btn-md"></s:submit>
							<a class="reset_pass text-primary" href="#">Lost your
								password?</a>
						</div>

						<div class="clearfix"></div>
					</s:form>

				</form>
				<!-- /form -->
			</section>


		</div>
		<!-- /card-container -->
	</div>




	<s:include value="/WEB-INF/content/common/js-include.jsp"></s:include>

</body>

</html>
