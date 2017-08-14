package com.doerit.action.report;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.doerit.action.AbstractDownloadManamentAction;
import com.doerit.model.Patient;
import com.doerit.model.TotalRegistrations;
import com.doerit.service.PatientService;
import com.doerit.util.PdfReportInformation;
import com.doerit.util.State;
import com.itextpdf.text.DocumentException;

public class ReportAction extends AbstractDownloadManamentAction{ 
	
	private static final long serialVersionUID = 1L;
	private String customDate;
	private TotalRegistrations register;
	
	@Autowired private PatientService patientService;
	
	public TotalRegistrations getRegister() {
		return register;
	}

	public void setRegister(TotalRegistrations register) {
		this.register = register;
	}
	
	public String getCustomDate() {
		return customDate;
	}

	public void setCustomDate(String dailyDay) {
		this.customDate = dailyDay;
	}
	
	public String dashboard() {
		return SUCCESS;
	}
	
	public String weeklyReport() {
		return SUCCESS;
	}
	
	
	
	public String dailyReport() {
		
		try {
			
			setDefaultDate();
			beforeAction();
			pager = patientService.viewAllByPagerAndDate(pager, this.customDate);
			pager = setActionContext(pager);
			setRegister(patientService.getTotals(RegTotal, this.customDate));
			//System.out.println(RegTotal.getTotal());
			
		} catch (Exception e) {
			addActionError("Exception occur");
			//logger
			e.printStackTrace();
		}
		return SUCCESS;
	}

	public String patientReportPdf() {	
	
		try {
			setDefaultDate();
			List<Patient> patients = patientService.viewAllByDate(this.customDate);
			setRegister(patientService.getTotals(RegTotal, this.customDate));
			
			PdfReportInformation pdfReporttInformation = new PdfReportInformation();
			ByteArrayOutputStream baos = pdfReporttInformation.createPdf(patients, this.register, this.customDate);
			return download(baos, "Daily");
			
		} catch (DocumentException e) {
			e.printStackTrace();
			addActionError(e.getMessage());
			return SUCCESS;
		} catch (IOException e) {
			e.printStackTrace();
			addActionError(e.getMessage());
			return SUCCESS;
		}
		
		
	}
	
	private String download(ByteArrayOutputStream baos, String prefix) {
		byte[] pdfFile = baos.toByteArray();
		setFileInputStream(new ByteArrayInputStream(pdfFile));

		String dateString = new SimpleDateFormat("yyyyMMdd_HHmm").format(new Date());
		setFileName(prefix + dateString + ".pdf");
		return SUCCESS;
	}
	
	public void setDefaultDate() {
		if(this.customDate == null) {
			this.customDate = new SimpleDateFormat("yyyy-MM-dd").format(new Date());
		}
	}
	
	

}
