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

<head>
    <s:include value="/WEB-INF/content/common/meta-tags.jsp"></s:include>
    <title><s:text name="global.application.title"/></title>
    <s:include value="/WEB-INF/content/common/css-include.jsp"></s:include>
    <!-- custom css for diagnostic menu bar starts-->
    <link href="<s:url value="/css/menubar.css" includeParams="none"/>" rel="stylesheet" type="text/css">
    <!-- custom css for diagnostic menu bar ends-->
    <style type="text/css">
    	
.row{
		padding:7px;
		 margin-left:15px;
		
	}
 nav.navbar-default{
	background-color:#26C419;
	margin:0;
	font-color:red;
	font-size:15px;
	margin-bottom:20px;
	
}#text1{
	height:70px;}
	
#text2{
	height:150px;
	width:500px;}
nav.navbar-nav{
	padding-bottom:30px;
	}

 input[type=text] {
   font-size:20;
   padding-left:8px;
   width:250px;
   border-radius:5px;
   border-color:black;
   border-width:1px;
   height:40px;
}
#printbtn {

width:150px;   
}
    	
    
    
    </style>

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

<div class="container-fluid">
  <form class="form-horizontal" action="/action_page.php">
	<div class="row">
	
		<label class="col-sm-2">Anticoagulants</label>
		<div class="col-sm-2"><input type="checkbox" name="Warfarin" value="Warfarin" >Warfarin<br></div>
		<div class="col-sm-4"><input type="text" name="Dose_Warfarin" placeholder="Dose Regime" ><br></div>
		<div class="col-sm-4"><input type="text" name="Duration_Warfarin" placeholder="Duration" ><br></div>
	</div>
	<div class="row">
	
		<div class="col-sm-2"></div>
		<div class="col-sm-2"><input type="checkbox" name="Clopidogrel" value="Clopidogrel" >Clopidogrel<br></div>
		<div class="col-sm-4"><input type="text" name="Dose_Clopidogrel" placeholder="Dose Regime" ><br></div>
		<div class="col-sm-4"><input type="text" name="Duration_Clopidogrel" placeholder="Duration" ><br></div>
	</div>
	<div class="row">
	
		<div class="col-sm-2"></div>
		<div class="col-sm-2"><input type="checkbox" name="Aspirin" value="Aspirin" >Aspirin<br></div>
		<div class="col-sm-4"><input type="text" name="Dose_Aspirin" placeholder="Dose Regime" ><br></div>
		<div class="col-sm-4"><input type="text" name="Duration_Aspirin" placeholder="Duration" ><br></div>
	</div>
	
	<div class="row">
	
		<div class="col-sm-2"></div>
		<div class="col-sm-2"><input type="checkbox" name="Other" value="Other" >Other<br></div>
		
			<div class="col-sm-4"><input type="text" id="text1" name="Comments" placeholder="Type if any other comments"  ></div>
			
			<div class="col-sm-4"><input type="text" name="Duration_Other" placeholder="Duration" ></div>
		
			
	</div>
	
	<div class="row">
	
		<label class="col-sm-3">Antidiabetes</label>
		<div class="col-sm-3"><input type="text" name="Antidiabetes" placeholder="Antidiabetes"><br></div>
		<div class="col-sm-3"><input type="text" name="Dose_Antidiabetes" placeholder="Dose Regime"><br></div>
		<div class="col-sm-3"><input type="text" name="Duration_Antidiabetes" placeholder="Duration"><br></div>
	</div>
	
	<div class="row">
	
		<label class="col-sm-3">Anti Epileptic</label>
		<div class="col-sm-3"><input type="text" name="Anti Epileptic" placeholder="Anti Epileptic"><br></div>
		<div class="col-sm-3"><input type="text" name="Dose_AntiEpileptic" placeholder="Dose Regime"><br></div>
		<div class="col-sm-3"><input type="text" name="Duration_AntiEpileptic" placeholder="Duration"><br></div>
	</div>
	
	<div class="row">
	
		<label class="col-sm-3">Antihypertensives</label>
		<div class="col-sm-3"><input type="text" name="Antihypertensivesc" placeholder="Antihypertensivesc"><br></div>
		<div class="col-sm-3"><input type="text" name="Dose_Antihypertensives" placeholder="Dose Regime"><br></div>
		<div class="col-sm-3"><input type="text" name="Duration_Antihypertensives" placeholder="Duration"><br></div>
	</div>
	
	<div class="row">
	
		<label class="col-sm-3">NSAIDS </label>
		<div class="col-sm-3"><input type="text" name="NSAIDS" placeholder="NSAIDS"><br></div>
		<div class="col-sm-3"><input type="text" name="Dose_NSAIDS" placeholder="Dose Regime"><br></div>
		<div class="col-sm-3"><input type="text" name="Duration_NSAIDS" placeholder="Duration"><br></div>
	</div>
	
	<div class="row">
	
		<label class="col-sm-3">Steroids </label>
		<div class="col-sm-3"><input type="text" name="Steroids " placeholder="Steroids "><br></div>
		<div class="col-sm-3"><input type="text" name="Dose_Steroids " placeholder="Dose Regime"><br></div>
		<div class="col-sm-3"><input type="text" name="Duration_Steroids " placeholder="Duration"><br></div>
	</div>
	
	<div class="row">
	
		<label class="col-sm-3">Chemotherapy </label>
		<div class="col-sm-3"><input type="text" name="Chemotherapy  " placeholder="Chemotherapy  "><br></div>
		<div class="col-sm-3"><input type="text" name="Dose_Chemotherapy  " placeholder="Dose Regime"><br></div>
		<div class="col-sm-3"><input type="text" name="Duration_Chemotherapy  " placeholder="Duration"><br></div>
	</div>
	
	<div class="row">
	
		<label class="col-sm-3">Radiation therapy </label>
		<div class="col-sm-3"><input type="text" name="Duration_RadiationTherapy  " placeholder="Duration"><br></div>
	</div>
	
	<div class="row">
	
		<label class="col-sm-3">Others</label>
		<div class="col-sm-8"><input type="text" id="text2" name="Others" placeholder="Type if any other details"><br></div>
		
	</div>
	 <div class="row">
	<div class="col-sm-10"></div>
	<!--  <button id="printbtn" type="button" class="btn btn-primary btn-lg">Next</button>-->
	</div>
	
</form>
 </div>
 </body>
<s:include value="/WEB-INF/content/common/footer.jsp"></s:include>
<!-- Custom Theme Scripts -->
<s:include value="/WEB-INF/content/common/js-include.jsp"></s:include>
</div>
</div>
</div>
</div>
</body>


</html>