package com.doerit.util;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.Date;

import com.doerit.model.Patient;
import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Element;
import com.itextpdf.text.Font;
import com.itextpdf.text.FontFactory;
import com.itextpdf.text.PageSize;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.pdf.ColumnText;
import com.itextpdf.text.pdf.PdfContentByte;
import com.itextpdf.text.pdf.PdfPageEventHelper;
import com.itextpdf.text.pdf.PdfWriter;
import com.itextpdf.text.pdf.draw.LineSeparator;

public class PdfPatientInformation {
	
	public ByteArrayOutputStream createPdf(Patient patient) throws IOException  {
	    	
		 	FontFactory.defaultEmbedding = true;
			FontFactory.registerDirectories();

			float left = PdfSettings.LEFT;  //30 mm with 72 px/inch
			float right = PdfSettings.LEFT; //30 mm
			float top = PdfSettings.TOP;   //20 mm
			float bottom = PdfSettings.BOTTOM;  //20 mm
			
			Document document = new Document(PageSize.A4, left, right, top, bottom);
			ByteArrayOutputStream baosPDF = new ByteArrayOutputStream();
			
			try {
				PdfWriter writer = PdfWriter.getInstance(document, baosPDF);
				writer.setPageEvent(new PdfPatientHeaderFooter());
				document.open();

				Paragraph dateLabel = new Paragraph(new Date().toString(), PdfFont.getTitleNormal());
				dateLabel.setAlignment(Element.ALIGN_LEFT);
				dateLabel.setSpacingAfter(18);
		        document.add(dateLabel);
		        
		        setHorizontalLine(document);
		        
		        Paragraph personalDateSubtitle = new Paragraph("Personal Data:", PdfFont.getTitleNormal());
		        personalDateSubtitle.setAlignment(Element.ALIGN_LEFT);
		        personalDateSubtitle.setSpacingAfter(18);
		        personalDateSubtitle.add(dateLabel);
				
		        Paragraph serialLabel = new Paragraph("Serial No.:" + patient.getSerialNumber(), PdfFont.getContentNormal());
		        serialLabel.setAlignment(Element.ALIGN_LEFT);
		        serialLabel.setSpacingAfter(10);
		        //serialLabel.setSpacingBefore(20);
		        document.add(serialLabel);
		        
		        Paragraph nameLabel = new Paragraph("Name:" + patient.getTitle() + ". " + patient.getSurname() + " " + patient.getInitials(), PdfFont.getContentNormal());
		        nameLabel.setAlignment(Element.ALIGN_LEFT);
		        nameLabel.setSpacingAfter(10);
		        //nameLabel.setSpacingBefore(20);
		        document.add(nameLabel);

		        document.close();
		        
		    }catch(DocumentException e) {
		    	
		    	e.printStackTrace();
		    }

			return baosPDF;
	}
	
	public Document setHorizontalLine(Document document) throws DocumentException {

		int spacing = 5;
		
		Paragraph spaceLine = new Paragraph();
		spaceLine.setSpacingBefore(spacing);
		document.add(spaceLine);

		LineSeparator sep = new LineSeparator();

		sep.setLineWidth(1f);
		sep.setAlignment(Element.ALIGN_LEFT);
		sep.setPercentage(50);
		document.add(sep);

		return document;
	}
	 
	 class PdfPatientHeaderFooter extends PdfPageEventHelper {
			
	        Font ffont = PdfFont.getTableOfContentTitle();
	 
	        public void onEndPage(PdfWriter writer, Document document) {
	            PdfContentByte cb = writer.getDirectContent();
	            Paragraph header = PdfPatientSettings.HEADER();
	            Phrase footer = new Phrase(PdfPatientSettings.FOOTER(), ffont);
	            ColumnText.showTextAligned(cb, Element.ALIGN_LEFT,
	                    header,
	                    document.leftMargin(),
	                    document.top() + 15, 0);
	            
	            ColumnText.showTextAligned(cb, Element.ALIGN_CENTER,
	                    footer,
	                    (document.right() - document.left()) / 2 + document.leftMargin(),
	                    document.bottom() - 30, 0);
	        }
	    }

}
