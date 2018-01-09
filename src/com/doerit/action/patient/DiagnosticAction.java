package com.doerit.action.patient;




import com.doerit.action.AbstractDownloadManamentAction;
import com.doerit.model.diagnostic.Complaint;
import com.doerit.service.DiagnosticSerivce;
import org.springframework.beans.factory.annotation.Autowired;

import com.doerit.util.State;


public class DiagnosticAction extends AbstractDownloadManamentAction {

    private static final long serialVersionUID = 1L;

    @Autowired
    DiagnosticSerivce diagnosticSerivce;
    private Complaint complaint;

    public String saveComplaint(){

        if(complaint.getId()==null){
            complaint.setId(generatePrimaryKey());
            System.out.println(complaint.getComplaint()+"   "+complaint.getId()+"   <<<complain");

            addInsertSettings(complaint);
            complaint.setStatus(State.ACTIVE.getDatabaseValue());
        }

         int i=diagnosticSerivce.insertComplaint(complaint);
        System.out.println(i +" number");
        if(i==1) {
            System.out.println("done");
            return "success";
        }
        else return "error";
    }





    public Complaint getComplaint() {
        return complaint;
    }

    public void setComplaint(Complaint complaint) {
        this.complaint = complaint;
    }
}
