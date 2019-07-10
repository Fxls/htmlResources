package com.itek.myoa.domain;

import java.io.Serializable;

/**
 * 
 *
 * @author Administrator
 * @date 2019-07-10
 *
 */
public class Approval implements Serializable {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_approval.id
     *
     * @mbggenerated
     */
    /**  */
    private Integer id;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_approval.application_id
     *
     * @mbggenerated
     */
    /**  */
    private Integer applicationId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_approval.approval_type
     *
     * @mbggenerated
     */
    /** 审批的类型（用于哪种类型的审批） */
    private String approvalType;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_approval.result
     *
     * @mbggenerated
     */
    /** 审批结果（通过，不通过） */
    private String result;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_approval.tip
     *
     * @mbggenerated
     */
    /** 审批意见 */
    private String tip;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_approval.handle_name
     *
     * @mbggenerated
     */
    /** 处理人姓名 */
    private String handleName;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table t_approval
     *
     * @mbggenerated
     */
    private static final long serialVersionUID = 1L;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_approval.id
     *
     * @return the value of t_approval.id
     *
     * @mbggenerated
     */
    public Integer getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_approval.id
     *
     * @param id the value for t_approval.id
     *
     * @mbggenerated
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_approval.application_id
     *
     * @return the value of t_approval.application_id
     *
     * @mbggenerated
     */
    public Integer getApplicationId() {
        return applicationId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_approval.application_id
     *
     * @param applicationId the value for t_approval.application_id
     *
     * @mbggenerated
     */
    public void setApplicationId(Integer applicationId) {
        this.applicationId = applicationId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_approval.approval_type
     *
     * @return the value of t_approval.approval_type
     *
     * @mbggenerated
     */
    public String getApprovalType() {
        return approvalType;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_approval.approval_type
     *
     * @param approvalType the value for t_approval.approval_type
     *
     * @mbggenerated
     */
    public void setApprovalType(String approvalType) {
        this.approvalType = approvalType == null ? null : approvalType.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_approval.result
     *
     * @return the value of t_approval.result
     *
     * @mbggenerated
     */
    public String getResult() {
        return result;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_approval.result
     *
     * @param result the value for t_approval.result
     *
     * @mbggenerated
     */
    public void setResult(String result) {
        this.result = result == null ? null : result.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_approval.tip
     *
     * @return the value of t_approval.tip
     *
     * @mbggenerated
     */
    public String getTip() {
        return tip;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_approval.tip
     *
     * @param tip the value for t_approval.tip
     *
     * @mbggenerated
     */
    public void setTip(String tip) {
        this.tip = tip == null ? null : tip.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_approval.handle_name
     *
     * @return the value of t_approval.handle_name
     *
     * @mbggenerated
     */
    public String getHandleName() {
        return handleName;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_approval.handle_name
     *
     * @param handleName the value for t_approval.handle_name
     *
     * @mbggenerated
     */
    public void setHandleName(String handleName) {
        this.handleName = handleName == null ? null : handleName.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_approval
     *
     * @mbggenerated
     */
    @Override
    public boolean equals(Object that) {
        if (this == that) {
            return true;
        }
        if (that == null) {
            return false;
        }
        if (getClass() != that.getClass()) {
            return false;
        }
        Approval other = (Approval) that;
        return (this.getId() == null ? other.getId() == null : this.getId().equals(other.getId()))
            && (this.getApplicationId() == null ? other.getApplicationId() == null : this.getApplicationId().equals(other.getApplicationId()))
            && (this.getApprovalType() == null ? other.getApprovalType() == null : this.getApprovalType().equals(other.getApprovalType()))
            && (this.getResult() == null ? other.getResult() == null : this.getResult().equals(other.getResult()))
            && (this.getTip() == null ? other.getTip() == null : this.getTip().equals(other.getTip()))
            && (this.getHandleName() == null ? other.getHandleName() == null : this.getHandleName().equals(other.getHandleName()));
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_approval
     *
     * @mbggenerated
     */
    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getId() == null) ? 0 : getId().hashCode());
        result = prime * result + ((getApplicationId() == null) ? 0 : getApplicationId().hashCode());
        result = prime * result + ((getApprovalType() == null) ? 0 : getApprovalType().hashCode());
        result = prime * result + ((getResult() == null) ? 0 : getResult().hashCode());
        result = prime * result + ((getTip() == null) ? 0 : getTip().hashCode());
        result = prime * result + ((getHandleName() == null) ? 0 : getHandleName().hashCode());
        return result;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_approval
     *
     * @mbggenerated
     */
    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", applicationId=").append(applicationId);
        sb.append(", approvalType=").append(approvalType);
        sb.append(", result=").append(result);
        sb.append(", tip=").append(tip);
        sb.append(", handleName=").append(handleName);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}