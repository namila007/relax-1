package com.doerit.upload;

import java.io.File;
import java.io.IOException;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.ResourceBundle;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.interceptor.ServletRequestAware;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.interceptor.SessionAware;


public class ImageUploader extends ActionSupport {
//implements ServletRequestAware {


	private static final long serialVersionUID = 1L;

	private String PatientId;
	private File fileUpload;
	private String fileUploadContentType;
	private String fileUploadFileName;
	private List<String> imglist;

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	public String imageUpload() {
		return SUCCESS;
	}


	public String viewImage(){return SUCCESS ;}

	public String doUpload() {

		File saveFilePath = new File("D:/Academic/Computer Engineering/Projects/Dental/Git Project/relax-1/WebContent/upload/"+PatientId+"/" + fileUploadFileName);
//		File saveFilePath = new File("E:/upload/"+PatientId+"/" + fileUploadFileName);

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
//			HttpServletRequest servletRequest = null;
//			String filePath = servletRequest.getSession().getServletContext().getRealPath("/")+PatientId;
//			System.out.println("Server path:" + filePath);
//			System.out.println(servletRequest.getPart(PatientId));
//			File fileToCreate = new File(filePath, this.fileUploadFileName);
//			FileUtils.copyFile(this.fileUpload, fileToCreate);
//		} catch (Exception e) {
//			e.printStackTrace();
//			addActionError(e.getMessage());
//
//			return INPUT;
//		}
//		return SUCCESS;
//	}

	public String imagelist(){
		System.out.println("dsfd");
		List<File> list=(List<File>)FileUtils.listFiles(new File("E:/Upload/234234234234/"),new String[]{"jpeg","jpg","png"},true);

	try {
		for (File f : list) {
			imglist.add(f.getCanonicalPath().toString());
			System.out.printf(f.getCanonicalPath());
		}
	}catch(IOException e){
		e.printStackTrace();
	}

		return SUCCESS;
	}



	public void getText() {

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

	public List<String> getImglist() {
		return imglist;
	}

	public void setImglist(List<String> imglist) {
		this.imglist = imglist;
	}
//
//	@Override
//	public void setServletRequest(HttpServletRequest arg0) {
//		// TODO Auto-generated method stub
//		
//	}
}


