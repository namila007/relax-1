
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="s" uri="/struts-tags" %>


<nav class="navbar navbar-inverse" style="background-color: #66cb32;border-color: #3cc04a; color: #36c02e;">
    <div class="container-fluid ">

			<ul class="nav navbar-nav navbarcurrent">
                <li >
                    <s:url var="complaint" action="complaint" namespace="/patient"></s:url>
                    <s:a  href="%{#complaint}">Home</s:a>
                </li>
                <li >
                    <s:url var="past_dental_history" action="past_dental_history" namespace="/patient"></s:url>
                    <s:a class="current" href="%{#past_dental_history}">Past Dental History</s:a>
                </li>
                <li>
                    <s:url var="medical_record" action="medical_record" namespace="/patient"></s:url>
                    <s:a  href="%{#medical_record}">Medical Record</s:a>
                </li>
    
               <li class="investigations">
                     <s:url var="drug_history" action="drug_history" namespace="/patient"></s:url>
                    <s:a  href="%{#drug_history}">Drug History</s:a>
                </li>                              
                <li >
                	<s:url var="diagnoseform" action="diagnose-form" namespace="/patient"></s:url>
                    <s:a href="%{#diagnoseform}">Investigations & Habits</s:a>
                </li>
                
                <li>
                    <s:url var="plaqueControl" action="plaque_control" namespace="/patient"></s:url>
                    <s:a  href="%{#plaqueControl}">Plaque control & Brushing Habits</s:a>
                </li>
                <li>
                    <s:url var="dietary_history" action="dietary_history" namespace="/patient"></s:url>
                    <s:a href="%{#dietary_history}">Dietary History</s:a>

                </li>
                <li class="hardtissue"><a href="#">Hard Tissue Examination</a></li>
                <li class="occlusal"><a href="#">Occlusal Relationship</a></li>
                <li class="treatmentplan"><a href="#">Treatment  Plan</a></li>

            </ul>

    </div>  <!-- container-fluid -->
</nav>