package com.doerit.action.patient;

import java.util.Calendar;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.doerit.action.AbstractManagementAction;
import com.doerit.model.District;
import com.doerit.model.Patient;
import com.doerit.model.PatientAdditionalProperty;
import com.doerit.service.DistrictService;
import com.doerit.service.PatientAdditionalPropertyService;
import com.doerit.service.PatientService;
import com.doerit.util.State;

public class PatientAction extends AbstractManagementAction {

	private static final long serialVersionUID = 1L;

	@Autowired PatientService patientService;
	@Autowired DistrictService districtService;
	@Autowired PatientAdditionalPropertyService patientAdditionalPropertyService;

	private Patient patient;
	private List<Patient> patients;
	private List<PatientAdditionalProperty> patientAdditionalProperties;
	private String searchKey;
	private String searchWord;
	
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
	
	public String viewProperties() {
		if(getId() != null) {
			patientAdditionalProperties = patientAdditionalPropertyService.viewByPatientId(getId());
		} else {
			addActionError("Invalid access");
		}
		return SUCCESS;
	}
	
	public String viewAll() {
		this.patients = patientService.viewAll(State.ACTIVE);
		return SUCCESS;
	}
	
	public String viewAllHidden() {
		this.patients = patientService.viewAll(State.DELETED);
		return SUCCESS;
	}
	
	public String search() {
		
		patients = patientService.search(this.searchKey, this.searchWord);
		return SUCCESS;
	}

	public String save() {

		if (patient != null) {

			if (patient.getId() != null && !patient.getId().isEmpty()) {
				
				int updated = patientService.update(patient);

				if (updated == 1) {
					addActionMessage("Updated");
					addUpdateSettings(patient);
					this.id = patient.getId();
					return view();
				} else {
					addActionError("Not updated");
					return INPUT;
				}
			} else {
				patient.setId(generatePrimaryKey());
				patient.setSerialNumber(createSerialNumber());
				addInsertSettings(patient);
				patient.setStatus(State.ACTIVE.getDatabaseValue());
				int inserted = patientService.save(patient);
				
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
		return view();
	}
	
	public String deleteTemporary(){
		
		view();
		
		if(patient != null){
			patient.setStatus(State.DELETED.getDatabaseValue());
			return save();
		} 
		
		addActionError("Record was not updated");
		return viewAll();
	}
	
	public String deletePermonent(){
		
		if(getId() != null) {
			patientService.delete(getId());
		}
		
		return viewAll();
	}
	
	private String createSerialNumber() {
		Calendar calendar = Calendar.getInstance();
		int year = calendar.get(Calendar.YEAR) % 100; //take last two digits
		int month = calendar.get(Calendar.MONTH) + 1; //java month zero basis
		
		String serial = String.valueOf(year);
		if(month < 9){
			serial += "0";  //make month two digits
		}
		serial += String.valueOf(month);
		
		int previousCount = patientService.findMonthlyCount(serial);
		previousCount++;
		
		serial += String.format("%04d", previousCount);  //make count 4 digits
		
		return serial;
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

	public String getSearchKey() {
		return searchKey;
	}

	public void setSearchKey(String searchKey) {
		this.searchKey = searchKey;
	}

	public String getSearchWord() {
		return searchWord;
	}

	public void setSearchWord(String searchWord) {
		this.searchWord = searchWord;
	}

	public List<PatientAdditionalProperty> getPatientAdditionalProperties() {
		return patientAdditionalProperties;
	}

	public void setPatientAdditionalProperties(List<PatientAdditionalProperty> patientAdditionalProperties) {
		this.patientAdditionalProperties = patientAdditionalProperties;
	}
		
}
