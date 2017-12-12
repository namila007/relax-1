package com.doerit.upload;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.apache.commons.io.FileUtils;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.interceptor.ServletRequestAware;
/*import org.springframework.beans.factory.annotation.Autowired;

import com.doerit.action.AbstractDownloadManamentAction;
import com.doerit.model.District;
import com.doerit.model.Patient;
import com.doerit.model.PatientAdditionalProperty;
import com.doerit.model.PatientGuardianWithBLOBs;
import com.doerit.service.DistrictService;
import com.doerit.service.PatientAdditionalPropertyService;
import com.doerit.service.PatientGuardianService;
import com.doerit.service.PatientService;
import com.doerit.util.PdfPatientInformation;
import com.doerit.util.PdfPatientSticker;
import com.doerit.util.State;
import com.itextpdf.text.DocumentException;*/
import com.opensymphony.xwork2.ActionSupport;



public class ImageUploader extends ActionSupport {

	private static final long serialVersionUID = 1L;
	public String PatientId;
	public File fileUpload;
	public String fileUploadContentType;
	public String fileUploadFileName;
	private HttpServletRequest servletRequest;


	
	public String imageUpload() {
		return SUCCESS;
	}
	
	public String doUpload() {
		
		File saveFilePath = new File("E:/Upload/"+PatientId+"/" + fileUploadFileName);
		try {
			FileUtils.copyFile(fileUpload, saveFilePath);
		} catch (IOException ex) {
			System.out.println("Couldn't save file: " + ex.getMessage());
		}
		return SUCCESS;
	}

	public String getPatientId() {
		return PatientId;
	}

	public void setPatientId(String patientId) {
		PatientId = patientId;
	}

	public File getFileUpload() {
		return fileUpload;
	}

	public void setFileUpload(File fileUpload) {
		this.fileUpload = fileUpload;
	}

	public String getFileUploadContentType() {
		return fileUploadContentType;
	}

	public void setFileUploadContentType(String fileUploadContentType) {
		this.fileUploadContentType = fileUploadContentType;
	}

	public String getFileUploadFileName() {
		return fileUploadFileName;
	}

	public void setFileUploadFileName(String fileUploadFileName) {
		this.fileUploadFileName = fileUploadFileName;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	

	
	
	
		
}


