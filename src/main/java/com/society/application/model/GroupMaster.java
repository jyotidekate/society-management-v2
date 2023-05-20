package com.society.application.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class GroupMaster {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String groupName;
	private String opDate;
	private String csp;
	private String grLeaderName;
	private String mobile;
	private String grAddr;
	private String employee;
	private String cDay;
	private String cTime;
	private String createdDate;
	private String createdBy;
	private String updatedDate;
	private String updatedBy;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getGroupName() {
		return groupName;
	}
	public void setGroupName(String groupName) {
		this.groupName = groupName;
	}
	public String getOpDate() {
		return opDate;
	}
	public void setOpDate(String opDate) {
		this.opDate = opDate;
	}
	public String getCsp() {
		return csp;
	}
	public void setCsp(String csp) {
		this.csp = csp;
	}
	public String getGrLeaderName() {
		return grLeaderName;
	}
	public void setGrLeaderName(String grLeaderName) {
		this.grLeaderName = grLeaderName;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getGrAddr() {
		return grAddr;
	}
	public void setGrAddr(String grAddr) {
		this.grAddr = grAddr;
	}
	public String getEmployee() {
		return employee;
	}
	public void setEmployee(String employee) {
		this.employee = employee;
	}
	public String getcDay() {
		return cDay;
	}
	public void setcDay(String cDay) {
		this.cDay = cDay;
	}
	public String getcTime() {
		return cTime;
	}
	public void setcTime(String cTime) {
		this.cTime = cTime;
	}
	public String getCreatedDate() {
		return createdDate;
	}
	public void setCreatedDate(String createdDate) {
		this.createdDate = createdDate;
	}
	public String getCreatedBy() {
		return createdBy;
	}
	public void setCreatedBy(String createdBy) {
		this.createdBy = createdBy;
	}
	public String getUpdatedDate() {
		return updatedDate;
	}
	public void setUpdatedDate(String updatedDate) {
		this.updatedDate = updatedDate;
	}
	public String getUpdatedBy() {
		return updatedBy;
	}
	public void setUpdatedBy(String updatedBy) {
		this.updatedBy = updatedBy;
	}
	
	

}
