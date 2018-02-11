package com.doerit.action.patient;

import com.doerit.model.Patient;
import com.doerit.service.PatientService;
import com.opensymphony.xwork2.ActionSupport;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class AutoCompleteNIC extends ActionSupport {
    private static final long serialVersionUID = 1L;


    @Autowired PatientService patientService;



    private String nic;

    private List<Patient> patient;



    public String execute(){
            patient=patientService.getNICValues(nic);
            return SUCCESS;

    }

    public String getNic() {
        return nic;
    }

    public void setNic(String nic) {
        this.nic = nic;
    }


    public List<Patient> getPatient() {
        return patient;
    }
}
