<%--
  Created by IntelliJ IDEA.
  User: Namila
  Date: 11/19/2017
  Time: 8:37 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="s" uri="/struts-tags" %>


<!DOCTYPE html>
<html>
<html>
<head>
    <s:include value="/WEB-INF/content/common/meta-tags.jsp"></s:include>
    <title><s:text name="global.application.title"/></title>
    <s:include value="/WEB-INF/content/common/css-include.jsp"></s:include>
    <!-- custom css for diagnostic menu bar starts-->
    <link href="<s:url value="/css/menubar.css" includeParams="none"/>" rel="stylesheet" type="text/css">
    <!-- custom css for diagnostic menu bar ends-->

</head>

<body class="nav-md">
	<div class="container body">
		<div class="main_container">

			<s:include value="/WEB-INF/content/common/title-bar.jsp"></s:include>
			<s:include value="/WEB-INF/content/common/top-bar.jsp"></s:include>

			<div class="row"></div>

			<!-- page content -->
			<div class="addMenu">

				<div class="right_col" role="main">

					<s:include
						value="/WEB-INF/content/patient/diagnostic/common/navbar.jsp"></s:include>

            <div class="row">
                <div class="col-md-3">
                    <h4>Sugar consumption</h4>
                </div>
                <h4 style="color: #27A4CA" >
                    <div class="col-md-2">
                        <label><input type="radio" name="Sugar"> High</label>
                    </div>
                    <div class="col-md-2">
                        <label><input type="radio" name="Sugar"> Moderate</label>
                    </div>
                    <div class="col-md-5">
                        <label><input type="radio" name="Sugar"> Low</label>
                    </div>

                </h4>
            </div>
            <br>
            <div class="row">
                <div class="col-md-3">
                    <h4>Frequency of having sugary food/day apart from main meals</h4>
                </div>
                <div class="col-md-7">
                    <input class="input-lg" type="text" name="" placeholder="Type here">
                </div>
                <div class="col-md-2">

                </div>
            </div>
            <br>
            <div class="row">
                <div class="col-md-3">
                    <h4 >Consumption of Beverages</h4>
                </div>

                <h4 style="color: #27A4CA">
                    <div class="col-md-2">
                        <label><input type="checkbox"> Fruit Juices </label>
                    </div>
                    <div class="col-md-5">
                        <label><input type="checkbox"> Carbonic Drinks</label>

                </h4>

                <div class="col-md-2">

                </div>
            </div>
            <br><br>
            <div class="row">
                <div class="col-md-3">
                    <h4>Other Comments</h4>
                </div>
                <div class="col-md-7">
                    <input class="input-lg" type="text" name="" placeholder="Type here">
                </div>
                <div class="col-md-2">

                </div>
            </div>
            <br><br> <br> <br> <br><br> <br> <br>
            <div class="row">
                <div class="col-md-3 col-xs-5">
                    <form method="get" action="Plaque_control&Brushing_Habits.html">
                        <button  class="btn btn-primary"> BACK</button>
                    </form>
                </div>
                <div class="col-md-7 col-xs-2">

                </div>
                <div class="col-md-2 col-xs-5">
                    <button class="btn btn-primary">NEXT</button>
                </div>
                <br>
                <br>
            </div>

        </div>  <!-- container -->


</body>

<s:include value="/WEB-INF/content/common/footer.jsp"></s:include>
<!-- Custom Theme Scripts -->
<s:include value="/WEB-INF/content/common/js-include.jsp"></s:include>
</html>