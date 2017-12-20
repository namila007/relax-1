package com.doerit.action.patient;

import com.doerit.dao.ComplaintMapper;
import com.doerit.model.diagnostic.Complaint;
import com.doerit.service.DiagnosticSerivce;
import org.springframework.beans.factory.annotation.Autowired;

public class DiagnosticAction   {

    @Autowired
    DiagnosticSerivce diagnosticSerivce;
    private Complaint complaint;

    public String saveComplaint(Complaint complaint){
        int i=diagnosticSerivce.insertComplaint(complaint);
        if(i==1)return "success";
        else return "error";
    }


}
