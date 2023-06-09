package com.society.application.controler;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.society.application.model.BranchMaster;
import com.society.application.model.GenericGetById;
import com.society.application.model.Loan;
import com.society.application.model.LoanMaster;
import com.society.application.model.LoanPlanMaster;
import com.society.application.model.Member;
import com.society.application.model.RecurringDeposit;
import com.society.application.repository.BranchMasterRepo;
import com.society.application.repository.LoanMasterRepo;
import com.society.application.repository.LoanPlanRepo;
import com.society.application.repository.LoanRepo;
import com.society.application.repository.MemberRepo;

@Controller
public class LoanModuleController {

	@Autowired
	LoanPlanRepo loanPlanMasterRepo;

	@Autowired
	MemberRepo memberRepo;

	@Autowired
	BranchMasterRepo branchMasterRepo;

	@Autowired
	LoanMasterRepo loanMasterRepo;

	@Autowired
	LoanRepo loanRepo;

	@GetMapping("/loanApplication9c5a")
	public String loanApplication9c5a(Model model) {
		List<Loan> loanList = loanRepo.findAll();
		model.addAttribute("loanList", loanList);
		List<LoanMaster> loanPlanMaster = loanMasterRepo.findAll();
		model.addAttribute("loanPlanMaster", loanPlanMaster);
		List<Member> memberList = memberRepo.findAll();
		model.addAttribute("memberList", memberList);
		List<BranchMaster> branchData = branchMasterRepo.findAll();
		model.addAttribute("branchList", branchData);
		return "Loan_Section/LoanApplication9c5a";
	}

	@GetMapping("/LoanPlan")
	public String LoanPlan(Model model) {
		List<Member> memberList = memberRepo.findAll();
		model.addAttribute("memberList", memberList);
		return "Loan_Section/LoanPlan";
	}

	@GetMapping("/LoanApplication")
	public String LoanApplication(Model model) {
		List<LoanMaster> loanPlanMaster = loanMasterRepo.findAll();
		model.addAttribute("loanPlanMaster", loanPlanMaster);
		List<Member> memberList = memberRepo.findAll();
		model.addAttribute("memberList", memberList);
		List<BranchMaster> branchData = branchMasterRepo.findAll();
		model.addAttribute("branchList", branchData);
		return "Loan_Section/LoanApplication";
	}

	@PostMapping("/getByLoanId")
	@ResponseBody
	public LoanPlanMaster getByLoanId(@RequestBody GenericGetById id) {
		Optional<LoanPlanMaster> loanPlanMaster = loanPlanMasterRepo.findById(Integer.parseInt(id.getId()));
		return loanPlanMaster.get();
	}

	@PostMapping("/getByLoanAppId")
	@ResponseBody
	public LoanPlanMaster getByLoanAppId(@RequestBody GenericGetById id) {
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
		// System.err.println(loanPlanMaster);
		// loanPlanMasterRepo.save(loanPlanMaster);
		if (loanPlanMaster != null) {
			Optional<LoanPlanMaster> loanPlanMasterAllData = loanPlanMasterRepo.findById(loanPlanMaster.getId());
			// loanPlanMasterAllData.get().setClosedFlag("closed");
			loanPlanMasterRepo.save(loanPlanMasterAllData.get());
		}
		model.addAttribute("status", "success");
		return "Loan_Section/LoanRepaymentf159";
	}

	@PostMapping("/saveLoanApplication")
	public String saveLoanApplication(@ModelAttribute("rd") LoanPlanMaster loanPlanMaster, Model model) {
		// System.err.println(loanPlanMaster);
		// loanPlanMasterRepo.save(loanPlanMaster);
		if (loanPlanMaster != null) {
			Optional<LoanPlanMaster> loanPlanMasterAllData = loanPlanMasterRepo.findById(loanPlanMaster.getId());
			// loanPlanMasterAllData.get().setClosedFlag("closed");
			loanPlanMasterRepo.save(loanPlanMaster);
		}
		model.addAttribute("status", "success");
		return "Loan_Section/LoanApplicationf780";
	}

	@PostMapping("/saveDataIregularEMIRepayment")
	public String saveDataIregularEMIRepayment(@ModelAttribute("rd") LoanPlanMaster loanPlanMaster, Model model) {
		if (loanPlanMaster != null) {
			Optional<LoanPlanMaster> loanPlanMasterAllData = loanPlanMasterRepo.findById(loanPlanMaster.getId());
			// loanPlanMasterAllData.get().setClosedFlag("closed");
			loanPlanMasterRepo.save(loanPlanMasterAllData.get());
		}
		model.addAttribute("status", "success");
		return "Loan_Section/LoanRepaymentf159";
	}

	@PostMapping("/saveirregularEMIPaymentEntryf159")
	public String saveirregularEMIPaymentEntryf159(@ModelAttribute("user") LoanPlanMaster loanPlanMaster, Model model) {
		if (loanPlanMaster != null) {
			Optional<LoanPlanMaster> loanPlanMasterAllData = loanPlanMasterRepo.findById(loanPlanMaster.getId());
			loanPlanMasterAllData.get().setClosedFlag("closed");
			loanPlanMasterRepo.save(loanPlanMasterAllData.get());
		}
		model.addAttribute("status", "success");
		return "Loan_Section/IrregularEMIPaymentEntryf159";
	}

	@PostMapping("/closeLoan")
	public String closeLoan(@ModelAttribute("closeLoan") LoanPlanMaster loanPlanMaster, Model model) {
		if (loanPlanMaster != null) {
			Optional<LoanPlanMaster> loanPlanMasterAllData = loanPlanMasterRepo.findById(loanPlanMaster.getId());
			loanPlanMasterAllData.get().setClosedFlag("closed");
			loanPlanMasterRepo.save(loanPlanMasterAllData.get());
		}
		model.addAttribute("status", "success");
		return "Loan_Section/LoanPreSettlementf159";
	}
	
	@GetMapping("/findPlanNameForLoanSearch")
	@ResponseBody
	public List<LoanMaster> findPlanNameForLoanSearch() {
		List<LoanMaster> list = loanMasterRepo.findAll();
		return list;
	}
	
	@PostMapping("/searchLoanDataInTable")
	@ResponseBody
	public List<LoanMaster> getSearchLoanDataInTable(@RequestBody LoanMaster loan){
		List<LoanMaster> branchName = loanMasterRepo.findByBranchName(loan.getBranchName());
		List<LoanMaster> dob = loanMasterRepo.findBydobBetween(loan.getfDate(), loan.gettDate());
		List<LoanMaster> memberName = loanMasterRepo.findBymemberName(loan.getMemberName());
		List<LoanMaster> id = loanMasterRepo.findByid(loan.getId());
		List<LoanMaster> searchMemberCode = loanMasterRepo.findBysearchMemberCode(loan.getSearchMemberCode());
		List<LoanMaster> loanName = loanMasterRepo.findByloanName(loan.getLoanName());
		List<LoanMaster> advisorCode = loanMasterRepo.findByadvisorCode(loan.getAdvisorCode());
		
		if(!dob.isEmpty()) {
			return dob;
		}else if(!id.isEmpty()) {
			return id;
		}else if(!searchMemberCode.isEmpty()) {
			return searchMemberCode;
		}else if(!loanName.isEmpty()) {
			return loanName;
		}else if(!advisorCode.isEmpty()) {
			return advisorCode;
		}else if(!branchName.isEmpty()) {
			return branchName;
		}else 
			return memberName;
	}

	@GetMapping("/getLoanById")
	@ResponseBody
	public List<LoanMaster> getLoanById() {
		return loanMasterRepo.findAll();
	}

	@GetMapping("/fetchloanNOC")
	@ResponseBody
	List<LoanMaster> fetchloanNOC(HttpServletRequest request) {
		String id = request.getParameter("id");
		int i = Integer.parseInt(id);
		List<LoanMaster> noc = loanMasterRepo.findByid(i);
		return noc;
	}
	
}
