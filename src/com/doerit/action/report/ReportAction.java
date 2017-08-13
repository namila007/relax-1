package com.doerit.action.report;

import org.springframework.beans.factory.annotation.Autowired;

import com.doerit.action.AbstractManagementAction;
import com.doerit.service.PatientService;

public class ReportAction extends AbstractManagementAction{ 
	
	private static final long serialVersionUID = 1L;

	@Autowired private PatientService patientService;
	
	public String dashboard() {
		return SUCCESS;
	}

}
