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

                    <div class="col-md-3">
                        <h4><B>Plaque control & Brushing Habits</B></h4>
                    </div>

                    <div class="col-md-3">
                        <h4>Tooth Brushing tool </h4>
                    </div>
                    <div class="col-md-6">
                        <form role="form">

                            <div class="checkbox">
                                <label>
                                    <input type="radio" name="Brush"> Tooth Brush -Manual
                                </label>
                            </div>

                            <div class="checkbox">
                                <label>
                                    <input type="radio" name="Brush"> Tooth Brush -Electric
                                </label>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input type="radio" name="Brush"> Other
                                </label>
                                <input class="input-sm" type="text" name="" placeholder="Other" style="">
                            </div>

                        </form>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-3">

                    </div>

                    <div class="col-md-3">
                        <h4>Bristles</h4>
                    </div>
                    <div class="col-md-6">
                        <form role="form">

                            <div class="checkbox">
                                <label>
                                    <input type="radio" name="Bristles"> Hard
                                </label>
                            </div>

                            <div class="checkbox">
                                <label>
                                    <input type="radio" name="Bristles"> Medium
                                </label>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input type="radio" name="Bristles"> Soft
                                </label>
                            </div>

                        </form>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-3">

                    </div>

                    <div class="col-md-3">
                        <h4>Duration of brushing</h4>
                    </div>
                    <div class="col-md-6">
                        <form role="form">

                            <div class="checkbox">
                                <label>
                                    <input type="radio" name="Duration"> ?1 min
                                </label>
                            </div>

                            <div class="checkbox">
                                <label>
                                    <input type="radio" name="Duration"> 1-3 min
                                </label>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input type="radio" name="Duration"> >3 min
                                </label>
                            </div>

                        </form>
                    </div>


                </div>
                <div class="row">
                    <div class="col-md-3">

                    </div>

                    <div class="col-md-3">
                        <h4>Dentifrices/Tooth pastes </h4>
                    </div>
                    <div class="col-md-6">
                        <form role="form">

                            <div class="checkbox">
                                <label>
                                    <input type="radio" name="paste"> Fluoridated
                                </label>
                            </div>

                            <div class="checkbox">
                                <label>
                                    <input type="radio" name="paste"> Non-fluoridated
                                </label>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input type="radio" name="paste"> Other
                                </label>
                                <input class="input-sm" type="text" name="" placeholder="Other" style="">
                            </div>

                        </form>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-3">

                    </div>

                    <div class="col-md-3">
                        <h4>Use of Interdental/supplementary cleaning aids </h4>
                    </div>
                    <div class="col-md-6">
                        <form role="form">

                            <div class="checkbox">
                                <label>
                                    <input type="checkbox"> Floss
                                </label>
                            </div>

                            <div class="checkbox">
                                <label>
                                    <input type="checkbox"> Bottle-brushes
                                </label>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox"> Single-tufted TB
                                </label>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox"> Wood picks
                                </label>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox"> Irrigators
                                </label>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox"> Other
                                </label>
                                <input class="input-sm" type="text" name="" placeholder="Other" style="">
                            </div>

                        </form>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-3 col-xs-10">
                        <button class="btn btn-primary"> BACK</button>
                    </div>
                    <div class="col-md-6">

                    </div>
                    <div class="col-md-3 col-xs-2">
                        <form method="get" action="Dietary_History.html">
                            <button class="btn btn-primary"> NEXT</button>
                        </form>
                    </div>
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
