<%--
  Created by IntelliJ IDEA.
  User: Namila
  Date: 11/28/2017
  Time: 8:49 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
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

                <div class="container">
                    <div class="row">
                        <div class="col-sm-3">
                            <h4>Allergies</h4>
                        </div>
                        <div class="col-sm-3">
                            <h4>Drug</h4>
                        </div>

                        <div class="col-sm-3">
                            <label class="checkbox"><input type="checkbox" value="">
                                <p class="text-danger">Penicillin / Amoxicillin</p></label> <label
                                class="checkbox"><input type="checkbox" value="">
                            <p class="text-danger">Paracetamol</p></label> <label class="checkbox"><input
                                type="checkbox" value="">
                            <p class="text-danger">NSAIDS</p></label> <label class="checkbox"><input
                                type="checkbox" value="">
                            <p class="text-danger">Aspirin</p></label> <input type="text"
                                                                              class="form-control" id="usr0"
                                                                              placeholder="Other">
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-sm-3"></div>
                        <div class="col-sm-3">
                            <h4>Food</h4>
                        </div>

                        <div class="col-sm-3">
                            <label class="checkbox"><input type="checkbox" value="">
                                <p class="text-danger">Pineapple</p></label> <label class="checkbox"><input
                                type="checkbox" value="">
                            <p class="text-danger">Tomatoes</p></label> <label class="checkbox"><input
                                type="checkbox" value="">
                            <p class="text-danger">Canned fish</p></label> <input type="text"
                                                                                  class="form-control" id="usr1"
                                                                                  placeholder="Other">
                        </div>
                    </div>
                    <br>
                    <div class="row">
                        <div class="col-sm-3"></div>
                        <div class="col-sm-3">
                            <h4>Latex/Rubber</h4>
                        </div>

                        <div class="col-sm-3">
                            <input type="text" class="form-control" id="usr2"
                                   placeholder="Other">
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-sm-3"></div>
                        <div class="col-sm-3">
                            <h4>Other</h4>
                        </div>

                        <div class="col-sm-3">
                            <input type="text" class="form-control" id="usr3"
                                   placeholder="Other">
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-sm-3">
                            <h4>Anaemia</h4>
                        </div>
                        <div class="col-sm-3">
                            <input type="text" class="form-control" id="usr3"
                                   placeholder="Type here">
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-sm-3">
                            <h4>Asthma</h4>
                        </div>
                        <div class="col-sm-3">
                            <input type="text" class="form-control" id="usr3"
                                   placeholder="Type here">
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-sm-3">
                            <h4>Bleeding Disorders</h4>
                        </div>
                        <div class="col-sm-3">
                            <label class="checkbox"><input type="checkbox" value="">
                                <p class="text-danger">Haemophilia</p></label>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-sm-3">
                            <h4>Cardiac Disorders</h4>
                        </div>
                        <div class="col-sm-3">
                            <label class="checkbox"><input type="checkbox" value="">
                                <p class="text-danger">Angina</p></label>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-sm-3"></div>
                        <div class="col-sm-3">
                            <label><p class="text-danger">Valvular problems</p></label>
                        </div>

                        <div class="col-sm-3">
                            <label><p class="text-danger">Indication for SABE
                                prophylaxis</p></label>
                        </div>

                        <div class="col-sm-3">
                            <form>

                                <div class="radio-inline radio-info">
                                    <label><input type="radio" name="optradio4">
                                        <p>Yes
                                        <p></label>
                                </div>

                                <div class="radio-inline radio-info">
                                    <label><input type="radio" name="optradio4">
                                        <p>No
                                        <p></label>
                                </div>


                            </form>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-sm-3"></div>
                        <div class="col-sm-3">
                            <label><p class="text-danger">Rheumatic carditis</p></label>
                        </div>

                        <div class="col-sm-3">
                            <label><p class="text-danger">Regular Oral
                                penicillin?</p></label>
                        </div>

                        <div class="col-sm-3">
                            <form>

                                <div class="radio-inline radio-info">
                                    <label><input type="radio" name="optradio5">
                                        <p>Yes
                                        <p></label>
                                </div>

                                <div class="radio-inline radio-info">
                                    <label><input type="radio" name="optradio6">
                                        <p>No
                                        <p></label>
                                </div>


                            </form>
                        </div>
                    </div>


                    <div class="row">
                        <div class="col-sm-3"></div>
                        <div class="col-sm-3">
                            <label><p class="text-danger">Prosthetic heart valve</p></label>
                        </div>
                        <div class="col-sm-3">
                            <input type="text" class="form-control" id="usr3"
                                   placeholder="Type here">
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-sm-3"></div>
                        <div class="col-sm-3">
                            <label><p>Pacemaker</p></label>
                        </div>
                        <div class="col-sm-3">
                            <input type="text" class="form-control" id="usr4"
                                   placeholder="Type here">
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-sm-3"></div>
                        <div class="col-sm-3">
                            <label><p>Other</p></label>
                        </div>
                        <div class="col-sm-3">
                            <input type="text" class="form-control" id="usr5"
                                   placeholder="Other">
                        </div>
                    </div>
                    <b>
                        <ul class="pager">
                            <li class="previous"><a href="past_dental_history.html">Previous</a></li>
                            <li class="next"><a href="medicalRecord.html#">Next</a></li>
                        </ul>
                        <br> <br>
                </div>
            </div>
        </div>
    </div>
</div>
<s:include value="/WEB-INF/content/common/footer.jsp"></s:include>
<!-- Custom Theme Scripts -->
<s:include value="/WEB-INF/content/common/js-include.jsp"></s:include>
</body>
</html>