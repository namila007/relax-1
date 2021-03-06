package com.doerit.dao;

import com.doerit.model.diagnostic.MedicalRecord;
import com.doerit.model.diagnostic.MedicalRecordExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface MedicalRecordMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_patient_medical_record
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    long countByExample(MedicalRecordExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_patient_medical_record
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    int deleteByExample(MedicalRecordExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_patient_medical_record
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    int deleteByPrimaryKey(String id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_patient_medical_record
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    int insert(MedicalRecord record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_patient_medical_record
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    int insertSelective(MedicalRecord record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_patient_medical_record
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    List<MedicalRecord> selectByExample(MedicalRecordExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_patient_medical_record
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    MedicalRecord selectByPrimaryKey(String id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_patient_medical_record
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    int updateByExampleSelective(@Param("record") MedicalRecord record, @Param("example") MedicalRecordExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_patient_medical_record
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    int updateByExample(@Param("record") MedicalRecord record, @Param("example") MedicalRecordExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_patient_medical_record
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    int updateByPrimaryKeySelective(MedicalRecord record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_patient_medical_record
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    int updateByPrimaryKey(MedicalRecord record);
}