
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="s" uri="/struts-tags" %>


<head>
<style>
div.scrollmenu {
    background-color: #333;
    overflow: auto;
    white-space: nowrap;
}

div.scrollmenu a {
    display: inline-block;
    color: white;
    text-align: center;
    padding: 14px;
    text-decoration: none;
}

div.scrollmenu a:hover {
    background-color: #777;
}
</style>
</head>
<body>

<div class="scrollmenu">
                
             <s:url var="complaint" action="complaint" namespace="/patient"></s:url>
             <s:a  href="%{#complaint}">Home</s:a>
                          
             <s:url var="past_dental_history" action="past_dental_history" namespace="/patient"></s:url>
             <s:a class="current" href="%{#past_dental_history}">Past Dental History</s:a>
                    
             <s:url var="medical_record" action="medical_record" namespace="/patient"></s:url>
             <s:a  href="%{#medical_record}">Medical Record</s:a>
       
             <s:url var="drug_history" action="drug_history" namespace="/patient"></s:url>
             <s:a  href="%{#drug_history}">Drug History</s:a>
               
             <s:url var="diagnoseform" action="diagnose-form" namespace="/patient"></s:url>
             <s:a href="%{#diagnoseform}">Investigations & Habits</s:a>
               
             <s:url var="plaqueControl" action="plaque_control" namespace="/patient"></s:url>
             <s:a  href="%{#plaqueControl}">Plaque control & Brushing Habits</s:a>
               
               
              <s:url var="dietary_history" action="dietary_history" namespace="/patient"></s:url>
              <s:a href="%{#dietary_history}">Dietary History</s:a>

               
               <a href="#">Hard Tissue Examination</a>
               <a href="#">Occlusal Relationship</a>
               <a href="#">Treatment  Plan</a>
  
</div>

</body>

