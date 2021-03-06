package com.doerit.model.diagnostic;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class ComplaintExample {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table tbl_complaint
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    protected String orderByClause;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table tbl_complaint
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    protected boolean distinct;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table tbl_complaint
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    protected List<Criteria> oredCriteria;

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_complaint
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    public ComplaintExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_complaint
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    public String getOrderByClause() {
        return orderByClause;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_complaint
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_complaint
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    public boolean isDistinct() {
        return distinct;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_complaint
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_complaint
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_complaint
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_complaint
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_complaint
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_complaint
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_complaint
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table tbl_complaint
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andIdIsNull() {
            addCriterion("ID is null");
            return (Criteria) this;
        }

        public Criteria andIdIsNotNull() {
            addCriterion("ID is not null");
            return (Criteria) this;
        }

        public Criteria andIdEqualTo(String value) {
            addCriterion("ID =", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotEqualTo(String value) {
            addCriterion("ID <>", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThan(String value) {
            addCriterion("ID >", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThanOrEqualTo(String value) {
            addCriterion("ID >=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThan(String value) {
            addCriterion("ID <", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThanOrEqualTo(String value) {
            addCriterion("ID <=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLike(String value) {
            addCriterion("ID like", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotLike(String value) {
            addCriterion("ID not like", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdIn(List<String> values) {
            addCriterion("ID in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotIn(List<String> values) {
            addCriterion("ID not in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdBetween(String value1, String value2) {
            addCriterion("ID between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotBetween(String value1, String value2) {
            addCriterion("ID not between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andComplaintIsNull() {
            addCriterion("COMPLAINT is null");
            return (Criteria) this;
        }

        public Criteria andComplaintIsNotNull() {
            addCriterion("COMPLAINT is not null");
            return (Criteria) this;
        }

        public Criteria andComplaintEqualTo(String value) {
            addCriterion("COMPLAINT =", value, "complaint");
            return (Criteria) this;
        }

        public Criteria andComplaintNotEqualTo(String value) {
            addCriterion("COMPLAINT <>", value, "complaint");
            return (Criteria) this;
        }

        public Criteria andComplaintGreaterThan(String value) {
            addCriterion("COMPLAINT >", value, "complaint");
            return (Criteria) this;
        }

        public Criteria andComplaintGreaterThanOrEqualTo(String value) {
            addCriterion("COMPLAINT >=", value, "complaint");
            return (Criteria) this;
        }

        public Criteria andComplaintLessThan(String value) {
            addCriterion("COMPLAINT <", value, "complaint");
            return (Criteria) this;
        }

        public Criteria andComplaintLessThanOrEqualTo(String value) {
            addCriterion("COMPLAINT <=", value, "complaint");
            return (Criteria) this;
        }

        public Criteria andComplaintLike(String value) {
            addCriterion("COMPLAINT like", value, "complaint");
            return (Criteria) this;
        }

        public Criteria andComplaintNotLike(String value) {
            addCriterion("COMPLAINT not like", value, "complaint");
            return (Criteria) this;
        }

        public Criteria andComplaintIn(List<String> values) {
            addCriterion("COMPLAINT in", values, "complaint");
            return (Criteria) this;
        }

        public Criteria andComplaintNotIn(List<String> values) {
            addCriterion("COMPLAINT not in", values, "complaint");
            return (Criteria) this;
        }

        public Criteria andComplaintBetween(String value1, String value2) {
            addCriterion("COMPLAINT between", value1, value2, "complaint");
            return (Criteria) this;
        }

        public Criteria andComplaintNotBetween(String value1, String value2) {
            addCriterion("COMPLAINT not between", value1, value2, "complaint");
            return (Criteria) this;
        }

        public Criteria andTypeIsNull() {
            addCriterion("TYPE is null");
            return (Criteria) this;
        }

        public Criteria andTypeIsNotNull() {
            addCriterion("TYPE is not null");
            return (Criteria) this;
        }

        public Criteria andTypeEqualTo(String value) {
            addCriterion("TYPE =", value, "type");
            return (Criteria) this;
        }

        public Criteria andTypeNotEqualTo(String value) {
            addCriterion("TYPE <>", value, "type");
            return (Criteria) this;
        }

        public Criteria andTypeGreaterThan(String value) {
            addCriterion("TYPE >", value, "type");
            return (Criteria) this;
        }

        public Criteria andTypeGreaterThanOrEqualTo(String value) {
            addCriterion("TYPE >=", value, "type");
            return (Criteria) this;
        }

        public Criteria andTypeLessThan(String value) {
            addCriterion("TYPE <", value, "type");
            return (Criteria) this;
        }

        public Criteria andTypeLessThanOrEqualTo(String value) {
            addCriterion("TYPE <=", value, "type");
            return (Criteria) this;
        }

        public Criteria andTypeLike(String value) {
            addCriterion("TYPE like", value, "type");
            return (Criteria) this;
        }

        public Criteria andTypeNotLike(String value) {
            addCriterion("TYPE not like", value, "type");
            return (Criteria) this;
        }

        public Criteria andTypeIn(List<String> values) {
            addCriterion("TYPE in", values, "type");
            return (Criteria) this;
        }

        public Criteria andTypeNotIn(List<String> values) {
            addCriterion("TYPE not in", values, "type");
            return (Criteria) this;
        }

        public Criteria andTypeBetween(String value1, String value2) {
            addCriterion("TYPE between", value1, value2, "type");
            return (Criteria) this;
        }

        public Criteria andTypeNotBetween(String value1, String value2) {
            addCriterion("TYPE not between", value1, value2, "type");
            return (Criteria) this;
        }

        public Criteria andComplaintHistoryIsNull() {
            addCriterion("COMPLAINT_HISTORY is null");
            return (Criteria) this;
        }

        public Criteria andComplaintHistoryIsNotNull() {
            addCriterion("COMPLAINT_HISTORY is not null");
            return (Criteria) this;
        }

        public Criteria andComplaintHistoryEqualTo(String value) {
            addCriterion("COMPLAINT_HISTORY =", value, "complaintHistory");
            return (Criteria) this;
        }

        public Criteria andComplaintHistoryNotEqualTo(String value) {
            addCriterion("COMPLAINT_HISTORY <>", value, "complaintHistory");
            return (Criteria) this;
        }

        public Criteria andComplaintHistoryGreaterThan(String value) {
            addCriterion("COMPLAINT_HISTORY >", value, "complaintHistory");
            return (Criteria) this;
        }

        public Criteria andComplaintHistoryGreaterThanOrEqualTo(String value) {
            addCriterion("COMPLAINT_HISTORY >=", value, "complaintHistory");
            return (Criteria) this;
        }

        public Criteria andComplaintHistoryLessThan(String value) {
            addCriterion("COMPLAINT_HISTORY <", value, "complaintHistory");
            return (Criteria) this;
        }

        public Criteria andComplaintHistoryLessThanOrEqualTo(String value) {
            addCriterion("COMPLAINT_HISTORY <=", value, "complaintHistory");
            return (Criteria) this;
        }

        public Criteria andComplaintHistoryLike(String value) {
            addCriterion("COMPLAINT_HISTORY like", value, "complaintHistory");
            return (Criteria) this;
        }

        public Criteria andComplaintHistoryNotLike(String value) {
            addCriterion("COMPLAINT_HISTORY not like", value, "complaintHistory");
            return (Criteria) this;
        }

        public Criteria andComplaintHistoryIn(List<String> values) {
            addCriterion("COMPLAINT_HISTORY in", values, "complaintHistory");
            return (Criteria) this;
        }

        public Criteria andComplaintHistoryNotIn(List<String> values) {
            addCriterion("COMPLAINT_HISTORY not in", values, "complaintHistory");
            return (Criteria) this;
        }

        public Criteria andComplaintHistoryBetween(String value1, String value2) {
            addCriterion("COMPLAINT_HISTORY between", value1, value2, "complaintHistory");
            return (Criteria) this;
        }

        public Criteria andComplaintHistoryNotBetween(String value1, String value2) {
            addCriterion("COMPLAINT_HISTORY not between", value1, value2, "complaintHistory");
            return (Criteria) this;
        }

        public Criteria andApprovedByIsNull() {
            addCriterion("APPROVED_BY is null");
            return (Criteria) this;
        }

        public Criteria andApprovedByIsNotNull() {
            addCriterion("APPROVED_BY is not null");
            return (Criteria) this;
        }

        public Criteria andApprovedByEqualTo(String value) {
            addCriterion("APPROVED_BY =", value, "approvedBy");
            return (Criteria) this;
        }

        public Criteria andApprovedByNotEqualTo(String value) {
            addCriterion("APPROVED_BY <>", value, "approvedBy");
            return (Criteria) this;
        }

        public Criteria andApprovedByGreaterThan(String value) {
            addCriterion("APPROVED_BY >", value, "approvedBy");
            return (Criteria) this;
        }

        public Criteria andApprovedByGreaterThanOrEqualTo(String value) {
            addCriterion("APPROVED_BY >=", value, "approvedBy");
            return (Criteria) this;
        }

        public Criteria andApprovedByLessThan(String value) {
            addCriterion("APPROVED_BY <", value, "approvedBy");
            return (Criteria) this;
        }

        public Criteria andApprovedByLessThanOrEqualTo(String value) {
            addCriterion("APPROVED_BY <=", value, "approvedBy");
            return (Criteria) this;
        }

        public Criteria andApprovedByLike(String value) {
            addCriterion("APPROVED_BY like", value, "approvedBy");
            return (Criteria) this;
        }

        public Criteria andApprovedByNotLike(String value) {
            addCriterion("APPROVED_BY not like", value, "approvedBy");
            return (Criteria) this;
        }

        public Criteria andApprovedByIn(List<String> values) {
            addCriterion("APPROVED_BY in", values, "approvedBy");
            return (Criteria) this;
        }

        public Criteria andApprovedByNotIn(List<String> values) {
            addCriterion("APPROVED_BY not in", values, "approvedBy");
            return (Criteria) this;
        }

        public Criteria andApprovedByBetween(String value1, String value2) {
            addCriterion("APPROVED_BY between", value1, value2, "approvedBy");
            return (Criteria) this;
        }

        public Criteria andApprovedByNotBetween(String value1, String value2) {
            addCriterion("APPROVED_BY not between", value1, value2, "approvedBy");
            return (Criteria) this;
        }

        public Criteria andCommentIsNull() {
            addCriterion("COMMENT is null");
            return (Criteria) this;
        }

        public Criteria andCommentIsNotNull() {
            addCriterion("COMMENT is not null");
            return (Criteria) this;
        }

        public Criteria andCommentEqualTo(String value) {
            addCriterion("COMMENT =", value, "comment");
            return (Criteria) this;
        }

        public Criteria andCommentNotEqualTo(String value) {
            addCriterion("COMMENT <>", value, "comment");
            return (Criteria) this;
        }

        public Criteria andCommentGreaterThan(String value) {
            addCriterion("COMMENT >", value, "comment");
            return (Criteria) this;
        }

        public Criteria andCommentGreaterThanOrEqualTo(String value) {
            addCriterion("COMMENT >=", value, "comment");
            return (Criteria) this;
        }

        public Criteria andCommentLessThan(String value) {
            addCriterion("COMMENT <", value, "comment");
            return (Criteria) this;
        }

        public Criteria andCommentLessThanOrEqualTo(String value) {
            addCriterion("COMMENT <=", value, "comment");
            return (Criteria) this;
        }

        public Criteria andCommentLike(String value) {
            addCriterion("COMMENT like", value, "comment");
            return (Criteria) this;
        }

        public Criteria andCommentNotLike(String value) {
            addCriterion("COMMENT not like", value, "comment");
            return (Criteria) this;
        }

        public Criteria andCommentIn(List<String> values) {
            addCriterion("COMMENT in", values, "comment");
            return (Criteria) this;
        }

        public Criteria andCommentNotIn(List<String> values) {
            addCriterion("COMMENT not in", values, "comment");
            return (Criteria) this;
        }

        public Criteria andCommentBetween(String value1, String value2) {
            addCriterion("COMMENT between", value1, value2, "comment");
            return (Criteria) this;
        }

        public Criteria andCommentNotBetween(String value1, String value2) {
            addCriterion("COMMENT not between", value1, value2, "comment");
            return (Criteria) this;
        }

        public Criteria andStatusIsNull() {
            addCriterion("STATUS is null");
            return (Criteria) this;
        }

        public Criteria andStatusIsNotNull() {
            addCriterion("STATUS is not null");
            return (Criteria) this;
        }

        public Criteria andStatusEqualTo(Byte value) {
            addCriterion("STATUS =", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusNotEqualTo(Byte value) {
            addCriterion("STATUS <>", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusGreaterThan(Byte value) {
            addCriterion("STATUS >", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusGreaterThanOrEqualTo(Byte value) {
            addCriterion("STATUS >=", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusLessThan(Byte value) {
            addCriterion("STATUS <", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusLessThanOrEqualTo(Byte value) {
            addCriterion("STATUS <=", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusIn(List<Byte> values) {
            addCriterion("STATUS in", values, "status");
            return (Criteria) this;
        }

        public Criteria andStatusNotIn(List<Byte> values) {
            addCriterion("STATUS not in", values, "status");
            return (Criteria) this;
        }

        public Criteria andStatusBetween(Byte value1, Byte value2) {
            addCriterion("STATUS between", value1, value2, "status");
            return (Criteria) this;
        }

        public Criteria andStatusNotBetween(Byte value1, Byte value2) {
            addCriterion("STATUS not between", value1, value2, "status");
            return (Criteria) this;
        }

        public Criteria andSortOrderIsNull() {
            addCriterion("SORT_ORDER is null");
            return (Criteria) this;
        }

        public Criteria andSortOrderIsNotNull() {
            addCriterion("SORT_ORDER is not null");
            return (Criteria) this;
        }

        public Criteria andSortOrderEqualTo(Integer value) {
            addCriterion("SORT_ORDER =", value, "sortOrder");
            return (Criteria) this;
        }

        public Criteria andSortOrderNotEqualTo(Integer value) {
            addCriterion("SORT_ORDER <>", value, "sortOrder");
            return (Criteria) this;
        }

        public Criteria andSortOrderGreaterThan(Integer value) {
            addCriterion("SORT_ORDER >", value, "sortOrder");
            return (Criteria) this;
        }

        public Criteria andSortOrderGreaterThanOrEqualTo(Integer value) {
            addCriterion("SORT_ORDER >=", value, "sortOrder");
            return (Criteria) this;
        }

        public Criteria andSortOrderLessThan(Integer value) {
            addCriterion("SORT_ORDER <", value, "sortOrder");
            return (Criteria) this;
        }

        public Criteria andSortOrderLessThanOrEqualTo(Integer value) {
            addCriterion("SORT_ORDER <=", value, "sortOrder");
            return (Criteria) this;
        }

        public Criteria andSortOrderIn(List<Integer> values) {
            addCriterion("SORT_ORDER in", values, "sortOrder");
            return (Criteria) this;
        }

        public Criteria andSortOrderNotIn(List<Integer> values) {
            addCriterion("SORT_ORDER not in", values, "sortOrder");
            return (Criteria) this;
        }

        public Criteria andSortOrderBetween(Integer value1, Integer value2) {
            addCriterion("SORT_ORDER between", value1, value2, "sortOrder");
            return (Criteria) this;
        }

        public Criteria andSortOrderNotBetween(Integer value1, Integer value2) {
            addCriterion("SORT_ORDER not between", value1, value2, "sortOrder");
            return (Criteria) this;
        }

        public Criteria andInsertUserIdIsNull() {
            addCriterion("INSERT_USER_ID is null");
            return (Criteria) this;
        }

        public Criteria andInsertUserIdIsNotNull() {
            addCriterion("INSERT_USER_ID is not null");
            return (Criteria) this;
        }

        public Criteria andInsertUserIdEqualTo(String value) {
            addCriterion("INSERT_USER_ID =", value, "insertUserId");
            return (Criteria) this;
        }

        public Criteria andInsertUserIdNotEqualTo(String value) {
            addCriterion("INSERT_USER_ID <>", value, "insertUserId");
            return (Criteria) this;
        }

        public Criteria andInsertUserIdGreaterThan(String value) {
            addCriterion("INSERT_USER_ID >", value, "insertUserId");
            return (Criteria) this;
        }

        public Criteria andInsertUserIdGreaterThanOrEqualTo(String value) {
            addCriterion("INSERT_USER_ID >=", value, "insertUserId");
            return (Criteria) this;
        }

        public Criteria andInsertUserIdLessThan(String value) {
            addCriterion("INSERT_USER_ID <", value, "insertUserId");
            return (Criteria) this;
        }

        public Criteria andInsertUserIdLessThanOrEqualTo(String value) {
            addCriterion("INSERT_USER_ID <=", value, "insertUserId");
            return (Criteria) this;
        }

        public Criteria andInsertUserIdLike(String value) {
            addCriterion("INSERT_USER_ID like", value, "insertUserId");
            return (Criteria) this;
        }

        public Criteria andInsertUserIdNotLike(String value) {
            addCriterion("INSERT_USER_ID not like", value, "insertUserId");
            return (Criteria) this;
        }

        public Criteria andInsertUserIdIn(List<String> values) {
            addCriterion("INSERT_USER_ID in", values, "insertUserId");
            return (Criteria) this;
        }

        public Criteria andInsertUserIdNotIn(List<String> values) {
            addCriterion("INSERT_USER_ID not in", values, "insertUserId");
            return (Criteria) this;
        }

        public Criteria andInsertUserIdBetween(String value1, String value2) {
            addCriterion("INSERT_USER_ID between", value1, value2, "insertUserId");
            return (Criteria) this;
        }

        public Criteria andInsertUserIdNotBetween(String value1, String value2) {
            addCriterion("INSERT_USER_ID not between", value1, value2, "insertUserId");
            return (Criteria) this;
        }

        public Criteria andInsertDatetimeIsNull() {
            addCriterion("INSERT_DATETIME is null");
            return (Criteria) this;
        }

        public Criteria andInsertDatetimeIsNotNull() {
            addCriterion("INSERT_DATETIME is not null");
            return (Criteria) this;
        }

        public Criteria andInsertDatetimeEqualTo(Date value) {
            addCriterion("INSERT_DATETIME =", value, "insertDatetime");
            return (Criteria) this;
        }

        public Criteria andInsertDatetimeNotEqualTo(Date value) {
            addCriterion("INSERT_DATETIME <>", value, "insertDatetime");
            return (Criteria) this;
        }

        public Criteria andInsertDatetimeGreaterThan(Date value) {
            addCriterion("INSERT_DATETIME >", value, "insertDatetime");
            return (Criteria) this;
        }

        public Criteria andInsertDatetimeGreaterThanOrEqualTo(Date value) {
            addCriterion("INSERT_DATETIME >=", value, "insertDatetime");
            return (Criteria) this;
        }

        public Criteria andInsertDatetimeLessThan(Date value) {
            addCriterion("INSERT_DATETIME <", value, "insertDatetime");
            return (Criteria) this;
        }

        public Criteria andInsertDatetimeLessThanOrEqualTo(Date value) {
            addCriterion("INSERT_DATETIME <=", value, "insertDatetime");
            return (Criteria) this;
        }

        public Criteria andInsertDatetimeIn(List<Date> values) {
            addCriterion("INSERT_DATETIME in", values, "insertDatetime");
            return (Criteria) this;
        }

        public Criteria andInsertDatetimeNotIn(List<Date> values) {
            addCriterion("INSERT_DATETIME not in", values, "insertDatetime");
            return (Criteria) this;
        }

        public Criteria andInsertDatetimeBetween(Date value1, Date value2) {
            addCriterion("INSERT_DATETIME between", value1, value2, "insertDatetime");
            return (Criteria) this;
        }

        public Criteria andInsertDatetimeNotBetween(Date value1, Date value2) {
            addCriterion("INSERT_DATETIME not between", value1, value2, "insertDatetime");
            return (Criteria) this;
        }

        public Criteria andUpdateUserIdIsNull() {
            addCriterion("UPDATE_USER_ID is null");
            return (Criteria) this;
        }

        public Criteria andUpdateUserIdIsNotNull() {
            addCriterion("UPDATE_USER_ID is not null");
            return (Criteria) this;
        }

        public Criteria andUpdateUserIdEqualTo(String value) {
            addCriterion("UPDATE_USER_ID =", value, "updateUserId");
            return (Criteria) this;
        }

        public Criteria andUpdateUserIdNotEqualTo(String value) {
            addCriterion("UPDATE_USER_ID <>", value, "updateUserId");
            return (Criteria) this;
        }

        public Criteria andUpdateUserIdGreaterThan(String value) {
            addCriterion("UPDATE_USER_ID >", value, "updateUserId");
            return (Criteria) this;
        }

        public Criteria andUpdateUserIdGreaterThanOrEqualTo(String value) {
            addCriterion("UPDATE_USER_ID >=", value, "updateUserId");
            return (Criteria) this;
        }

        public Criteria andUpdateUserIdLessThan(String value) {
            addCriterion("UPDATE_USER_ID <", value, "updateUserId");
            return (Criteria) this;
        }

        public Criteria andUpdateUserIdLessThanOrEqualTo(String value) {
            addCriterion("UPDATE_USER_ID <=", value, "updateUserId");
            return (Criteria) this;
        }

        public Criteria andUpdateUserIdLike(String value) {
            addCriterion("UPDATE_USER_ID like", value, "updateUserId");
            return (Criteria) this;
        }

        public Criteria andUpdateUserIdNotLike(String value) {
            addCriterion("UPDATE_USER_ID not like", value, "updateUserId");
            return (Criteria) this;
        }

        public Criteria andUpdateUserIdIn(List<String> values) {
            addCriterion("UPDATE_USER_ID in", values, "updateUserId");
            return (Criteria) this;
        }

        public Criteria andUpdateUserIdNotIn(List<String> values) {
            addCriterion("UPDATE_USER_ID not in", values, "updateUserId");
            return (Criteria) this;
        }

        public Criteria andUpdateUserIdBetween(String value1, String value2) {
            addCriterion("UPDATE_USER_ID between", value1, value2, "updateUserId");
            return (Criteria) this;
        }

        public Criteria andUpdateUserIdNotBetween(String value1, String value2) {
            addCriterion("UPDATE_USER_ID not between", value1, value2, "updateUserId");
            return (Criteria) this;
        }

        public Criteria andUpdateDatetimeIsNull() {
            addCriterion("UPDATE_DATETIME is null");
            return (Criteria) this;
        }

        public Criteria andUpdateDatetimeIsNotNull() {
            addCriterion("UPDATE_DATETIME is not null");
            return (Criteria) this;
        }

        public Criteria andUpdateDatetimeEqualTo(Date value) {
            addCriterion("UPDATE_DATETIME =", value, "updateDatetime");
            return (Criteria) this;
        }

        public Criteria andUpdateDatetimeNotEqualTo(Date value) {
            addCriterion("UPDATE_DATETIME <>", value, "updateDatetime");
            return (Criteria) this;
        }

        public Criteria andUpdateDatetimeGreaterThan(Date value) {
            addCriterion("UPDATE_DATETIME >", value, "updateDatetime");
            return (Criteria) this;
        }

        public Criteria andUpdateDatetimeGreaterThanOrEqualTo(Date value) {
            addCriterion("UPDATE_DATETIME >=", value, "updateDatetime");
            return (Criteria) this;
        }

        public Criteria andUpdateDatetimeLessThan(Date value) {
            addCriterion("UPDATE_DATETIME <", value, "updateDatetime");
            return (Criteria) this;
        }

        public Criteria andUpdateDatetimeLessThanOrEqualTo(Date value) {
            addCriterion("UPDATE_DATETIME <=", value, "updateDatetime");
            return (Criteria) this;
        }

        public Criteria andUpdateDatetimeIn(List<Date> values) {
            addCriterion("UPDATE_DATETIME in", values, "updateDatetime");
            return (Criteria) this;
        }

        public Criteria andUpdateDatetimeNotIn(List<Date> values) {
            addCriterion("UPDATE_DATETIME not in", values, "updateDatetime");
            return (Criteria) this;
        }

        public Criteria andUpdateDatetimeBetween(Date value1, Date value2) {
            addCriterion("UPDATE_DATETIME between", value1, value2, "updateDatetime");
            return (Criteria) this;
        }

        public Criteria andUpdateDatetimeNotBetween(Date value1, Date value2) {
            addCriterion("UPDATE_DATETIME not between", value1, value2, "updateDatetime");
            return (Criteria) this;
        }
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table tbl_complaint
     *
     * @mbg.generated do_not_delete_during_merge Tue Dec 19 03:23:32 IST 2017
     */
    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table tbl_complaint
     *
     * @mbg.generated Tue Dec 19 03:23:32 IST 2017
     */
    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }
    }
}