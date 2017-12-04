<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>


<head>
<style>


.navbar-default{
	overflow: auto;
	background-color: #147631;	
	
}


.navbar-default .navbar-nav{
	width:100%;
     display: inline-block;

     background-color: #147631;	
}


.navbar-default .navbar-nav > li{

	width:10%;
	background-color: #1471;
	font-size: 13px;
	text-align: center;
}


.navbar-default .navbar-nav > a {	
	float: left;
	color: #f2f2f2;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
	font-size: 13px;
	
}



.navbar-default .navbar-nav > li > a:hover{

	background-color: #258c44;
	color: black;
	height: 153px;
}

.navbar-default .navbar-nav a.active{
	background-color: #CF50;
	color: white;
}
</style>

<script>
	function openCity(evt, cityName) {
		var i, tabcontent, tablinks;
		tablinks = document.getElementsByClassName("tablinks");
		for (i = 0; i < tablinks.length; i++) {
			tablinks[i].className = tablinks[i].className
					.replace(" active", "");
		}
		document.getElementById(cityName).style.display = "block";
		evt.currentTarget.className += " active";
	}
</script>

</head>
<body>

	
<nav class="navbar navbar-default">

  <div class="container-fluid">

    <div class="navbar-header">

      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>

      </div>

  

    <!-- Collect the nav links, forms, and other content for toggling -->

    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

      <ul class="nav navbar-nav">

				<li>	<s:url var="complaint" action="complaint" namespace="/patient"></s:url>
					<s:a href="%{#complaint}" id="Home" class="tablinks"
						onclick="openCity(event, 'Home')"><br>Home</s:a></li>

				<li>	<s:url var="past_dental_history" action="past_dental_history"
						namespace="/patient"></s:url>
					<s:a href="%{#past_dental_history}" id="PastDentalHistory"
						class="tablinks" onclick="openCity(event, 'PastDentalHistory')"><br>Past Dental<br> History</s:a></li>

				<li>	<s:url var="medical_record" action="medical_record"
						namespace="/patient"></s:url>
					<s:a href="%{#medical_record}" id="MedicalRecords" class="tablinks"
						onclick="openCity(event, 'MedicalRecords')"><br>Medical <br>Record</s:a></li>

				<li>	<s:url var="drug_history" action="drug_history"
						namespace="/patient"></s:url>
					<s:a href="%{#drug_history}" id="DrugHistory" class="tablinks"
						onclick="openCity(event, 'DrugHistory')"><br>Drug History</s:a></li>

				<li>	<s:url var="diagnoseform" action="diagnose-form"
						namespace="/patient"></s:url>
					<s:a href="%{#diagnoseform}" id="Investigation&Habits"
						class="tablinks" onclick="openCity(event, 'Investigation&Habits')"><br>Investigations <br>& Habits</s:a></li>

				<li>	<s:url var="plaqueControl" action="plaque_control"
						namespace="/patient"></s:url>
					<s:a href="%{#plaqueControl}" id="PlaqueControl&BrushingHabits"
						class="tablinks"
						onclick="openCity(event, 'PlaqueControl&BrushingHabits')">Plaque <br>control <br>& Brushing <br>Habits</s:a></li>


				<li>	<s:url var="dietary_history" action="dietary_history"
						namespace="/patient"></s:url>
					<s:a href="%{#dietary_history}" id="DietaryHistory"
						class="tablinks" onclick="openCity(event, 'DietaryHistory')"><br>Dietary<br> History</s:a></li>


				<li>	<s:a href="#" id="HardTissueExam" class="tablinks"
						onclick="openCity(event, 'HardTissueExam')"><br>Hard Tissue<br> Examination</s:a></li>
				<li>	<s:a href="#" id="Occlusal" class="tablinks"
						onclick="openCity(event, 'Occlusal')"><br>Occlusal<br> Relationship</s:a></li>
				<li>	<s:a href="#" id="TreatmentPlan" class="tablinks"
						onclick="openCity(event, 'TreatmentPlan')"><br>Treatment<br> Plan</s:a></li>

      </ul>



    


    </div>

  </div>

  <!-- /.container-fluid -->

</nav>

</body>

