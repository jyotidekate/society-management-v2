package com.society.application.controler;

import java.util.Date;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.society.application.model.GenericGetById;
import com.society.application.model.GroupMaster;
import com.society.application.model.GroupMasterApplication;
import com.society.application.model.LoanMaster;
import com.society.application.repository.GroupMasterApplicationRepo;
import com.society.application.repository.GroupMasterRepo;
import com.society.application.repository.LoanMasterRepo;

@Controller
public class GroupLoanController {
	
	@Autowired
	LoanMasterRepo loanMasterRepo;
	
	@Autowired
	GroupMasterRepo groupMasterRepo;
	
	@Autowired
	GroupMasterApplicationRepo groupMasterApplicationRepo;

	@GetMapping("/LoanPlan5c22")
	public String LoanPlan5c22(Model model) {
		return "group_loan/LoanPlan5c22";
	}

	@GetMapping("/LoanGroupMaster")
	public String LoanGroupMaster(Model model) {
		return "group_loan/LoanGroupMaster";
	}

	@GetMapping("/GroupLoanApplication")
	public String GroupLoanApplication(Model model) {
		return "group_loan/GroupLoanApplication";
	}

	@GetMapping("/GroupLoanApproval9c5a")
	public String GroupLoanApproval9c5a(Model model) {
		return "group_loan/GroupLoanApproval9c5a";
	}

	@GetMapping("/GroupLoanApprovalf780")
	public String GroupLoanApprovalf780(Model model) {
		return "group_loan/GroupLoanApprovalf780";
	}

	@GetMapping("/LoanRepayment5c22")
	public String LoanRepayment5c22(Model model) {
		return "group_loan/LoanRepayment5c22";
	}

	@GetMapping("/GlDailyRepaymentSheet")
	public String GlDailyRepaymentSheet(Model model) {
		return "group_loan/GlDailyRepaymentSheet";
	}

	@GetMapping("/DemandSheet")
	public String DemandSheet(Model model) {
		return "group_loan/DemandSheet";
	}

	@GetMapping("/RegularLoanStatement5c22")
	public String RegularLoanStatement5c22(Model model) {
		return "group_loan/RegularLoanStatement5c22";
	}

	@GetMapping("/LoanPreSettlement5c22")
	public String LoanPreSettlement5c22(Model model) {
		return "group_loan/LoanPreSettlement5c22";
	}

	@GetMapping("/ClosedLoanReportf159")
	public String ClosedLoanReportf159(Model model) {
		return "group_loan/ClosedLoanReportf159";
	}

	@GetMapping("/GroupLoanSearch")
	public String GroupLoanSearch(Model model) {
		return "group_loan/GroupLoanSearch";
	}

	@GetMapping("/getAllGroupLoan")
	@ResponseBody
	public List<LoanMaster> getAllGroupLoan(Model model) {
		List<LoanMaster> allGroupLoan = loanMasterRepo.findAll();
		List<LoanMaster> filterGroupLoan = allGroupLoan.stream().filter(p -> p.getType().equals("Group")).collect(Collectors.toList());
		System.err.println(filterGroupLoan);
		return filterGroupLoan;
	}
	
	//getAllGroupMaster
	@GetMapping("/getAllGroupMaster")
	@ResponseBody
	public List<GroupMaster> getAllGroupMaster() {
		List<GroupMaster> allGroupMaster = groupMasterRepo.findAll();
		return allGroupMaster;
	}
	
	@PostMapping("/saveGroupMaster")
	public String saveGroupMaster(@ModelAttribute("saveGroupMaster") GroupMaster groupMaster, Model model) {
		groupMaster.setCreatedBy("");
		groupMaster.setCreatedDate(new Date().toString());
		groupMaster.setUpdatedBy("");
		groupMaster.setUpdatedDate(new Date().toString());
		GroupMaster savedsaveGroupMaster = groupMasterRepo.save(groupMaster);
		if (savedsaveGroupMaster != null) {
			model.addAttribute("status", "success");
		}
		model.addAttribute("status", "Fail");
		return "group_loan/LoanGroupMaster";
	}
	

	@PostMapping("/getGroupMasterById")
	@ResponseBody
	public GroupMaster getGroupMasterById(@RequestBody GenericGetById id) {
		Optional<GroupMaster> groupMaster = groupMasterRepo.findById(Integer.parseInt(id.getId()));
		return groupMaster.get();
	}
	
	@PostMapping("/saveGroupMasterApplication")
	public String saveGroupMasterApplication(@ModelAttribute("saveGroupMasterApplication") GroupMasterApplication groupMasterApplication, Model model) {
		groupMasterApplication.setCreatedBy("");
		groupMasterApplication.setCreatedDate(new Date().toString());
		groupMasterApplication.setUpdatedBy("");
		groupMasterApplication.setUpdatedDate(new Date().toString());
		GroupMasterApplication savedgroupMasterApplication = groupMasterApplicationRepo.save(groupMasterApplication);
		if (savedgroupMasterApplication != null) {
			model.addAttribute("status", "success");
		}
		model.addAttribute("status", "Fail");
		return "group_loan/GroupLoanApplication";
	}
}
