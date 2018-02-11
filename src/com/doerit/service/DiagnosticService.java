package com.doerit.service;

import com.doerit.dao.ComplaintMapper;
import com.doerit.dao.DietaryHistoryMapper;
import com.doerit.dao.DrugHistoryMapper;
import com.doerit.model.diagnostic.Complaint;
import com.doerit.model.diagnostic.DietaryHistory;
import com.doerit.model.diagnostic.DrugHistory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class DiagnosticService extends AbstractService{



    @Autowired
    private ComplaintMapper complaintMapper;
    @Autowired
    private DietaryHistoryMapper dietaryMapper;
    @Autowired
    private DrugHistoryMapper drugHistoryMapper;



    public int insertDietaryHistory(DietaryHistory dietary){
        return dietaryMapper.insert(dietary);
    }

    public int insertComplaint(Complaint complaint){
        return complaintMapper.insert(complaint);
    }

    public int insertDrugHistory(DrugHistory drugHistory){return drugHistoryMapper.insert(drugHistory);}


}
