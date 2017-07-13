<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<div class="row" style="margin-bottom:2em;">

    <div class="col-md-8 col-md-offset-1 pull-right"> 
		
		<div class="input-group">
               
                <div class="input-group-btn search-panel">
                    <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                    	<span id="search_concept">Search By</span> <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu" role="menu">
                      <li><a href="#all">Serial Number</a></li>	
                      <li><a href="#contains">Surname</a></li>
                      <li><a href="#its_equal">First name</a></li>
                      
                      <li class="divider"></li>
                      <li><a href="#greather_than">Mobile</a></li>
                      <li><a href="#less_than">Email</a></li>
                     
                    </ul>
                </div>
                <input type="hidden" name="searchKey" value="all" id="search_param">     
                <input type="text" class="form-control" name="searchWord" placeholder="Search term...">
                <span class="input-group-btn">
                    <button class="btn btn-default" type="button"><span class="glyphicon glyphicon-search"></span></button>
                </span>
            </div>
        </div>
		<div class="col-md-3 pull-right"> 
			<s:url var="patientListUrl" namespace="/patient" action="list.html"></s:url>
			<s:url var="patientAddUrl" namespace="/patient" action="registration-form.html"></s:url>
			<s:url var="patientDeletedUrl" namespace="/patient" action="list.html"></s:url>
			
			<s:a href="%{#patientAddUrl}" cssClass="btn btn-primary" role="button">Add New</s:a>
			<s:a href="%{#patientListUrl}" cssClass="btn btn-success" role="button">List</s:a>
			<s:a href="#" cssClass="btn btn-info" role="button">Deleted</s:a>
		</div>

</div>
