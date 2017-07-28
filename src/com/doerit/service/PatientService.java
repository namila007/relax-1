package com.doerit.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.doerit.dao.PatientMapper;
import com.doerit.model.Patient;
import com.doerit.util.Pager;
import com.doerit.util.State;

@Service
public class PatientService extends AbstractService {

	@Autowired
	private PatientMapper patientMapper;
	
	public Patient viewById(String id) {
		return patientMapper.viewByPrimaryKey(id);
	}
	
	public int save(Patient patient) {
		return patientMapper.insert(patient);
	}
	
	public int update(Patient patient) {
		return patientMapper.updateByPrimaryKeySelective(patient);
	}
	

	public List<Patient> search(String searchKey, String searchWord) { 
		
		switch (searchKey) {
			case "serial":
				return patientMapper.searchBySerial("%" + searchWord + "%", State.ACTIVE.getDatabaseValue());
			case "surname":
				return patientMapper.searchBySurname("%" + searchWord + "%", State.ACTIVE.getDatabaseValue());
			case "firstname":
				return patientMapper.searchByFirstName("%" + searchWord + "%", State.ACTIVE.getDatabaseValue());
			case "mobile":
				return patientMapper.searchByMobile("%" + searchWord + "%", State.ACTIVE.getDatabaseValue());
			case "email":
				return patientMapper.searchByEmail("%" + searchWord + "%", State.ACTIVE.getDatabaseValue());
		}
		
		return new ArrayList<>();
		
	}

	public int delete(String id) {
		return patientMapper.deleteByPrimaryKey(id);
	}
	
	public int findMonthlyCount(String yearMonthPrefix) {
		return patientMapper.findMonthlyRegistrations(yearMonthPrefix + "%");
	}
	
	public Pager viewAllByPagerAndStatus(Pager p, byte state) {
		
		p.setList(patientMapper.viewAllByStatus(p, state));
		p.setTotal(patientMapper.countAllByStatus(state));
		
		return p;
	}
}
