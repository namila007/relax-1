package com.doerit.service;

import com.doerit.dao.ComplaintMapper;
import com.doerit.model.diagnostic.Complaint;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class DiagnosticSerivce {



    @Autowired
    ComplaintMapper complaintMapper;

    public int insertComplaint(Complaint complaint){
        return complaintMapper.insert(complaint);
    }
}
