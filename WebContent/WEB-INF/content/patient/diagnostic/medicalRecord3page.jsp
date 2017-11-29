<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <link
            href="<s:url value="/css/dashboard-component.css" includeParams="none"/>"
            rel="stylesheet" type="text/css">

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

                <div class="container">

                    <div class="row">
                        <div class="col-sm-3">
                            <div style="color: red; font-size: 20px;">Pregnancy</div>
                        </div>
                        <div class="col-sm-4">
                            <b>
                                <div>1st Trimester</div>
                                <div>2nd Trimester</div>
                                <div>3rd Trimester</div>
                                <br>
                                <div>On hormonal contraceptives</div>
                            </b>
                        </div>
                        <div class="col-sm-5">
                            <div>
                                <input type="checkbox" class="checkbox-inline">
                            </div>
                            <div>
                                <input type="checkbox" class="checkbox-inline">
                            </div>
                            <div>
                                <input type="checkbox" class="checkbox-inline">
                            </div>
                            <div class="col-sm-4">
                                <b>
                                    <div>Pills</div>
                                    <div>Injections</div>
                                    <div>Contraceptive implants</div>
                                </b>
                            </div>
                            <div class="col-sm-1">
                                <div>
                                    <input type="checkbox" class="checkbox-inline">
                                </div>
                                <div>
                                    <input type="checkbox" class="checkbox-inline">
                                </div>
                                <div>
                                    <input type="checkbox" class="checkbox-inline">
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-12">
                        <div class="row">
                            <ul class="pager">
                                <li class="previous"><a href="medicalRecord2page.html#">Previous</a></li>
                                <li class="next"><a href="#">Next</a></li>
                            </ul>
                            <br> <br>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /page content -->

        </div>
    </div>
</div>
<s:include value="/WEB-INF/content/common/footer.jsp"></s:include>
<!-- Custom Theme Scripts -->
<s:include value="/WEB-INF/content/common/js-include.jsp"></s:include>

</body>
</html>
