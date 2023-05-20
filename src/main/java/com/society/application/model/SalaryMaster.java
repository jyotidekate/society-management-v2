package com.society.application.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
public class SalaryMaster {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String basic;
	private String hra;
	private String da;
	private String ta;
	private String allowance;
	private String others;
	private String PF;
	private String ESI;
	private String empCode;
	@Transient
	private String empName;
	private String payBranch;
	private String payDate;
	private String paymode;

	public String getPayBranch() {
		return payBranch;
	}

	public void setPayBranch(String payBranch) {
		this.payBranch = payBranch;
	}

	public String getPayDate() {
		return payDate;
	}

	public void setPayDate(String payDate) {
		this.payDate = payDate;
	}

	public String getPaymode() {
		return paymode;
	}

	public void setPaymode(String paymode) {
		this.paymode = paymode;
	}

	public String getEmpName() {
		return empName;
	}

	public void setEmpName(String empName) {
		this.empName = empName;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getBasic() {
		return basic;
	}

	public void setBasic(String basic) {
		this.basic = basic;
	}

	public String getAllowance() {
		return allowance;
	}

	public void setAllowance(String allowance) {
		this.allowance = allowance;
	}

	public String getOthers() {
		return others;
	}

	public void setOthers(String others) {
		this.others = others;
	}

	public String getPF() {
		return PF;
	}

	public void setPF(String pF) {
		PF = pF;
	}

	public String getESI() {
		return ESI;
	}

	public void setESI(String eSI) {
		ESI = eSI;
	}

	public String getEmpCode() {
		return empCode;
	}

	public void setEmpCode(String empCode) {
		this.empCode = empCode;
	}

	public String getHra() {
		return hra;
	}

	public void setHra(String hra) {
		this.hra = hra;
	}

	public String getDa() {
		return da;
	}

	public void setDa(String da) {
		this.da = da;
	}

	public String getTa() {
		return ta;
	}

	public void setTa(String ta) {
		this.ta = ta;
	}

}
