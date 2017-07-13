package com.doerit.action.patient;

import org.springframework.beans.factory.annotation.Autowired;

import com.doerit.action.AbstractManagementAction;
import com.doerit.model.Patient;
import com.doerit.service.PatientService;

public class PatientAction extends AbstractManagementAction{

	private static final long serialVersionUID = 1L;
	
	@Autowired PatientService patientService;
	
	private Patient patient;

	public String registrationForm(){
		return SUCCESS;
	}
	
	public String view(){
		return SUCCESS;
	}
	
	public String save() {
		if(getId() != null && patient != null) {
			patient.setId(generatePrimaryKey());
			
			int inserted = patientService.save(patient);
			
			if(inserted == 1) {
				addActionMessage("Inserted");
				return SUCCESS;
			} else {
				addActionError("Not inserted");
				return ERROR;
			}
			
		} else {
			return INPUT;
		}
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
