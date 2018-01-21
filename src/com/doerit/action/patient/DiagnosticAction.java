package com.doerit.action.patient;




import com.doerit.action.AbstractDownloadManamentAction;
import com.doerit.model.diagnostic.Complaint;
import com.doerit.model.diagnostic.DietaryHistory;
import com.doerit.model.diagnostic.DrugHistory;
import com.doerit.service.DiagnosticService;

import org.springframework.beans.factory.annotation.Autowired;

import com.doerit.util.State;


public class DiagnosticAction extends AbstractDownloadManamentAction {

    private static final long serialVersionUID = 1L;

    @Autowired private DiagnosticService diagnosticService;



    private Complaint complaint;
    private DrugHistory drughistory;
    private DietaryHistory dietary;

    public String saveComplaint(){
        if(complaint.getId()==null){
            complaint.setId(generatePrimaryKey());
            addInsertSettings(complaint);
            complaint.setStatus(State.ACTIVE.getDatabaseValue());
        }
        int i= diagnosticService.insertComplaint(complaint);
        if(i==1) return "success";
        else return "error";
    }

    public String saveDietary(){
        if(dietary.getId()==null){
            dietary.setId(generatePrimaryKey());
            addInsertSettings(dietary);
            dietary.setStatus(State.ACTIVE.getDatabaseValue());
        }
        int i= diagnosticService.insertDietaryHistory(dietary);
        if(i==1)  return "success";
        else return "error";

    }

    public String saveDrug(){
        diagnosticService.insertDrugHistory(drughistory);
        return SUCCESS;
    }


    public Complaint getComplaint() { return complaint; }

    public void setComplaint(Complaint complaint) {
        this.complaint = complaint;
    }

    public DietaryHistory getDietary() {
        return dietary;
    }

    public void setDietary(DietaryHistory dietary) {
        this.dietary = dietary;
    }

    public DrugHistory getDrughistory() {

        return drughistory;
    }

    public void setDrughistory(DrugHistory drughistory) {
        this.drughistory = drughistory;
    }
}
