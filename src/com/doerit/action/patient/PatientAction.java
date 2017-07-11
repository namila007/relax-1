package com.doerit.action.patient;

import com.doerit.action.AbstractManagementAction;
import com.doerit.model.Patient;

public class PatientAction extends AbstractManagementAction{

	private static final long serialVersionUID = 1L;
	
	private Patient patient;

	public String registrationForm(){
		return SUCCESS;
	}
	
	public String view(){
		return SUCCESS;
	}
	
	public String save() {
		//save code
		return SUCCESS;
	}
	
	public String edit(){
		
		return SUCCESS;
	}

	public Patient getPatient() {
		return patient;
	}

	public void setPatient(Patient patient) {
		this.patient = patient;
	}
	
	

}
