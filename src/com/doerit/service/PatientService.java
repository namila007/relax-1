package com.doerit.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.doerit.dao.PatientMapper;
import com.doerit.model.Patient;
import com.doerit.util.State;

@Service
public class PatientService {

	@Autowired
	private PatientMapper patientMapper;
	
	public Patient viewById(String id) {
		return patientMapper.selectByPrimaryKey(id);
	}
	
	public int save(Patient patient) {
		return patientMapper.insert(patient);
	}
	
	public int update(Patient patient) {
		return patientMapper.updateByPrimaryKeySelective(patient);
	}
	
	public List<Patient> viewAll(State state) {
		return patientMapper.viewAllByStatus(state.getDatabaseValue());
	}

	public List<Patient> search(String searchKey, String searchWord) {
		return patientMapper.search("%"+searchWord+"%", State.ACTIVE.getDatabaseValue());
	}
}
