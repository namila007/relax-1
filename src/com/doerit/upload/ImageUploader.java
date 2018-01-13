package com.doerit.upload;

import java.io.File;
import java.io.IOException;
import javax.servlet.http.HttpServletRequest;
import org.apache.commons.io.FileUtils;
import org.apache.struts2.interceptor.ServletRequestAware;
import com.opensymphony.xwork2.ActionSupport;



public class ImageUploader extends ActionSupport {
//	implements ServletRequestAware {


	private static final long serialVersionUID = 1L;
	public String PatientId;
	public File fileUpload;
	public String fileUploadContentType;
	public String fileUploadFileName;
//	private HttpServletRequest servletRequest;

	
	public String imageUpload() {
		return SUCCESS;
	}
	
//	@Override
//	public void setServletRequest(HttpServletRequest servletRequest) {
//		this.servletRequest = servletRequest;
//
//	}
	
	public String doUpload() {
		
//		File saveFilePath = new File("E:/Upload/"+PatientId+"/" + fileUploadFileName);
		File saveFilePath = new File("D:/Academic/Computer Engineering/Projects/Dental/Git Project/relax-1/WebContent/upload/"+PatientId+"/" + fileUploadFileName);
		
		try {
			FileUtils.copyFile(fileUpload, saveFilePath);
		} catch (IOException ex) {
			System.out.println("Couldn't save file: " + ex.getMessage());
		}
		return SUCCESS;
	}
	
//	public String doUpload() {
//		try {
//
////			String filePath = servletRequest.getSession().getServletContext().getRealPath("/")+PatientId;
////			System.out.println("Server path:" + filePath);
//			System.out.println(servletRequest.getPart(PatientId));
////			File fileToCreate = new File(filePath, this.fileUploadFileName);
//
////			FileUtils.copyFile(this.fileUpload, fileToCreate);
//		} catch (Exception e) {
//			e.printStackTrace();
//			addActionError(e.getMessage());
//
//			return INPUT;
//		}
//		return SUCCESS;
//	}

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


