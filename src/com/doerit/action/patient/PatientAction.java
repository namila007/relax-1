package com.doerit.action.patient;

import org.springframework.beans.factory.annotation.Autowired;

import com.doerit.action.AbstractManagementAction;
import com.doerit.model.Patient;
import com.doerit.service.PatientService;

public class PatientAction extends AbstractManagementAction {

	private static final long serialVersionUID = 1L;

	@Autowired
	PatientService patientService;

	private Patient patient;

	public String registrationForm() {
		return SUCCESS;
	}

	public String view() {
		return SUCCESS;
	}

	public String save() {

		System.out.println("Called");
		if (patient != null) {

			if (patient.getId() != null && !patient.getId().isEmpty()) {
				
				int updated = patientService.update(patient);

				if (updated == 1) {
					addActionMessage("Inserted");
					return SUCCESS;
				} else {
					addActionError("Not inserted");
					return INPUT;
				}
			} else {
				System.out.println(patient);
				patient.setId(generatePrimaryKey());
				
				int inserted = patientService.save(patient);
				System.out.println(inserted);
				if (inserted == 1) {
					addActionMessage("Inserted");
					return SUCCESS;
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

}
