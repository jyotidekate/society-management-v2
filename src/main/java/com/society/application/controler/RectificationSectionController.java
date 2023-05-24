package com.society.application.controler;

import java.io.IOException;
import java.util.Base64;
import java.util.List;
import javax.net.ssl.HttpsURLConnection;

import org.apache.taglibs.standard.lang.jstl.test.beans.PublicBean1;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.society.application.model.AddInvestment;
import com.society.application.model.AddSavingAccount;
import com.society.application.model.AdvisorCollectorDetails;
import com.society.application.model.BankMaster;
import com.society.application.model.BranchMaster;
import com.society.application.model.ClientMaster;
import com.society.application.model.Loan;
import com.society.application.model.LoanMaster;
import com.society.application.model.Member;
import com.society.application.model.PaymentMaster;
import com.society.application.model.SavingsDepositWith;
import com.society.application.model.ShareTransferDto;
import com.society.application.repository.AddInvestmentRepo;
import com.society.application.repository.AddSavingAccountRepo;
import com.society.application.repository.AdvisorCollectorDetailsRepo;
import com.society.application.repository.BankMasterRepo;
import com.society.application.repository.BranchMasterRepo;
import com.society.application.repository.ClientMasterRepo;
import com.society.application.repository.LoanMasterRepo;
import com.society.application.repository.LoanRepo;
import com.society.application.repository.MemberRepo;
import com.society.application.repository.PaymentMasterRepo;
import com.society.application.repository.SavingsDepositWithdrawalRepo;
import com.society.application.repository.ShareTransferDtoRepo;
import com.society.application.service.FileStorageService;

@Controller
public class RectificationSectionController {

	@Autowired
	AdvisorCollectorDetailsRepo advisorcollectordetailsrepo;

	@Autowired
	private FileStorageService fileStorageService;

	@Autowired
	AddInvestmentRepo addInvestmentRepo;

	@Autowired
	MemberRepo memberRepo;

	@Autowired
	ShareTransferDtoRepo shareRepo;

	@Autowired
	PaymentMasterRepo paymentRepo;

	@Autowired
	AddSavingAccountRepo addSavingAccountRepo;

	@Autowired
	SavingsDepositWithdrawalRepo savingsDepositWithdrawalRepo;

	@Autowired
	BranchMasterRepo branchMasterRepo;

	@Autowired
	LoanMasterRepo loanmasterrepo;

	@Autowired
	LoanRepo loanrepo;

	@Autowired
	MemberRepo memberrepo;

	@Autowired
	ClientMasterRepo clientMasterRepo;

	@Autowired
	ShareTransferDtoRepo shareTransferDtoRepo;

	@Autowired
	BankMasterRepo bankMasterRepo;

	/* ADVISOR/COLLECTOR RECTIFICATION */

	@GetMapping("/advisorRectification")
	public String getAdvisorRectification() {
		return "rectificationSection/AdvisorRectification";
	}

	/* RENEWAL RECTIFICATION */

	@GetMapping("/renewalRectification")
	public String getrenewalRectification() {
		return "rectificationSection/RenewalRectification";
	}

	// Retrieve operation of dropdown for policy no. after soft delete operation
	@GetMapping("/retrievePolicyNoAfterSoftDelete")
	@ResponseBody
	public List<AddInvestment> retrievePolicyNoAfterSoftDelete() {
		String flag = "1";
		List<AddInvestment> list = addInvestmentRepo.findByflag(flag);
		return list;
	}

	@PostMapping("/deleteByPolicyNo")
	@ResponseBody
	public ResponseEntity<String> getdeleteByPolicyNo(@RequestBody AddInvestment model) {
		String flag = "0";
		int i = addInvestmentRepo.updateThroughIdRenewalDateBranchName(flag, model.getId(), model.getRenewalDate(),
				model.getBranchName());

		if (i > 0) {
			return ResponseEntity.ok("Deleted Successfully...!!!");
		} else {
			return ResponseEntity.badRequest().body("No record found to delete");
		}
	}

	@GetMapping("GroupLoanRectification")
	public String showGroupLoanRectificationPage() {
		return "rectificationSection/GroupLoanRectification";
	}

	@GetMapping("/getGoldLoanRectification")
	public String getGoldLoanRectification() {
		return "rectificationSection/GoldLoanRectification";
	}

	/* SAVING TRANSACTION DELETE */

	@GetMapping("/SavingTransactionDelete")
	public String getSavingTransactionDelete() {
		return "rectificationSection/SavingTransactionDelete";
	}
	
    /* LOAN RECTIFICATION */
	
	@GetMapping("/loanRectification")
	public String getloanRectification() {
		return "rectificationSection/LoanApplication";
	}
	
	@GetMapping("/retrieveDataOfSelectByLoanID")
	@ResponseBody
	public List<LoanMaster> getRetrieveDataOfSelectByLoanID() {
		String flag = "1";
		List<LoanMaster> list = loanmasterrepo.findByflag(flag);
		return list;
	}
	
	@PostMapping("/retrieveLoanMasterId")
	@ResponseBody
	public List<LoanMaster> retrieveLoanMasterId(@RequestBody LoanMaster loan){
		List<LoanMaster> list = loanmasterrepo.findByid(loan.getId());
		return list;
	}
	
	@GetMapping("/getAllClientAfterSoftDelete")
	@ResponseBody
	public List<ClientMaster> getAllClientAfterSoftDelete(){
		String flag = "1";
		List<ClientMaster> list = clientMasterRepo.findByflag(flag);
		return list;
	}

	@GetMapping("/slectLoanPlanNameFromLoanTable")
	@ResponseBody
	public List<Loan> getSlectLoanPlanNameFromLoanTable() {
		List<Loan> list = loanrepo.findAll();
		return list;
	}

	// Retrieve data from loan table in Loan Plan Name
	@PostMapping("/searchByLoanPlanNameFromLoanTable")
	@ResponseBody
	public List<Loan> getSearchByLoanPlanNameFromLoanTable(@RequestBody Loan modle) {
		List<Loan> loan = loanrepo.findByloanPlanName(modle.getLoanPlanName());
		return loan;
	}

	@PostMapping("/deleteSelectByLoanID")
	@ResponseBody
	public ResponseEntity<String> getDeleteSelectByLoanID(@RequestBody LoanMaster model) {
		String flag = "0";
		int i = loanmasterrepo.updateThroughIdInDeleteLoanApplication(flag, model.getId());
		return ResponseEntity.ok("Deleted Successfully...!!!");
	}

	// Append id in dropdown from db
	@GetMapping("/selectByCode")
	@ResponseBody
	public List<AdvisorCollectorDetails> getSelectByCode() {
		List<AdvisorCollectorDetails> advisor = advisorcollectordetailsrepo.findAll();
		return advisor;
	}

	// Retrieve data from Id
	@PostMapping("/searchById")
	@ResponseBody
	public List<AdvisorCollectorDetails> getsearchById(@RequestBody AdvisorCollectorDetails model) {
		List<AdvisorCollectorDetails> advisors = advisorcollectordetailsrepo.findByid(model.getId());
		advisors.forEach(s -> {
			if (advisors != null) {
				String encodedPhoto = Base64.getEncoder().encodeToString(s.getPhoto());
				String encodedSignature = Base64.getEncoder().encodeToString(s.getSigniture());
				s.setFrontEndPhoto(encodedPhoto);
				s.setFrontEndSignature(encodedSignature);

			}
		});
		return advisors;
	}
	
	//Update operation for LOanMaster Table
	@PostMapping("/updateLoanMaster")
	public ResponseEntity<String> updateLoanMaster(
			@RequestParam(name ="loanDate",required = false) String loanDate,
			@RequestParam(name = "memberName",required = false) String memberName,
			@RequestParam(name = "relativeName",required = false) String relativeName,
			@RequestParam(name = "dob",required = false) String dob,
			@RequestParam(name = "age",required = false) String age,
			@RequestParam(name = "phoneno",required = false) String phoneno,
			@RequestParam(name = "status",required = false) String status,
			@RequestParam(name = "address",required = false) String address,
			@RequestParam(name = "pinCode",required = false) String pinCode,
			@RequestParam(name = "branchName",required = false) String branchName,
			@RequestParam(name = "loanPlanName",required = false) String loanPlanName,
			@RequestParam(name = "loanType",required = false) String loanType,
			@RequestParam(name = "planTerm",required = false) String planTerm,
			@RequestParam(name = "mode",required = false) String mode,
			@RequestParam(name = "loanROI",required = false) String loanROI,
			@RequestParam(name = "loanAmount",required = false) String loanAmount,
			@RequestParam(name = "roitype",required = false) String roitype,
			@RequestParam(name = "emiAmount",required = false) String emiAmount,
			@RequestParam(name = "loanPurpose",required = false) String loanPurpose,
			@RequestParam(name = "searchMemberCode",required = false) String searchMemberCode,
			@RequestParam(name = "guarantorName",required = false) String guarantorName,
			@RequestParam(name = "addressGuarantor",required = false) String addressGuarantor,
			@RequestParam(name = "pincodeGuarantor",required = false) String pincodeGuarantor,
			@RequestParam(name = "phone",required = false) String phone,
			@RequestParam(name = "securityType",required = false) String securityType,
			@RequestParam(name = "coApplicantCode",required = false) String coApplicantCode,
			@RequestParam(name = "memberRelativesName",required = false) String memberRelativesName,
			@RequestParam(name = "addressco",required = false) String addressco,
			@RequestParam(name = "pincodeco",required = false) String pincodeco,
			@RequestParam(name = "phoneco",required = false) String phoneco,
			@RequestParam(name = "securityDetails",required = false) String securityDetails,
			@RequestParam(name = "processingFee",required = false) String processingFee,
			@RequestParam(name = "legalAmt",required = false) String legalAmt,
			@RequestParam(name = "advisorCode",required = false) String advisorCode,
			@RequestParam(name = "gst",required = false) String gst,
			@RequestParam(name = "insuranceAmt",required = false) String insuranceAmt,
			@RequestParam(name = "advisorName",required = false) String advisorName,
			@RequestParam(name = "filetag",required = false) MultipartFile file1,
			@RequestParam(name = "secondfiletag",required = false) MultipartFile file2,
			@RequestParam(name = "id123",required = false) Integer id)  {
		
		try {
			
		List<LoanMaster> client = loanmasterrepo.findByid(id);
			
			 client.forEach(s->{
				 if(!(file1==null) && !(file2==null)) {
					 try {
						byte[] photo = file1.getBytes();
						byte[] signatue = file2.getBytes();
						s.setPhoto(photo);
						s.setSignature(signatue);
					} catch (IOException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					 }
				    s.setLoanDate(loanDate);
				    s.setMemberName(memberName);
				    s.setRelativeName(relativeName);
				    s.setDob(dob);
				    s.setAge(age);
				    s.setPhoneno(phoneno);
				    s.setStatus(status);
				    s.setAddress(address);
				    s.setPinCode(pinCode);
				    s.setBranchName(branchName);
				    s.setLoanPlanName(loanPlanName);
				    s.setLoanType(loanType);
				    s.setPlanTerm(planTerm);
				    s.setMode(mode);
				    s.setLoanROI(loanROI);
				    s.setLoanAmount(loanAmount);
				    s.setRoiType(roitype);
				    s.setEmiAmount(emiAmount);
				    s.setLoanPurpose(loanPurpose);
				    s.setSearchMemberCode(searchMemberCode);
				    s.setGuarantorName(guarantorName);
				    s.setAddressGuarantor(addressGuarantor);
				    s.setPincodeGuarantor(pincodeGuarantor);
				    s.setPhone(phone);
				    s.setSecurityType(securityType);
				    s.setCoApplicantCode(coApplicantCode);
				    s.setMemberRelativesName(memberRelativesName);
				    s.setAddressco(addressco);
				    s.setPincodeco(pincodeco);
				    s.setPhoneco(phoneco);
				    s.setSecurityDetails(securityDetails);
				    s.setProcessingFee(processingFee);
				    s.setLegalAmt(legalAmt);
				    s.setAdvisorCode(advisorCode);
				    s.setGst(gst);
				    s.setInsuranceAmt(insuranceAmt);
				    s.setAdvisorName(advisorName);
					s.setFlag("1");
					
					loanmasterrepo.save(s);
				});
			
	        return new ResponseEntity<>("Data Updated  successfully!!!!", HttpStatus.OK);
		}catch(Exception ex) {;
			System.out.println(ex);
	        return new ResponseEntity<>("Data Updated Failed !!!!", HttpStatus.INTERNAL_SERVER_ERROR);
		}
	}

	// Save Operation
	@PostMapping("/saveNewData")
	@ResponseBody
	public ResponseEntity<String> saveNewData(@RequestParam(name = "memberName", required = false) String memberName,
			@RequestParam(value = "filetag", required = false) MultipartFile file1,
			@RequestParam(value = "secondfiletag", required = false) MultipartFile file2,
			@RequestParam(name = "joiningDate", required = false) String joiningDate,
			@RequestParam(name = "selectMember", required = false) String selectMember,
			@RequestParam(name = "dob", required = false) String dob,
			@RequestParam(name = "age", required = false) String age,
			@RequestParam(name = "relativeName", required = false) String relativeName,
			@RequestParam(name = "relativeRelation", required = false) String relativeRelation,
			@RequestParam(name = "mobileNo", required = false) String mobileNo,
			@RequestParam(name = "nomineeName", required = false) String nomineeName,
			@RequestParam(name = "relation", required = false) String relation,
			@RequestParam(name = "branchName", required = false) String branchName,
			@RequestParam(name = "nomineeAge", required = false) String nomineeAge,
			@RequestParam(name = "address", required = false) String address,
			@RequestParam(name = "district", required = false) String district,
			@RequestParam(name = "state", required = false) String state,
			@RequestParam(name = "pinCode", required = false) String pinCode,
			@RequestParam(name = "occupation", required = false) String occupation,
			@RequestParam(name = "education", required = false) String education,
			@RequestParam(name = "selectPosition", required = false) String selectPosition,
			@RequestParam(name = "introducerCode", required = false) String introducerCode,
			@RequestParam(name = "introducerName", required = false) String introducerName,
			@RequestParam(name = "feesIfAny", required = false) String feesIfAny,
			@RequestParam(name = "position", required = false) String position,
			@RequestParam(name = "paymentBy", required = false) String paymentBy,
			@RequestParam(name = "remarks", required = false) String remarks,
			@RequestParam(name = "id133", required = false) String id, AdvisorCollectorDetails advisor) {
		if (!file1.isEmpty() && !file2.isEmpty()) {
			String fileName1 = fileStorageService.storeFile(file1);
			String fileName2 = fileStorageService.storeFile(file2);
			// advisor.setPhoto(fileName1);
			// advisor.setSigniture(fileName2);
		}
		advisor.setJoiningDate(joiningDate);
		advisor.setSelectMember(selectMember);
		advisor.setMemberName(memberName);
		advisor.setDob(dob);
		advisor.setAge(age);
		advisor.setRelativeName(relativeName);
		advisor.setRelativeRelation(relativeRelation);
		advisor.setMobileNo(mobileNo);
		advisor.setNomineeName(nomineeName);
		advisor.setRelation(relation);
		advisor.setBranchName(branchName);
		advisor.setNomineeAge(nomineeAge);
		advisor.setAddress(address);
		advisor.setDistrict(district);
		advisor.setState(state);
		advisor.setPinCode(pinCode);
		advisor.setOccupation(occupation);
		advisor.setEducation(education);
		advisor.setSelectPosition(selectPosition);
		advisor.setIntroducerCode(introducerCode);
		advisor.setIntroducerName(introducerName);
		advisor.setFeesIfAny(feesIfAny);
		advisor.setPosition(position);
		advisor.setPaymentBy(paymentBy);
		advisor.setRemarks(remarks);
		advisor.setFlag("1");
		advisorcollectordetailsrepo.save(advisor);
		return ResponseEntity.ok("New Data Saved...!!!");
	}

	@PostMapping("/searchBySearchMemberFromMemberTable")
	@ResponseBody
	public List<ClientMaster> getSerachBySearchMemberFromMemberTable(@RequestBody ClientMaster modle) {
		List<ClientMaster> member = clientMasterRepo.findBymemberName(modle.getMemberName());
		return member;
	}

	// Soft Delete Operation
	@PostMapping("/deleteAdvisorRectification")
	@ResponseBody
	public ResponseEntity<String> deleteAdvisorRectification(@RequestBody AdvisorCollectorDetails model) {
		String flag = "0";
		int i = advisorcollectordetailsrepo.updateThroughIDIndeleteAdvisorRectification(flag, model.getId());
		return ResponseEntity.ok("Deleted Successfully...!!!");
	}

	// Retrieve data in dropdown from dp after soft delete operation is done
	@GetMapping("/retrieveDataOfSoftDeleteApi")
	@ResponseBody
	public List<AdvisorCollectorDetails> retrieveDataOfSoftDeleteApi() {
		String flag = "1";
		List<AdvisorCollectorDetails> data = advisorcollectordetailsrepo.findByflag(flag);
		return data;
	}

	@PostMapping("/RetrieveDataOfSavingsTransactionSoftDelete")
	@ResponseBody
	public List<SavingsDepositWith> RetrieveDataOfSavingsTransactionSoftDelete() {
		String Flag = "1";
		List<SavingsDepositWith> data = savingsDepositWithdrawalRepo.findByflag(Flag);
		return data;
	}

	@PostMapping("/sharePayment")
	@ResponseBody
	List<PaymentMaster> getsharePayment() {
		return paymentRepo.findAll();
	}

	@PostMapping("/getBranchName1")
	@ResponseBody
	List<BranchMaster> getBranchName() {
		return branchMasterRepo.findAll();
	}

	@PostMapping("/retrieveDataInSavingsTransactionDelete")
	@ResponseBody
	public List<SavingsDepositWith> retrieveDataInSavingsTransactionDelete(@RequestBody SavingsDepositWith std) {
		List<SavingsDepositWith> data1 = savingsDepositWithdrawalRepo.findByaccountNo(std.getAccountNo());
		return data1;
	}

	// Update Operation
	@PostMapping("/updateAdvisorRectification")
	@ResponseBody
	public ResponseEntity<String> updateAdvisorRectification(
			@RequestParam(name = "memberName", required = false) String memberName,
			@RequestParam(value = "filetag", required = false) MultipartFile file1,
			@RequestParam(value = "secondfiletag", required = false) MultipartFile file2,
			@RequestParam(name = "joiningDate", required = false) String joiningDate,
			@RequestParam(name = "selectMember", required = false) String selectMember,
			@RequestParam(name = "dob", required = false) String dob,
			@RequestParam(name = "age", required = false) String age,
			@RequestParam(name = "relativeName", required = false) String relativeName,
			@RequestParam(name = "relativeRelation", required = false) String relativeRelation,
			@RequestParam(name = "mobileNo", required = false) String mobileNo,
			@RequestParam(name = "nomineeName", required = false) String nomineeName,
			@RequestParam(name = "relation", required = false) String relation,
			@RequestParam(name = "branchName", required = false) String branchName,
			@RequestParam(name = "nomineeAge", required = false) String nomineeAge,
			@RequestParam(name = "address", required = false) String address,
			@RequestParam(name = "district", required = false) String district,
			@RequestParam(name = "state", required = false) String state,
			@RequestParam(name = "pinCode", required = false) String pinCode,
			@RequestParam(name = "occupation", required = false) String occupation,
			@RequestParam(name = "education", required = false) String education,
			@RequestParam(name = "selectPosition", required = false) String selectPosition,
			@RequestParam(name = "introducerCode", required = false) String introducerCode,
			@RequestParam(name = "introducerName", required = false) String introducerName,
			@RequestParam(name = "feesIfAny", required = false) String feesIfAny,
			@RequestParam(name = "position", required = false) String position,
			@RequestParam(name = "paymentBy", required = false) String paymentBy,
			@RequestParam(name = "remarks", required = false) String remarks, @RequestParam(name = "id133") int id,
			@RequestParam(name = "advisorStatus", required = false) String advisorStatus,
			@RequestParam(name = "smsSend", required = false) String smsSend) {
		try {
			List<AdvisorCollectorDetails> advisor = advisorcollectordetailsrepo.findByid(id);
			advisor.forEach(s -> {
				if (file1 != null && file2 != null) {
					try {
						byte[] photos = file1.getBytes();
						byte[] signatures = file2.getBytes();
						s.setPhoto(photos);
						s.setSigniture(signatures);
					} catch (Exception e) {
						e.printStackTrace();
					}
				}
				s.setMemberName(memberName);
				s.setJoiningDate(joiningDate);
				s.setSelectMember(selectMember);
				s.setDob(dob);
				s.setAge(age);
				s.setRelativeName(relativeName);
				s.setRelativeRelation(relativeRelation);
				s.setMobileNo(mobileNo);
				s.setNomineeName(nomineeName);
				s.setRelation(relation);
				s.setBranchName(branchName);
				s.setNomineeAge(nomineeAge);
				s.setAddress(address);
				s.setDistrict(district);
				s.setState(state);
				s.setPinCode(pinCode);
				s.setOccupation(occupation);
				s.setEducation(education);
				s.setSelectPosition(selectPosition);
				s.setIntroducerCode(introducerCode);
				s.setIntroducerName(introducerName);
				s.setFeesIfAny(feesIfAny);
				s.setPosition(position);
				s.setPaymentBy(paymentBy);
				s.setRemarks(remarks);
				s.setAdvisorStatus(advisorStatus);
				s.setSmsSend(smsSend);
				s.setFlag("1");

				advisorcollectordetailsrepo.save(s);
			});
			// System.out.println(photo);
			return new ResponseEntity<>("Data Updated Successfully!!!", HttpStatus.OK);
		} catch (Exception e) {
			System.out.println(e);
			return new ResponseEntity<>("Data Updated Failed!!!", HttpStatus.INTERNAL_SERVER_ERROR);
		}
	}

	/* */

	/* INVESTMENT RECTIFICATION */

	@GetMapping("InvestmentRectification")
	public String showInvestmentRectificationPage() {
		return "rectificationSection/InvestmentRectification";
	}

	@GetMapping("/RetrieveDataOFSoftDeletedApis")
	@ResponseBody
	public List<AddInvestment> getretrieveDataOfSoftDeleteApi() {
		String flag = "1";
		List<AddInvestment> data = addInvestmentRepo.findByflag(flag);
		return data;
	}

	// Dropdown value for investment rectification for Policy no.
	@PostMapping("/policynoapi")
	public ResponseEntity<String> DeleteDailyRenewalPaymentbbb6(@RequestBody AddInvestment addIn) {
		String flag = "0";
		int i = addInvestmentRepo.updateThroughIDInDeleteinvestmentRectification(flag, addIn.getPolicyno());
		return ResponseEntity.ok("Soft Deleted  SucessFully");
	}

	// Code for retriving data on Feilds
	@PostMapping("/retriveDataFromPolicyno")
	@ResponseBody
	public List<AddInvestment> retrivedatafrompolicyno(@RequestBody AddInvestment adi) {
		List<AddInvestment> datAddInvestments = addInvestmentRepo.findBypolicyno(adi.getPolicyno());
		datAddInvestments.forEach(s -> {
			if (datAddInvestments != null) {
				String encodedPhoto = Base64.getEncoder().encodeToString(s.getPhoto());
				String encodedSignature = Base64.getEncoder().encodeToString(s.getSignature());
				s.setFrontEndPhoto(encodedPhoto);
				s.setFrontEndSignature(encodedSignature);

			}
		});
		return datAddInvestments;
	}

	// Code for updateing feilds
	@PostMapping("/updateInvestmentRectification")
	@ResponseBody
	public ResponseEntity<String> updateInvestmentRectification(
			@RequestParam(value = "filetag", required = false) MultipartFile file1,
			@RequestParam(value = "secondfiletag", required = false) MultipartFile file23,
			// @RequestParam(name = "policyno", required = false) String policyno,
			@RequestParam(name = "policyDate", required = false) String policyDate,
			@RequestParam(name = "memberName", required = false) String memberName,
			@RequestParam(name = "dob", required = false) String dob,
			@RequestParam(name = "age", required = false) String age,
			@RequestParam(name = "relativeName", required = false) String relativeName,
			@RequestParam(name = "phoneno", required = false) String phoneno,
			@RequestParam(name = "nomineeName", required = false) String nomineeName,
			@RequestParam(name = "nomineeAge", required = false) String nomineeAge,
			@RequestParam(name = "nomineeRelation", required = false) String nomineeRelation,
			@RequestParam(name = "address", required = false) String address,
			@RequestParam(name = "district", required = false) String district,
			@RequestParam(name = "state", required = false) String state,
			@RequestParam(name = "pin", required = false) String pin,
			@RequestParam(name = "branchName", required = false) String branchName,
			@RequestParam(name = "modeOfOp", required = false) String modeOfOp,
			@RequestParam(name = "jointCode", required = false) String jointCode,
			@RequestParam(name = "jointName", required = false) String jointName,
			@RequestParam(name = "mDate", required = false) String mDate,
			@RequestParam(name = "schemeType", required = false) String schemeType,
			@RequestParam(name = "schemeName", required = false) String schemeName,
			@RequestParam(name = "term", required = false) String term,
			@RequestParam(name = "mode", required = false) String mode,
			@RequestParam(name = "misMode", required = false) String misMode,
			@RequestParam(name = "policyAmount", required = false) String policyAmount,
			@RequestParam(name = "totalDeposit", required = false) String totalDeposit,
			@RequestParam(name = "maturityAmount", required = false) String maturityAmount,
			@RequestParam(name = "mISInterest", required = false) String mISInterest,
			@RequestParam(name = "paymode", required = false) String paymode,
			@RequestParam(name = "remarks", required = false) String remarks,
			@RequestParam(name = "advisorCode", required = false) String advisorCode,
			@RequestParam(name = "advisorName", required = false) String advisorName,
			@RequestParam(name = "chkisSms", required = false) String chkisSms,
			@RequestParam(name = "id123", required = false) String id) {
		try {
			List<AddInvestment> add = addInvestmentRepo.findBypolicyno(id);
			add.forEach(s -> {
				if (!(file1 == null) && !(file23 == null)) {
					try {
						byte[] photo = file1.getBytes();
						s.setPhoto(photo);
						byte[] signature = file23.getBytes();
						s.setSignature(signature);
					} catch (IOException e) {
						e.printStackTrace();
					}
				}
				// s.setPolicyno(policyno);
				s.setPolicyDate(policyDate);
				s.setMemberName(memberName);
				s.setDob(dob);
				s.setAge(age);
				s.setRelativeName(relativeName);
				s.setPhoneno(phoneno);
				s.setNomineeName(nomineeName);
				s.setNomineeAge(nomineeAge);
				s.setNomineeRelation(nomineeRelation);
				s.setAddress(address);
				s.setDistrict(district);
				s.setState(state);
				s.setPin(pin);
				s.setBranchName(branchName);
				s.setModeOfOp(modeOfOp);
				s.setJointCode(jointCode);
				s.setJointName(jointName);
				s.setmDate(mDate);
				s.setSchemeType(schemeType);
				s.setSchemeName(schemeName);
				s.setTerm(term);
				s.setMode(mode);
				s.setMisMode(misMode);
				s.setPolicyAmount(policyAmount);
				s.setTotalDeposit(totalDeposit);
				s.setMaturityAmount(maturityAmount);
				s.setmISInterest(mISInterest);
				s.setPaymode(paymode);
				s.setRemarks(remarks);
				s.setAdvisorCode(advisorCode);
				s.setAdvisorName(advisorName);
				s.setChkisSms(chkisSms);
				s.setFlag("1");
				addInvestmentRepo.save(s);
			});
			return new ResponseEntity<>("Data Updated Successfully!!!", HttpStatus.OK);
		} catch (Exception e) {
			System.out.println(e);
			return new ResponseEntity<>("Data Failed To Updated!!!", HttpStatus.INTERNAL_SERVER_ERROR);
		}
	}

	/* */

	/* SHARE RECTIFICATION */

	@GetMapping("/ShareRectification")
	public String getShareRectification() {
		return "rectificationSection/ShareRectification";
	}

	// dropdown for Payment
	@PostMapping("/DeleteSavingsTransactionDelete")
	@ResponseBody
	public ResponseEntity<String> DeleteSavingsTransactionDelete(@RequestBody SavingsDepositWith model) {
		String flag = "0";
		int i = savingsDepositWithdrawalRepo.updateThroughIDInDeleteSavingsTransaction(flag, model.getAccountNo());

		return ResponseEntity.ok("Soft Deleted Successfully...");
	}

	// Code for Retrieving data on Fields
	@PostMapping("/retrievedateinsharefields")
	@ResponseBody
	public List<ShareTransferDto> retrievedateinsharefields(@RequestBody ShareTransferDto adi) {
		List<ShareTransferDto> data = shareRepo.findByid(adi.getId());
		return data;
	}

	@PostMapping("/DeleteShareRectification")
	public ResponseEntity<String> DeleteShareRectification(@RequestBody ShareTransferDto model) {
		String flag = "0";
		int i = shareRepo.updateThroughIDInDeleteShareRectification(flag, model.getId());
		return ResponseEntity.ok("Soft Deleted Successfully...");
	}

	@PostMapping("/RetrieveDataOfSoftDeletedApi")
	@ResponseBody
	public List<ShareTransferDto> RetrieveDataOfSoftDeletedApi() {
		String flag = "1";
		List<ShareTransferDto> data = shareRepo.findByflag(flag);
		return data;
	}

	/* */

	/* MEMBER RECTIFICATION */

	@GetMapping("/getMemberRectification")
	public String getMemberRectification() {
		return "rectificationSection/MemberRectification";
	}

	// Get Dynamic Dropdown in Member Rectification
	@GetMapping("/getDataInDd")
	@ResponseBody
	public List<ClientMaster> getDataInDd() {
		List<ClientMaster> list = clientMasterRepo.findAll();
		return list;
	}

	@GetMapping("/getshareAllotedfrm")
	@ResponseBody
	public List<ShareTransferDto> getshareAllotedfrm() {
		List<ShareTransferDto> list = shareTransferDtoRepo.findAll();
		return list;
	}

	@GetMapping("/getDepositAccNo")
	@ResponseBody
	public List<BankMaster> getDepositAccNo() {
		List<BankMaster> list = bankMasterRepo.findAll();
		return list;
	}

	// Retrieve Code
	@PostMapping("/searchByCode")
	@ResponseBody
	public List<ClientMaster> getSearchByCode(@RequestBody ClientMaster model) {
		List<ClientMaster> list = clientMasterRepo.findByid(model.getId());
		return list;
	}

	// Update Code of Member Rectification
	@PostMapping("/updateMemberRectification")
	@ResponseBody
	public ResponseEntity<String> updateMemberRectification(
			// @RequestParam(name = "selectByCode", required = false) String selectByCode,
			@RequestParam(name = "registrationDate", required = false) String registrationDate,
			@RequestParam(name = "memberNamePrefix", required = false) String memberNamePrefix,
			@RequestParam(name = "memberName", required = false) String memberName,
			@RequestParam(name = "relativeName", required = false) String relativeName,
			@RequestParam(name = "relativeRelation", required = false) String relativeRelation,
			@RequestParam(name = "gender", required = false) String gender,
			@RequestParam(name = "dob", required = false) String dob,
			@RequestParam(name = "age", required = false) String age,
			@RequestParam(name = "maritalStatus", required = false) String maritalStatus,
			@RequestParam(name = "address", required = false) String address,
			@RequestParam(name = "district", required = false) String district,
			@RequestParam(name = "state", required = false) String state,
			@RequestParam(name = "branchName", required = false) String branchName,
			@RequestParam(name = "pinCode", required = false) String pinCode,
			@RequestParam(name = "aadharNo", required = false) String aadharNo,
			@RequestParam(name = "pan", required = false) String pan,
			@RequestParam(name = "voterNo", required = false) String voterNo,
			@RequestParam(name = "phoneno", required = false) String phoneno,
			@RequestParam(name = "emailid", required = false) String emailid,
			@RequestParam(name = "occupation", required = false) String occupation,
			@RequestParam(name = "education", required = false) String education,
			@RequestParam(name = "introMCode", required = false) String introMCode,
			@RequestParam(name = "introMName", required = false) String introMName,
			@RequestParam(value = "filetag", required = false) MultipartFile file1,
			@RequestParam(name = "nomineeName", required = false) String nomineeName,
			@RequestParam(name = "nRelation", required = false) String nRelation,
			@RequestParam(name = "nomineeAddress", required = false) String nomineeAddress,
			@RequestParam(name = "nomineeKycNumber", required = false) String nomineeKycNumber,
			@RequestParam(name = "nomineeMobileNo", required = false) String nomineeMobileNo,
			@RequestParam(name = "nomineeAge", required = false) String nomineeAge,
			@RequestParam(name = "nomineePanNo", required = false) String nomineePanNo,
			@RequestParam(name = "nomineeKycType", required = false) String nomineeKycType,
			@RequestParam(name = "memberJoiningFess", required = false) String memberJoiningFess,
			@RequestParam(name = "shareAllotedfrm", required = false) String shareAllotedfrm,
			@RequestParam(name = "noOfShared", required = false) String noOfShared,
			@RequestParam(name = "enterShareAmount", required = false) String enterShareAmount,
			@RequestParam(name = "paymode", required = false) String paymode,
			@RequestParam(name = "chkNo", required = false) String chkNo,
			@RequestParam(name = "chkDate", required = false) String chkDate,
			@RequestParam(name = "depositAcc", required = false) String depositAcc,
			@RequestParam(name = "remarks", required = false) String remarks,
			@RequestParam(name = "id123", required = false) Integer id) {
		try {
			List<ClientMaster> client = clientMasterRepo.findByid(id);
			client.forEach(s -> {
				if (!(file1 == null)) {
					try {
						byte[] image = file1.getBytes();
						s.setImage(image);
					} catch (IOException e) {
						e.printStackTrace();
					}
				}
				s.setRegistrationDate(registrationDate);
				s.setMemberNamePrefix(memberNamePrefix);
				s.setMemberName(memberName);
				s.setRelativeName(relativeName);
				s.setRelativeRelation(relativeRelation);
				s.setGender(gender);
				s.setDob(dob);
				s.setAge(age);
				s.setMaritalStatus(maritalStatus);
				s.setDistrict(district);
				s.setAddress(address);
				s.setState(state);
				s.setBranchName(branchName);
				s.setPinCode(pinCode);
				s.setAadharNo(aadharNo);
				s.setPan(pan);
				s.setVoterNo(voterNo);
				s.setPhoneno(phoneno);
				s.setEmailid(emailid);
				s.setOccupation(occupation);
				s.setEducation(education);
				s.setIntroMName(introMName);
				s.setIntroMCode(introMCode);
				s.setNomineeName(nomineeName);
				s.setnRelation(nRelation);
				s.setNomineeAddress(nomineeAddress);
				s.setNomineeKycNumber(nomineeKycNumber);
				s.setNomineeMobileNo(nomineeMobileNo);
				s.setNomineeAge(nomineeAge);
				s.setNomineePanNo(nomineePanNo);
				s.setNomineeKycType(nomineeKycType);
				s.setMemberJoiningFess(memberJoiningFess);
				s.setShareAllotedfrm(shareAllotedfrm);
				s.setNoOfShared(noOfShared);
				s.setEnterShareAmount(enterShareAmount);
				s.setPaymode(paymode);
				s.setChkNo(chkNo);
				s.setChkDate(chkDate);
				s.setDepositAcc(depositAcc);
				s.setRemarks(remarks);
				s.setFlag("1");

				clientMasterRepo.save(s);
			});
			return new ResponseEntity<>("Data Updated Successfully...", HttpStatus.OK);
		} catch (Exception e) {
			System.out.println(e);
			return new ResponseEntity<>("Data Updated Failed...", HttpStatus.INTERNAL_SERVER_ERROR);
		}
	}

	// Soft delete for Member Rectification
	@PostMapping("/deleteMemberRectificationBySelectByCode")
	@ResponseBody
	public ResponseEntity<String> deleteMemberRectificationByselectByCode(@RequestBody ClientMaster model) {
		String flag = "0";
		int i = clientMasterRepo.updateMemberRectificationThroughid(flag, model.getId());
		return ResponseEntity.ok("Deleted Successfully..!!");
	}

	// Retrieval code for Member Rectification after soft delete
	@GetMapping("/retrieveMemberRectificaionByFlag")
	@ResponseBody
	public List<ClientMaster> retrieveMemberRectificaionByFlag() {
		String flag = "1";
		List<ClientMaster> data = clientMasterRepo.findByflag(flag);
		return data;
	}

	/* */

	/* DAILY RENEWAL RECTIFICATION */

	@GetMapping("/DailyRenewalPaymentbbb6")
	public String DailyRenewalPaymentbbb6() {
		return "rectificationSection/DailyRenewalPaymentbbb6";
	}

	@GetMapping("/branchNameFromAddInvestment")
	@ResponseBody
	public List<AddInvestment> branchNameFromAddInvestment() {
		List<AddInvestment> list = addInvestmentRepo.findAll();
		return list;
	}

	@PostMapping("/DeleteDailyRenewalPaymentbbb6")
	public ResponseEntity<String> DeleteDailyRenewalPaymentbbb61(@RequestBody AddInvestment addIn) {
		String flag = "0";
		int i = addInvestmentRepo.updateThroughIDInDeleteDailyRenewalPaymentbbb6(flag, addIn.getId());
		return ResponseEntity.ok("Soft Deleted  SucessFully");
	}

	@GetMapping("/RetrieveDataOFSoftDeletedApi111")
	@ResponseBody
	public List<AddInvestment> RetrieveDataOFSoftDeletedApi() {
		String flag = "1";
		List<AddInvestment> data = addInvestmentRepo.findByflag(flag);
		return data;
	}

	/* */

	/* FLEXI TRANSACTION DELETE */

	/* */

	@GetMapping("/FlexiRenewalbbb6")
	public String FlexiRenewalbbb6() {
		return "rectificationSection/FlexiRenewalbbb6";
	}

	// Retrieve policy NO DropDown
	@PostMapping("/retrievepolicyNODropDown")
	@ResponseBody
	public List<AddInvestment> retrievepolicyNODropDown(@RequestBody AddInvestment model) {
		List<AddInvestment> list = addInvestmentRepo.findByid(model.getId());
		return list;
	}

	/* */
	
	/* SAVING RECTIFICATION */

	@GetMapping("/AddSavingbbb6")
	public String AddSavingbbb6() {
		return "rectificationSection/AddSavingbbb6";
	}

	@GetMapping("/RetrieveDataOFSoftDeleteAddSavingAcoount")
	@ResponseBody
	public List<AddSavingAccount> RetrieveDataOFSoftDeleteAddSavingAcoount() {
		String flag = "1";
		List<AddSavingAccount> data = addSavingAccountRepo.findByflag(flag);
		return data;
	}

	@PostMapping("/RetrieveDatathroughAccountNumber")
	@ResponseBody
	public List<AddSavingAccount> RetrieveDatathroughAccountNumber(@RequestBody AddSavingAccount asm) {

		List<AddSavingAccount> data = addSavingAccountRepo.findByaccountNo(asm.getAccountNo());
		return data;
	}

	// Update the Saving REctification
	@PostMapping("/UpdatetheSavingREctification")
	@ResponseBody
	public ResponseEntity<String> UpdatetheSavingREctification(
			@RequestParam(name = "accountNo", required = false) String accountNo,
			@RequestParam(name = "searchMemberCode", required = false) String searchMemberCode,
			@RequestParam(name = "opDate", required = false) String opDate,
			@RequestParam(name = "memberName", required = false) String memberName,
			@RequestParam(name = "dOB", required = false) String dOB,
			@RequestParam(name = "relativeName", required = false) String relativeName,
			@RequestParam(name = "phoneno", required = false) String phoneno,
			@RequestParam(name = "nomineeName", required = false) String nomineeName,
			@RequestParam(name = "nage", required = false) String nage,
			@RequestParam(name = "nRelation", required = false) String nRelation,
			@RequestParam(name = "address", required = false) String address,
			@RequestParam(name = "district", required = false) String district,
			@RequestParam(name = "cSPName", required = false) String cSPName,
			@RequestParam(name = "state", required = false) String state,
			@RequestParam(name = "pin", required = false) String pin,
			@RequestParam(name = "modeOfOp", required = false) String modeOfOp,
			@RequestParam(name = "jointCode", required = false) String jointCode,
			@RequestParam(name = "jointName", required = false) String jointName,
			@RequestParam(name = "jointRelation", required = false) String jointRelation,
			@RequestParam(name = "sBPlan", required = false) String sBPlan,
			@RequestParam(name = "openingAmount", required = false) String openingAmount,
			@RequestParam(name = "advisorCode", required = false) String advisorCode,
			@RequestParam(name = "advisorName", required = false) String advisorName,
			@RequestParam(name = "opFees", required = false) String opFees,
			@RequestParam(name = "paymode", required = false) String paymode,
			@RequestParam(name = "remarks", required = false) String remarks,
			@RequestParam(name = "chkisactive", required = false) String chkisactive,
			@RequestParam(name = "chkisSms", required = false) String chkisSms,
			@RequestParam(name = "chkdebitcard", required = false) String chkdebitcard,
			@RequestParam(name = "filetag", required = false) MultipartFile filetag,
			@RequestParam(name = "secondfiletag", required = false) MultipartFile secondfiletag,
			@RequestParam(name = "thirdfiletag", required = false) MultipartFile thirdfiletag) {

		if (!filetag.isEmpty() || !secondfiletag.isEmpty() || !thirdfiletag.isEmpty()) {

			String fileName1 = null;
	        String fileName2 = null;
	        String fileName3 = null;
	        
	        if (!filetag.isEmpty()) {
	            fileName1 = fileStorageService.storeFile(filetag);
	        }

	        if (!secondfiletag.isEmpty()) {
	            fileName2 = fileStorageService.storeFile(secondfiletag);
	        }

	        if (!thirdfiletag.isEmpty()) {
	            fileName3 = fileStorageService.storeFile(thirdfiletag);
	        }

	        int i = addSavingAccountRepo.updateTheAddSavingAcoount(accountNo, searchMemberCode, opDate, memberName, dOB,
	                relativeName, phoneno, nomineeName, nage, nRelation, address, district, cSPName, state, pin,
	                modeOfOp, jointCode, jointName, jointRelation, sBPlan, openingAmount, advisorCode, advisorName,
	                opFees, paymode, remarks, chkisactive, chkisSms, chkdebitcard, fileName1, fileName2, fileName3, "1");
			} else {
				int i = addSavingAccountRepo.updateTheAddSavingAcoountWithoutFile(accountNo, searchMemberCode, opDate,
	                memberName, dOB, relativeName, phoneno, nomineeName, nage, nRelation, address, district, cSPName,
	                state, pin, modeOfOp, jointCode, jointName, jointRelation, sBPlan, openingAmount, advisorCode,
	                advisorName, opFees, paymode, remarks, chkisactive, chkisSms, chkdebitcard, "1");
		}
		return ResponseEntity.ok("Data Updated Successfully..!!");
	}

	// Soft Delete rectification of saving rectification
	@PostMapping("/softDeleterectificationofsavingrectification")
	@ResponseBody
	public ResponseEntity<String> softDeleterectificationofsavingrectification(@RequestBody AddSavingAccount asm) {
		String flag = "0";
		int i = addSavingAccountRepo.softDeleterectificationofsavingrectification(flag, asm.getAccountNo());

		return ResponseEntity.ok("Deleted Successfully..!!");
	}

}
