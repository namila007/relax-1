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

                            <h4>Extraction:</h4>
                        </div>

                        <div class="col-sm-3">
                            <form>

                                <div class="radio radio-info">
                                    <label><input type="radio" name="optradio">
                                        <p>Yes
                                        <p></label>
                                </div>

                                <div class="radio radio-info">
                                    <label><input type="radio" name="optradio">
                                        <p>No
                                        <p></label>
                                </div>


                            </form>

                        </div>

                        <div class="col-sm-3">
                            <h4>Complications :</h4>
                        </div>

                        <div class="col-sm-3">
                            <form>

                                <div class="radio radio-info">
                                    <label><input type="radio" name="optradio">
                                        <p>Yes
                                        <p></label>
                                </div>

                                <div class="radio radio-info">
                                    <label><input type="radio" name="optradio">
                                        <p>No
                                        <p></label>
                                </div>


                            </form>

                        </div>


                    </div>

                    <div class="row">
                        <div class="col-sm-3">
                            <h4>Other Minor/Major Oral Surgery?</h4>
                        </div>

                        <div class="col-sm-3">
                            <form>

                                <div class="radio-inline radio-info">
                                    <label><input type="radio" name="optradio">
                                        <p>Yes
                                        <p></label>
                                </div>

                                <div class="radio-inline radio-info">
                                    <label><input type="radio" name="optradio">
                                        <p>No
                                        <p></label>
                                </div>


                            </form>

                        </div>


                    </div>


                    <div class="row">
                        <div class="col-sm-3">
                            <h4>Periodontal Rx?</h4>
                        </div>

                        <div class="col-sm-3">
                            <form>
                                <div class="radio-inline radio-info">
                                    <label><input type="radio" name="optradio2">
                                        <p>No
                                        <p></label>
                                </div>

                                <div class="radio-inline radio-info">
                                    <label><input type="radio" name="optradio2">
                                        <p>Yes
                                        <p></label>
                                </div>
                            </form>
                        </div>
                        <div class="col-sm-3">

                            <select class="form-control" name="mal">
                                <option value="select1">Scaling</option>
                                <option value="select2">Root Debridement</option>
                                <option value="select3">Surgical Perio Rx</option>
                                <option value="select4">Maintenance Care</option>
                            </select>

                        </div>
                    </div>

                    <div class="row">
                        <div class="col-sm-3">
                            <h4>Orthodontic Treatment :</h4>
                        </div>

                        <div class="col-sm-3">
                            <br>
                            <form>

                                <div class="radio-inline radio-info">
                                    <label><input type="radio" name="optradio">
                                        <p>Yes
                                        <p></label>
                                </div>

                                <div class="radio-inline radio-info">
                                    <label><input type="radio" name="optradio">
                                        <p>No
                                        <p></label>
                                </div>


                            </form>

                        </div>


                    </div>


                    <div class="row">
                        <div class="col-sm-3"></div>
                        <div class="col-sm-3">
                            <h4>Complications:</h4>
                        </div>

                        <div class="col-sm-3">
                            <input type="text" class="form-control" id="usr"
                                   placeholder="Type here">
                        </div>


                    </div>


                    <div class="row">
                        <div class="col-sm-3">
                            <h4>Restorative Rx/Prosthesis?</h4>
                        </div>

                        <div class="col-sm-3">
                            <br>
                            <form>

                                <div class="radio-inline radio-info">
                                    <label><input type="radio" name="optradio">
                                        <p>Yes
                                        <p></label>
                                </div>

                                <div class="radio-inline radio-info">
                                    <label><input type="radio" name="optradio">
                                        <p>No
                                        <p></label>
                                </div>


                            </form>

                        </div>


                    </div>

                    <div class="row">
                        <div class="col-sm-3"></div>
                        <div class="col-sm-3">
                            <h4>Complications:</h4>
                        </div>

                        <div class="col-sm-3">
                            <input type="text" class="form-control" id="usr"
                                   placeholder="Type here">
                        </div>
                    </div>
                    <b>
                        <ul class="pager">
                            <li class="previous"><a href="#">Previous</a></li>
                            <li class="next"><a href="medical_record.html">Next</a></li>
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
