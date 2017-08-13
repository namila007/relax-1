package com.doerit.action.report;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.doerit.action.AbstractManagementAction;
import com.doerit.model.TotalRegistrations;
import com.doerit.service.PatientService;
import com.doerit.util.State;

public class ReportAction extends AbstractManagementAction{ 
	
	private static final long serialVersionUID = 1L;
	private String customReportDate;
	private TotalRegistrations register;
	
	@Autowired private PatientService patientService;
	
	public String getDaily() {
		return customReportDate;
	}

	public void setDaily(String dailyDay) {
		this.customReportDate = dailyDay;
	}
	
	public String dashboard() {
		return SUCCESS;
	}
	
	public String weeklyReport() {
		return SUCCESS;
	}
	
	public String dailyReport() {
		
		try {
			
			if(this.customReportDate == null) {
				this.customReportDate = new SimpleDateFormat("yyy-MM-dd").format(new Date());
			}
			
			beforeAction();
			pager = patientService.viewAllByPagerAndDate(pager, this.customReportDate);
			pager = setActionContext(pager);
			register = patientService.getTotals(RegTotal, "2017-08-09");
			//System.out.println(RegTotal.getTotal());
			
		} catch (Exception e) {
			addActionError("Exception occur");
			//logger
			e.printStackTrace();
		}
		return SUCCESS;
	}
	
	

}
