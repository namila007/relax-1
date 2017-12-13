package com.doerit.action.patient;

import com.doerit.model.Patient;
import com.doerit.service.PatientService;
import com.opensymphony.xwork2.ActionSupport;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.ArrayList;
import java.util.List;

public class AutoCompleteNIC extends ActionSupport {
    private static final long serialVersionUID = 1L;


    @Autowired PatientService patientService;


    private List<String> list_NIC;
    private String nic;



    public String execute(){
       // System.out.println(" THIS IS req " +nic);
        //System.out.println("This is array "+patientService.getNICValues(nic).toString());
        if(nic.length()>=6) {
            list_NIC = getNIConly(patientService.getNICValues(nic));
            return SUCCESS;
        }
        return ERROR;
    }


    private List<String> getNIConly(List<Patient> patientsByNIC) {
        List<String> list = new ArrayList<>();

        for (int n = 0; n < patientsByNIC.size(); n++) {
            Patient patient = patientsByNIC.get(n);
            list.add(patient.getNic());
        }
        return list;
    }

    public List<String> getList_NIC() {
        return list_NIC;
    }

    public void setList_NIC(List<String> list_NIC) {
        this.list_NIC = list_NIC;
    }

    public String getNic() {
        return nic;
    }

    public void setNic(String nic) {
        this.nic = nic;
    }
}
