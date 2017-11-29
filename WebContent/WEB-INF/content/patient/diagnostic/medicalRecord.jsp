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

                        <div style="color: red; font-size: 20px;"
                             class="col-sm-4 col-xs-12">Developmental
                        </div>
                        <div class="col-sm-4 col-xs-8">
                            <div>Cleft Lip/Palate</div>
                            <div>Cerebral Palsy</div>
                            <div>Syndromic</div>
                        </div>
                        <div class="col-sm-4 col-xs-4">
                            <div>
                                <input type="checkbox" value="">
                            </div>
                            <div>
                                <input type="checkbox" value="">
                            </div>
                            <div>
                                <input type="checkbox" value="">
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div style="color: red; font-size: 20px;"
                             class="col-sm-4 col-xs-12">Epilepsy
                        </div>
                        <div class="col-sm-4"></div>
                        <div class="col-sm-4"></div>
                    </div>

                    <div class="row">
                        <div style="color: red; font-size: 20px;"
                             class="col-sm-4 col-xs-12">Endocrine
                        </div>
                        <div class="col-sm-4 col-xs-8">
                            <div>Diabetes</div>
                            <div>Hypothyroidism</div>
                            <div>Hyperthyroidism</div>
                            <div>Other</div>
                        </div>
                        <div class="col-sm-4 col-xs-4">
                            <div>
                                <input type="checkbox" value="">
                            </div>
                            <div>
                                <input type="checkbox" value="">
                            </div>
                            <div>
                                <input type="checkbox" value="">
                            </div>
                        </div>
                        <div class="col-sm-4 col-xs-12">
                            <div>
                                <input type="text" style="width: 100%">
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div style="color: red; font-size: 20px;"
                             class="col-sm-4 col-xs-12">Gastro-intestinal
                        </div>
                        <div class="col-sm-4 col-xs-8">
                            <div>Ulcers</div>
                            <div>Gastric reflux</div>
                            <div>Other</div>
                        </div>
                        <div class="col-sm-4 col-xs-4">
                            <div>
                                <input type="checkbox" value="">
                            </div>
                            <div>
                                <input type="checkbox" value="">
                            </div>
                        </div>
                        <div class="col-sm-4 col-xs-12">
                            <div>
                                <input type="text" style="width: 100%">
                            </div>
                        </div>
                    </div>
                </div>


                <div class="row">


                    <ul class="pager">
                        <li class="previous"><a href="medical_record.html#">Previous</a></li>
                        <li class="next"><a href="medicalRecord2page.html#">Next</a></li>
                    </ul>
                    <br> <br>
                </div>


            </div>


        </div>
        <!-- /page content -->

    </div>
</div>

<s:include value="/WEB-INF/content/common/footer.jsp"></s:include>
<!-- Custom Theme Scripts -->
<s:include value="/WEB-INF/content/common/js-include.jsp"></s:include>

</body>
</html>
