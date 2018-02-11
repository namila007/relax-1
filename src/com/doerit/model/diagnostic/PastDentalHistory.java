package com.doerit.model.diagnostic;

import com.doerit.model.InsertUpdate;

import java.util.Date;

public class PastDentalHistory implements InsertUpdate {
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tbl_patient_past_dental_history.ID
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    private String id;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tbl_patient_past_dental_history.EXTRACTION_STATUS
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    private Byte extractionStatus;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tbl_patient_past_dental_history.EXTRACTION_COMPLICATIONS
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    private Byte extractionComplications;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tbl_patient_past_dental_history.OTHER_SURGERY
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    private Byte otherSurgery;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tbl_patient_past_dental_history.PERIODONTAL_RX
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    private String periodontalRx;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tbl_patient_past_dental_history.ORTHODONTIC_TREATMENT_STATUS
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    private Byte orthodonticTreatmentStatus;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tbl_patient_past_dental_history.ORTHODONTIC_TREATMENT_COMPLICATIONS
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    private String orthodonticTreatmentComplications;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tbl_patient_past_dental_history.RESTORATIVE_RX_STATUS
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    private Byte restorativeRxStatus;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tbl_patient_past_dental_history.RESTORATIVE_RX_COMPLICATIONS
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    private String restorativeRxComplications;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tbl_patient_past_dental_history.PROSTHESIS_RX_STATUS
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    private Byte prosthesisRxStatus;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tbl_patient_past_dental_history.PROSTHESIS_RX_COMPLICATIONS
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    private String prosthesisRxComplications;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tbl_patient_past_dental_history.COMMENT
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    private String comment;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tbl_patient_past_dental_history.STATUS
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    private Byte status;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tbl_patient_past_dental_history.SORT_ORDER
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    private Integer sortOrder;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tbl_patient_past_dental_history.INSERT_USER_ID
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    private String insertUserId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tbl_patient_past_dental_history.INSERT_DATETIME
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    private Date insertDatetime;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tbl_patient_past_dental_history.UPDATE_USER_ID
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    private String updateUserId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tbl_patient_past_dental_history.UPDATE_DATETIME
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    private Date updateDatetime;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tbl_patient_past_dental_history.ID
     *
     * @return the value of tbl_patient_past_dental_history.ID
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    public String getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tbl_patient_past_dental_history.ID
     *
     * @param id the value for tbl_patient_past_dental_history.ID
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tbl_patient_past_dental_history.EXTRACTION_STATUS
     *
     * @return the value of tbl_patient_past_dental_history.EXTRACTION_STATUS
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    public Byte getExtractionStatus() {
        return extractionStatus;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tbl_patient_past_dental_history.EXTRACTION_STATUS
     *
     * @param extractionStatus the value for tbl_patient_past_dental_history.EXTRACTION_STATUS
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    public void setExtractionStatus(Byte extractionStatus) {
        this.extractionStatus = extractionStatus;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tbl_patient_past_dental_history.EXTRACTION_COMPLICATIONS
     *
     * @return the value of tbl_patient_past_dental_history.EXTRACTION_COMPLICATIONS
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    public Byte getExtractionComplications() {
        return extractionComplications;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tbl_patient_past_dental_history.EXTRACTION_COMPLICATIONS
     *
     * @param extractionComplications the value for tbl_patient_past_dental_history.EXTRACTION_COMPLICATIONS
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    public void setExtractionComplications(Byte extractionComplications) {
        this.extractionComplications = extractionComplications;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tbl_patient_past_dental_history.OTHER_SURGERY
     *
     * @return the value of tbl_patient_past_dental_history.OTHER_SURGERY
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    public Byte getOtherSurgery() {
        return otherSurgery;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tbl_patient_past_dental_history.OTHER_SURGERY
     *
     * @param otherSurgery the value for tbl_patient_past_dental_history.OTHER_SURGERY
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    public void setOtherSurgery(Byte otherSurgery) {
        this.otherSurgery = otherSurgery;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tbl_patient_past_dental_history.PERIODONTAL_RX
     *
     * @return the value of tbl_patient_past_dental_history.PERIODONTAL_RX
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    public String getPeriodontalRx() {
        return periodontalRx;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tbl_patient_past_dental_history.PERIODONTAL_RX
     *
     * @param periodontalRx the value for tbl_patient_past_dental_history.PERIODONTAL_RX
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    public void setPeriodontalRx(String periodontalRx) {
        this.periodontalRx = periodontalRx == null ? null : periodontalRx.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tbl_patient_past_dental_history.ORTHODONTIC_TREATMENT_STATUS
     *
     * @return the value of tbl_patient_past_dental_history.ORTHODONTIC_TREATMENT_STATUS
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    public Byte getOrthodonticTreatmentStatus() {
        return orthodonticTreatmentStatus;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tbl_patient_past_dental_history.ORTHODONTIC_TREATMENT_STATUS
     *
     * @param orthodonticTreatmentStatus the value for tbl_patient_past_dental_history.ORTHODONTIC_TREATMENT_STATUS
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    public void setOrthodonticTreatmentStatus(Byte orthodonticTreatmentStatus) {
        this.orthodonticTreatmentStatus = orthodonticTreatmentStatus;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tbl_patient_past_dental_history.ORTHODONTIC_TREATMENT_COMPLICATIONS
     *
     * @return the value of tbl_patient_past_dental_history.ORTHODONTIC_TREATMENT_COMPLICATIONS
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    public String getOrthodonticTreatmentComplications() {
        return orthodonticTreatmentComplications;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tbl_patient_past_dental_history.ORTHODONTIC_TREATMENT_COMPLICATIONS
     *
     * @param orthodonticTreatmentComplications the value for tbl_patient_past_dental_history.ORTHODONTIC_TREATMENT_COMPLICATIONS
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    public void setOrthodonticTreatmentComplications(String orthodonticTreatmentComplications) {
        this.orthodonticTreatmentComplications = orthodonticTreatmentComplications == null ? null : orthodonticTreatmentComplications.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tbl_patient_past_dental_history.RESTORATIVE_RX_STATUS
     *
     * @return the value of tbl_patient_past_dental_history.RESTORATIVE_RX_STATUS
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    public Byte getRestorativeRxStatus() {
        return restorativeRxStatus;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tbl_patient_past_dental_history.RESTORATIVE_RX_STATUS
     *
     * @param restorativeRxStatus the value for tbl_patient_past_dental_history.RESTORATIVE_RX_STATUS
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    public void setRestorativeRxStatus(Byte restorativeRxStatus) {
        this.restorativeRxStatus = restorativeRxStatus;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tbl_patient_past_dental_history.RESTORATIVE_RX_COMPLICATIONS
     *
     * @return the value of tbl_patient_past_dental_history.RESTORATIVE_RX_COMPLICATIONS
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    public String getRestorativeRxComplications() {
        return restorativeRxComplications;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tbl_patient_past_dental_history.RESTORATIVE_RX_COMPLICATIONS
     *
     * @param restorativeRxComplications the value for tbl_patient_past_dental_history.RESTORATIVE_RX_COMPLICATIONS
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    public void setRestorativeRxComplications(String restorativeRxComplications) {
        this.restorativeRxComplications = restorativeRxComplications == null ? null : restorativeRxComplications.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tbl_patient_past_dental_history.PROSTHESIS_RX_STATUS
     *
     * @return the value of tbl_patient_past_dental_history.PROSTHESIS_RX_STATUS
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    public Byte getProsthesisRxStatus() {
        return prosthesisRxStatus;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tbl_patient_past_dental_history.PROSTHESIS_RX_STATUS
     *
     * @param prosthesisRxStatus the value for tbl_patient_past_dental_history.PROSTHESIS_RX_STATUS
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    public void setProsthesisRxStatus(Byte prosthesisRxStatus) {
        this.prosthesisRxStatus = prosthesisRxStatus;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tbl_patient_past_dental_history.PROSTHESIS_RX_COMPLICATIONS
     *
     * @return the value of tbl_patient_past_dental_history.PROSTHESIS_RX_COMPLICATIONS
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    public String getProsthesisRxComplications() {
        return prosthesisRxComplications;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tbl_patient_past_dental_history.PROSTHESIS_RX_COMPLICATIONS
     *
     * @param prosthesisRxComplications the value for tbl_patient_past_dental_history.PROSTHESIS_RX_COMPLICATIONS
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    public void setProsthesisRxComplications(String prosthesisRxComplications) {
        this.prosthesisRxComplications = prosthesisRxComplications == null ? null : prosthesisRxComplications.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tbl_patient_past_dental_history.COMMENT
     *
     * @return the value of tbl_patient_past_dental_history.COMMENT
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    public String getComment() {
        return comment;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tbl_patient_past_dental_history.COMMENT
     *
     * @param comment the value for tbl_patient_past_dental_history.COMMENT
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    public void setComment(String comment) {
        this.comment = comment == null ? null : comment.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tbl_patient_past_dental_history.STATUS
     *
     * @return the value of tbl_patient_past_dental_history.STATUS
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    public Byte getStatus() {
        return status;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tbl_patient_past_dental_history.STATUS
     *
     * @param status the value for tbl_patient_past_dental_history.STATUS
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    public void setStatus(Byte status) {
        this.status = status;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tbl_patient_past_dental_history.SORT_ORDER
     *
     * @return the value of tbl_patient_past_dental_history.SORT_ORDER
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    public Integer getSortOrder() {
        return sortOrder;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tbl_patient_past_dental_history.SORT_ORDER
     *
     * @param sortOrder the value for tbl_patient_past_dental_history.SORT_ORDER
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    public void setSortOrder(Integer sortOrder) {
        this.sortOrder = sortOrder;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tbl_patient_past_dental_history.INSERT_USER_ID
     *
     * @return the value of tbl_patient_past_dental_history.INSERT_USER_ID
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    public String getInsertUserId() {
        return insertUserId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tbl_patient_past_dental_history.INSERT_USER_ID
     *
     * @param insertUserId the value for tbl_patient_past_dental_history.INSERT_USER_ID
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    public void setInsertUserId(String insertUserId) {
        this.insertUserId = insertUserId == null ? null : insertUserId.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tbl_patient_past_dental_history.INSERT_DATETIME
     *
     * @return the value of tbl_patient_past_dental_history.INSERT_DATETIME
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    public Date getInsertDatetime() {
        return insertDatetime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tbl_patient_past_dental_history.INSERT_DATETIME
     *
     * @param insertDatetime the value for tbl_patient_past_dental_history.INSERT_DATETIME
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    public void setInsertDatetime(Date insertDatetime) {
        this.insertDatetime = insertDatetime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tbl_patient_past_dental_history.UPDATE_USER_ID
     *
     * @return the value of tbl_patient_past_dental_history.UPDATE_USER_ID
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    public String getUpdateUserId() {
        return updateUserId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tbl_patient_past_dental_history.UPDATE_USER_ID
     *
     * @param updateUserId the value for tbl_patient_past_dental_history.UPDATE_USER_ID
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    public void setUpdateUserId(String updateUserId) {
        this.updateUserId = updateUserId == null ? null : updateUserId.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tbl_patient_past_dental_history.UPDATE_DATETIME
     *
     * @return the value of tbl_patient_past_dental_history.UPDATE_DATETIME
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    public Date getUpdateDatetime() {
        return updateDatetime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tbl_patient_past_dental_history.UPDATE_DATETIME
     *
     * @param updateDatetime the value for tbl_patient_past_dental_history.UPDATE_DATETIME
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    public void setUpdateDatetime(Date updateDatetime) {
        this.updateDatetime = updateDatetime;
    }
}