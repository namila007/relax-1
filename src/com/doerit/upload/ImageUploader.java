package com.doerit.upload;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.ResourceBundle;

import org.apache.commons.io.FileUtils;
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
import org.apache.struts2.interceptor.SessionAware;


public class ImageUploader extends ActionSupport {

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

		File saveFilePath = new File("E:/Upload/"+PatientId+"/" + fileUploadFileName);

		try {
			FileUtils.copyFile(fileUpload, saveFilePath);
		} catch (IOException ex) {
			System.out.println("Couldn't save file: " + ex.getMessage());
		}
		return SUCCESS;
	}

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
}


