package com.doerit.action.patient;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.doerit.action.AbstractManagementAction;
import com.doerit.model.District;
import com.doerit.model.Patient;
import com.doerit.service.DistrictService;
import com.doerit.service.PatientService;
import com.doerit.util.State;

public class PatientAction extends AbstractManagementAction {

	private static final long serialVersionUID = 1L;

	@Autowired PatientService patientService;
	@Autowired DistrictService districtService;

	private Patient patient;
	private List<Patient> patients;
	
	public String registrationForm() {
		return SUCCESS;
	}

	public String view() {
		if(getId() != null) {
			patient = patientService.viewById(getId());
		} else {
			addActionError("Invalid access");
		}
		return SUCCESS;
	}
	
	public String viewAll() {
		this.patients = patientService.viewAll(State.ACTIVE);
		return SUCCESS;
	}

	public String save() {

		if (patient != null) {

			if (patient.getId() != null && !patient.getId().isEmpty()) {
				
				int updated = patientService.update(patient);

				if (updated == 1) {
					addActionMessage("Inserted");
					this.id = patient.getId();
					return view();
				} else {
					addActionError("Not inserted");
					return INPUT;
				}
			} else {
				patient.setId(generatePrimaryKey());
				
				int inserted = patientService.save(patient);
				System.out.println(inserted);
				if (inserted == 1) {
					addActionMessage("Inserted");
					
					this.id = patient.getId();
					return view();
				} else {
					addActionError("Not inserted");
					return INPUT;
				}
			}
		} else {
			return INPUT;
		}
	}

	public String edit() {

		return SUCCESS;
	}

	public Patient getPatient() {
		return patient;
	}

	public void setPatient(Patient patient) {
		this.patient = patient;
	}
	
	public List<District> getDistricts() {
		return districtService.viewAll();
	}

	public List<Patient> getPatients() {
		return patients;
	}

	public void setPatients(List<Patient> patients) {
		this.patients = patients;
	}
	
}
