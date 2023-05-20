package com.society.application.controler;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ApprovalSection {
	
	@GetMapping("/addMemberApproval")
	public String addMemberApproval(Model model) {
		return "approvalSection/AddMemberApproval";
	}
	
	@GetMapping("/shareIssueApproval")
	public String shareIssueApproval(Model model) {
		return "approvalSection/ShareIssueApproval";
	}
	

	@GetMapping("/advisorApproval")
	public String advisorApproval(Model model) {
		return "approvalSection/AdvisorApproval";
	}
	

	@GetMapping("/investmentApproval")
	public String investmentApproval(Model model) {
		return "approvalSection/InvestmentApproval";
	}
	
	@GetMapping("/recurringApproval")
	public String recurringApproval(Model model) {
		return "approvalSection/RecurringApproval";
	}
	

	@GetMapping("/SBTxnApproval")
	public String SBTxnApproval(Model model) {
		return "approvalSection/SBTxnApproval";
	}
	

	@GetMapping("/intraTransferApproval")
	public String intraTransferApproval(Model model) {
		return "approvalSection/IntraTransferApproval";
	}
	

	@GetMapping("/regularEMIApproval")
	public String regularEMIApproval(Model model) {
		return "approvalSection/RegularEMIApproval";
	}
	
	@GetMapping("/irrularEMIApproval")
	public String irrularEMIApproval(Model model) {
		return "approvalSection/IrrularEMIApproval";
	}
	
	@GetMapping("/paymentEntryApproval")
	public String paymentEntryApproval(Model model) {
		return "approvalSection/PaymentEntryApproval";
	}
	
	
	@GetMapping("/maturityApplicationApproval")
	public String maturityApplicationApproval(Model model) {
		return "approvalSection/MaturityApplicationApproval";
	}
	
	@GetMapping("/maturityApplicationDelete")
	public String maturityApplicationDelete(Model model) {
		return "approvalSection/MaturityApplicationDelete";
	}
	
	@GetMapping("/CSPCashTransferApproval")
	public String CSPCashTransferApproval(Model model) {
		return "approvalSection/CSPCashTransferApproval";
	}

}
