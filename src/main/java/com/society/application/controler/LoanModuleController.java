package com.society.application.controler;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.society.application.model.GenericGetById;
import com.society.application.model.LoanPlanMaster;
import com.society.application.model.RecurringDeposit;
import com.society.application.repository.LoanPlanRepo;

@Controller
public class LoanModuleController {
	
	@Autowired
	LoanPlanRepo loanPlanMasterRepo;
	
	@PostMapping("/getByLoanId")
	@ResponseBody
	public LoanPlanMaster getByLoanId(@RequestBody GenericGetById id) {
		Optional<LoanPlanMaster> loanPlanMaster = loanPlanMasterRepo.findById(Integer.parseInt(id.getId()));
		return loanPlanMaster.get();
	}
	
	@GetMapping("/getAllLoanId")
	@ResponseBody
	public List<LoanPlanMaster> getAllLoanId() {
		List<LoanPlanMaster> loanPlanMaster = loanPlanMasterRepo.findAll();
		return loanPlanMaster;
	}
	
	
	@PostMapping("/saveDataRegularEMIRepayment")
	public String saveDataRegularEMIRepayment(@ModelAttribute("rd") LoanPlanMaster loanPlanMaster, Model model) {
		//System.err.println(loanPlanMaster);
		//loanPlanMasterRepo.save(loanPlanMaster);
		if(loanPlanMaster!=null) {
			Optional<LoanPlanMaster> loanPlanMasterAllData = loanPlanMasterRepo.findById(loanPlanMaster.getId());
			//loanPlanMasterAllData.get().setClosedFlag("closed");
			loanPlanMasterRepo.save(loanPlanMasterAllData.get());
		}
		model.addAttribute("status", "success");
		return "Loan_Section/LoanRepaymentf159";
	}
	
	
	@PostMapping("/saveLoanApplication")
	public String saveLoanApplication(@ModelAttribute("rd") LoanPlanMaster loanPlanMaster, Model model) {
		//System.err.println(loanPlanMaster);
		//loanPlanMasterRepo.save(loanPlanMaster);
		if(loanPlanMaster!=null) {
			Optional<LoanPlanMaster> loanPlanMasterAllData = loanPlanMasterRepo.findById(loanPlanMaster.getId());
			//loanPlanMasterAllData.get().setClosedFlag("closed");
			loanPlanMasterRepo.save(loanPlanMaster);
		}
		model.addAttribute("status", "success");
		return "Loan_Section/LoanApplicationf780";
	}
	
	@PostMapping("/saveDataIregularEMIRepayment")
	public String saveDataIregularEMIRepayment(@ModelAttribute("rd") LoanPlanMaster loanPlanMaster, Model model) {
		if(loanPlanMaster!=null) {
			Optional<LoanPlanMaster> loanPlanMasterAllData = loanPlanMasterRepo.findById(loanPlanMaster.getId());
			//loanPlanMasterAllData.get().setClosedFlag("closed");
			loanPlanMasterRepo.save(loanPlanMasterAllData.get());
		}
		model.addAttribute("status", "success");
		return "Loan_Section/LoanRepaymentf159";
	}
	
	
	@PostMapping("/saveirregularEMIPaymentEntryf159")
	public String saveirregularEMIPaymentEntryf159(@ModelAttribute("user") LoanPlanMaster loanPlanMaster, Model model) {
		if(loanPlanMaster!=null) {
			Optional<LoanPlanMaster> loanPlanMasterAllData = loanPlanMasterRepo.findById(loanPlanMaster.getId());
			loanPlanMasterAllData.get().setClosedFlag("closed");
			loanPlanMasterRepo.save(loanPlanMasterAllData.get());
		}
		model.addAttribute("status", "success");
		return "Loan_Section/IrregularEMIPaymentEntryf159";
	}
	
	@PostMapping("/closeLoan")
	public String closeLoan(@ModelAttribute("closeLoan") LoanPlanMaster loanPlanMaster, Model model) {
		if(loanPlanMaster!=null) {
			Optional<LoanPlanMaster> loanPlanMasterAllData = loanPlanMasterRepo.findById(loanPlanMaster.getId());
			loanPlanMasterAllData.get().setClosedFlag("closed");
			loanPlanMasterRepo.save(loanPlanMasterAllData.get());
		}
		model.addAttribute("status", "success");
		return "Loan_Section/LoanPreSettlementf159";
	}
	
	
	

}
