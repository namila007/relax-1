<%--
  Created by IntelliJ IDEA.
  User: Namila
  Date: 11/28/2017
  Time: 8:46 PM
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


</head>

<body class="nav-md">
<div class="container body">
    <div class="main_container">

        <s:include value="/WEB-INF/content/common/title-bar.jsp"></s:include>
        <s:include value="/WEB-INF/content/common/top-bar.jsp"></s:include>

        <!-- page content -->
        <div class="right_col" role="main">

            <!-- nav bar -->
            <div class="menu">
                <s:include value="/WEB-INF/content/patient/diagnostic/common/navbar.jsp"/>
            </div>
            <!-- ed of nav bar -->
            <div class="container">

                <div class="row">
                    <div class="col-sm-3">

                        <h4>Extraction:</h4>
                    </div>

                    <div class="col-sm-3">
                        <form>

                            <div class="radio radio-info">
                                <label><input type="radio" name="optradio"><p>Yes<p></label>
                            </div>

                            <div class="radio radio-info">
                                <label><input type="radio" name="optradio"><p>No<p></label>
                            </div>


                        </form>

                    </div>

                    <div class="col-sm-3">
                        <h4>Complications :</h4>
                    </div>

                    <div class="col-sm-3">
                        <form>

                            <div class="radio radio-info">
                                <label><input type="radio" name="optradio"><p>Yes<p></label>
                            </div>

                            <div class="radio radio-info">
                                <label><input type="radio" name="optradio"><p>No<p></label>
                            </div>


                        </form>

                    </div>


                </div>

                <div class = "row">
                    <div class="col-sm-3">
                        <h4>Other Minor/Major Oral Surgery?</h4>
                    </div>

                    <div class="col-sm-3">
                        <form>

                            <div class="radio-inline radio-info">
                                <label><input type="radio" name="optradio"><p>Yes<p></label>
                            </div>

                            <div class="radio-inline radio-info">
                                <label><input type="radio" name="optradio"><p>No<p></label>
                            </div>


                        </form>

                    </div>



                </div>


                <div class = "row">
                    <div class="col-sm-3">
                        <h4>Periodontal Rx?</h4>
                    </div>

                    <div class="col-sm-3">
                        <form>
                            <div class="radio-inline radio-info">
                                <label><input type="radio" name="optradio2"><p>No<p></label>
                            </div>

                            <div class="radio-inline radio-info">
                                <label><input type="radio" name="optradio2" ><p>Yes<p></label>
                            </div>
                        </form>
                    </div>
                    <div class="col-sm-3">

                        <select class="form-control" name = "mal">
                            <option value="select1">Scaling</option>
                            <option value="select2">Root Debridement</option>
                            <option value="select3">Surgical Perio Rx</option>
                            <option value="select4">Maintenance Care</option>
                        </select>

                    </div>
                </div>

                <div class = "row">
                    <div class="col-sm-3">
                        <h4>Orthodontic Treatment :</h4>
                    </div>

                    <div class="col-sm-3">
                        <br>
                        <form>

                            <div class="radio-inline radio-info">
                                <label><input type="radio" name="optradio"><p>Yes<p></label>
                            </div>

                            <div class="radio-inline radio-info">
                                <label><input type="radio" name="optradio"><p>No<p></label>
                            </div>


                        </form>

                    </div>



                </div>




                <div class = "row">
                    <div class="col-sm-3"></div>
                    <div class="col-sm-3"><h4>Complications:</h4></div>

                    <div class="col-sm-3">
                        <input type="text" class="form-control" id="usr" placeholder="Type here">
                    </div>



                </div>


                <div class = "row">
                    <div class="col-sm-3">
                        <h4>Restorative Rx/Prosthesis?</h4>
                    </div>

                    <div class="col-sm-3">
                        <br>
                        <form>

                            <div class="radio-inline radio-info">
                                <label><input type="radio" name="optradio"><p>Yes<p></label>
                            </div>

                            <div class="radio-inline radio-info">
                                <label><input type="radio" name="optradio"><p>No<p></label>
                            </div>


                        </form>

                    </div>



                </div>

                <div class = "row">
                    <div class="col-sm-3"></div>
                    <div class="col-sm-3"><h4>Complications:</h4></div>

                    <div class="col-sm-3">
                        <input type="text" class="form-control" id="usr" placeholder="Type here">
                    </div>
                </div>
                <b>
                    <ul class="pager">
                        <li class="previous"><a href="#">Previous</a></li>
                        <li class="next"><a href="medical_record.html">Next</a></li>
                    </ul>
                    <br>
                    <br>
            </div>
        </div>


</body>
</html>