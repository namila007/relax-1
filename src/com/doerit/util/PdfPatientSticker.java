package com.doerit.util;

import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import javax.imageio.ImageIO;

import com.doerit.model.Patient;
import com.itextpdf.text.Rectangle;
import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Element;
import com.itextpdf.text.FontFactory;
import com.itextpdf.text.Image;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfWriter;

public class PdfPatientSticker {

	public ByteArrayOutputStream createPdf(Patient patient) throws DocumentException, IOException {
		
		FontFactory.defaultEmbedding = true;
		FontFactory.registerDirectories();

		float left = 5;
		float right = 5;
		float top = 5;
		float bottom = 5;
		float stickerWidth = 140;
		float stickerHeight = 70;
		Rectangle stickerSize = new Rectangle(stickerWidth, stickerHeight);
		Document document = new Document();
		document.setPageSize(stickerSize);
		document.setMargins(left, right, top, bottom);
		ByteArrayOutputStream baosPDF = new ByteArrayOutputStream();

	
		PdfWriter writer = PdfWriter.getInstance(document, baosPDF);
		document.open();

		BufferedImage bufferedImage = BarCodeImageUtility.createBarCode(patient.getSerialNumber(), 30f);
		ByteArrayOutputStream baos = new ByteArrayOutputStream();

		ImageIO.write(bufferedImage, "png", baos);
		Image barCode = Image.getInstance(baos.toByteArray());
		barCode.setAlignment(Element.ALIGN_CENTER);
		document.add(barCode);

        Paragraph patientSerialParagraph = new Paragraph(patient.getSerialNumber(), PdfFont.SuperScriptNormal);
        patientSerialParagraph.setAlignment(Element.ALIGN_CENTER);
        document.add(patientSerialParagraph);	        

		
        Paragraph patientNameParagraph = new Paragraph(patient.getPrintNameForSticker(), PdfFont.SuperScriptNormal);
        patientNameParagraph.setAlignment(Element.ALIGN_CENTER);
        document.add(patientNameParagraph);	        
		
		document.close();

		return baosPDF;
	}

	
}
