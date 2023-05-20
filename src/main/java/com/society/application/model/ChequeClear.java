package com.society.application.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class ChequeClear {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
    private String type;
	private String branch;
	private String txndate;
	private String cheque;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getBranch() {
		return branch;
	}
	public void setBranch(String branch) {
		this.branch = branch;
	}
	public String getTxndate() {
		return txndate;
	}
	public void setTxndate(String txndate) {
		this.txndate = txndate;
	}
	public String getCheque() {
		return cheque;
	}
	public void setCheque(String cheque) {
		this.cheque = cheque;
	}
	
}
