package com.doerit.model.diagnostic;

import com.doerit.model.InsertUpdate;

import java.util.Date;

public class Drug implements InsertUpdate {
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tbl_drug.ID
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    private String id;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tbl_drug.DRUG_CODE
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    private String drugCode;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tbl_drug.GENERIC_NAME
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    private String genericName;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tbl_drug.CHEMICAL_NAME
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    private String chemicalName;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tbl_drug.BRAND_NAME
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    private String brandName;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tbl_drug.CATEGORY
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    private String category;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tbl_drug.COMMENT
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    private String comment;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tbl_drug.STATUS
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    private Byte status;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tbl_drug.SORT_ORDER
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    private Integer sortOrder;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tbl_drug.INSERT_USER_ID
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    private String insertUserId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tbl_drug.INSERT_DATETIME
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    private Date insertDatetime;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tbl_drug.UPDATE_USER_ID
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    private String updateUserId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tbl_drug.UPDATE_DATETIME
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    private Date updateDatetime;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tbl_drug.ID
     *
     * @return the value of tbl_drug.ID
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    public String getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tbl_drug.ID
     *
     * @param id the value for tbl_drug.ID
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tbl_drug.DRUG_CODE
     *
     * @return the value of tbl_drug.DRUG_CODE
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    public String getDrugCode() {
        return drugCode;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tbl_drug.DRUG_CODE
     *
     * @param drugCode the value for tbl_drug.DRUG_CODE
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    public void setDrugCode(String drugCode) {
        this.drugCode = drugCode == null ? null : drugCode.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tbl_drug.GENERIC_NAME
     *
     * @return the value of tbl_drug.GENERIC_NAME
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    public String getGenericName() {
        return genericName;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tbl_drug.GENERIC_NAME
     *
     * @param genericName the value for tbl_drug.GENERIC_NAME
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    public void setGenericName(String genericName) {
        this.genericName = genericName == null ? null : genericName.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tbl_drug.CHEMICAL_NAME
     *
     * @return the value of tbl_drug.CHEMICAL_NAME
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    public String getChemicalName() {
        return chemicalName;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tbl_drug.CHEMICAL_NAME
     *
     * @param chemicalName the value for tbl_drug.CHEMICAL_NAME
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    public void setChemicalName(String chemicalName) {
        this.chemicalName = chemicalName == null ? null : chemicalName.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tbl_drug.BRAND_NAME
     *
     * @return the value of tbl_drug.BRAND_NAME
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    public String getBrandName() {
        return brandName;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tbl_drug.BRAND_NAME
     *
     * @param brandName the value for tbl_drug.BRAND_NAME
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    public void setBrandName(String brandName) {
        this.brandName = brandName == null ? null : brandName.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tbl_drug.CATEGORY
     *
     * @return the value of tbl_drug.CATEGORY
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    public String getCategory() {
        return category;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tbl_drug.CATEGORY
     *
     * @param category the value for tbl_drug.CATEGORY
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    public void setCategory(String category) {
        this.category = category == null ? null : category.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tbl_drug.COMMENT
     *
     * @return the value of tbl_drug.COMMENT
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    public String getComment() {
        return comment;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tbl_drug.COMMENT
     *
     * @param comment the value for tbl_drug.COMMENT
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    public void setComment(String comment) {
        this.comment = comment == null ? null : comment.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tbl_drug.STATUS
     *
     * @return the value of tbl_drug.STATUS
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    public Byte getStatus() {
        return status;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tbl_drug.STATUS
     *
     * @param status the value for tbl_drug.STATUS
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    public void setStatus(Byte status) {
        this.status = status;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tbl_drug.SORT_ORDER
     *
     * @return the value of tbl_drug.SORT_ORDER
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    public Integer getSortOrder() {
        return sortOrder;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tbl_drug.SORT_ORDER
     *
     * @param sortOrder the value for tbl_drug.SORT_ORDER
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    public void setSortOrder(Integer sortOrder) {
        this.sortOrder = sortOrder;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tbl_drug.INSERT_USER_ID
     *
     * @return the value of tbl_drug.INSERT_USER_ID
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    public String getInsertUserId() {
        return insertUserId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tbl_drug.INSERT_USER_ID
     *
     * @param insertUserId the value for tbl_drug.INSERT_USER_ID
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    public void setInsertUserId(String insertUserId) {
        this.insertUserId = insertUserId == null ? null : insertUserId.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tbl_drug.INSERT_DATETIME
     *
     * @return the value of tbl_drug.INSERT_DATETIME
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    public Date getInsertDatetime() {
        return insertDatetime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tbl_drug.INSERT_DATETIME
     *
     * @param insertDatetime the value for tbl_drug.INSERT_DATETIME
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    public void setInsertDatetime(Date insertDatetime) {
        this.insertDatetime = insertDatetime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tbl_drug.UPDATE_USER_ID
     *
     * @return the value of tbl_drug.UPDATE_USER_ID
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    public String getUpdateUserId() {
        return updateUserId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tbl_drug.UPDATE_USER_ID
     *
     * @param updateUserId the value for tbl_drug.UPDATE_USER_ID
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    public void setUpdateUserId(String updateUserId) {
        this.updateUserId = updateUserId == null ? null : updateUserId.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tbl_drug.UPDATE_DATETIME
     *
     * @return the value of tbl_drug.UPDATE_DATETIME
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    public Date getUpdateDatetime() {
        return updateDatetime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tbl_drug.UPDATE_DATETIME
     *
     * @param updateDatetime the value for tbl_drug.UPDATE_DATETIME
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    public void setUpdateDatetime(Date updateDatetime) {
        this.updateDatetime = updateDatetime;
    }
}