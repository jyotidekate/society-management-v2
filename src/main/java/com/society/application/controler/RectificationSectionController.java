package com.society.application.controler;

import java.util.List;

import org.apache.taglibs.standard.lang.jstl.test.beans.PublicBean1;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.society.application.model.AddInvestment;
import com.society.application.model.AddSavingAccount;
import com.society.application.model.AdvisorCollectorDetails;
import com.society.application.model.BranchMaster;
import com.society.application.model.Loan;
import com.society.application.model.LoanMaster;
import com.society.application.model.Member;
import com.society.application.model.PaymentMaster;
import com.society.application.model.SavingsDepositWith;
import com.society.application.model.ShareTransferDto;
import com.society.application.repository.AddInvestmentRepo;
import com.society.application.repository.AddSavingAccountRepo;
import com.society.application.repository.AdvisorCollectorDetailsRepo;
import com.society.application.repository.BranchMasterRepo;
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
	PaymentMasterRepo paymentRepo ;
	
	@Autowired
	AddSavingAccountRepo addSavingAccountRepo;
	
	@Autowired
	SavingsDepositWithdrawalRepo savingsDepositWithdrawalRepo;
	
	@Autowired BranchMasterRepo branchMasterRepo;
	
	@Autowired LoanMasterRepo loanmasterrepo;
	
	@Autowired LoanRepo loanrepo;
	
	@Autowired MemberRepo memberrepo;
	/* ADVISOR/COLLECTOR RECTIFICATION */
	
	@GetMapping("/advisorRectification")
	public String getAdvisorRectification() {
		return "rectificationSection/AdvisorRectification";
	}
	@GetMapping("/renewalRectification")
	public String getrenewalRectification() {
		return "rectificationSection/RenewalRectification";
	}
	
//	@GetMapping("/loanRectification")
//	public String getloanRectification() {
//		return "rectificationSection/LoanApplication";
//	}
	
	//Retrieve operation of dropdown for policy no. after soft delete operation
		@GetMapping("/retrievePolicyNoAfterSoftDelete")
		@ResponseBody
		public List<AddInvestment> retrievePolicyNoAfterSoftDelete(){
			String flag = "1";
			List<AddInvestment> list = addInvestmentRepo.findByflag(flag);
			return list;
		}
		@PostMapping("/deleteByPolicyNo")
		@ResponseBody
		public ResponseEntity<String> getdeleteByPolicyNo(@RequestBody AddInvestment model){
			String flag = "0";
			int i = addInvestmentRepo.updateThroughIdRenewalDateBranchName(flag, model.getId(), model.getRenewalDate(), model.getBranchName());
			//System.out.println(model.getRenewalDate());
			//System.out.println(model.getBranchName());
			//System.out.println(model.getId());
			//return ResponseEntity.ok("Deleted Successfully...!!!");
			if(i > 0) {
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
		@GetMapping("/loanRectification")
		public String getloanRectification() {
			return "rectificationSection/LoanApplication";
		}
		@GetMapping("/SavingTransactionDelete")
		public String getSavingTransactionDelete() {
			return "rectificationSection/SavingTransactionDelete";
		}
		@GetMapping("/AddSavingbbb6")
		public String AddSavingbbb6() {
			return "rectificationSection/AddSavingbbb6";
		}
		
		@GetMapping("/retrieveDataOfSelectByLoanID")
		@ResponseBody
		public List<LoanMaster> getRetrieveDataOfSelectByLoanID(){
			String flag = "1";
			List<LoanMaster> list = loanmasterrepo.findByflag(flag);
			return list;
		}
		
		@GetMapping("/slectLoanPlanNameFromLoanTable")
		@ResponseBody
		public List<Loan> getSlectLoanPlanNameFromLoanTable(){
			List<Loan> list = loanrepo.findAll();
			return list;
		}
		
		//Retrieve data from loan table in Loan Plan Name
		@PostMapping("/searchByLoanPlanNameFromLoanTable")
		@ResponseBody
		public List<Loan> getSearchByLoanPlanNameFromLoanTable(@RequestBody Loan modle){
			List<Loan> loan = loanrepo.findByloanPlanName(modle.getLoanPlanName());
			return loan;
		}
		
		@PostMapping("/deleteSelectByLoanID")
		@ResponseBody
		public ResponseEntity<String> getDeleteSelectByLoanID(@RequestBody LoanMaster model){
			String flag = "0";
			int i = loanmasterrepo.updateThroughIdInDeleteLoanApplication(flag, model.getId());
			return ResponseEntity.ok("Deleted Successfully...!!!");
		}
		
	//Append id in dropdown from db
	@GetMapping("/selectByCode")
	@ResponseBody
	public List<AdvisorCollectorDetails> getSelectByCode(){
		List<AdvisorCollectorDetails> advisor = advisorcollectordetailsrepo.findAll();
		return advisor;
	}
	
	//Retrieve data from Id
	@PostMapping("/searchById")
	@ResponseBody
	public List<AdvisorCollectorDetails> getsearchById(@RequestBody AdvisorCollectorDetails model){
		List<AdvisorCollectorDetails> advisors = advisorcollectordetailsrepo.findByid(model.getId());
		return advisors;
	}
	
	//Save Operation
	@PostMapping("/saveNewData")
	@ResponseBody
	public ResponseEntity<String> saveNewData(
			@RequestParam(name = "memberName", required = false) String memberName,
			@RequestParam(value = "filetag", required = false) MultipartFile file1,
			@RequestParam(value = "secondfiletag", required = false) MultipartFile file2,
			@RequestParam(name ="joiningDate", required = false) String joiningDate,
			@RequestParam(name ="selectMember", required = false) String selectMember,
			@RequestParam(name ="dob" , required = false) String dob,
			@RequestParam(name ="age", required = false) String age,
			@RequestParam(name ="relativeName", required = false) String relativeName,
			@RequestParam(name ="relativeRelation", required = false) String relativeRelation,
			@RequestParam(name ="mobileNo", required = false) String mobileNo,
			@RequestParam(name ="nomineeName", required = false) String nomineeName,
			@RequestParam(name ="relation", required = false) String relation,
			@RequestParam(name ="branchName", required = false) String branchName,
			@RequestParam(name ="nomineeAge", required = false) String nomineeAge,
			@RequestParam(name ="address", required = false) String address,
			@RequestParam(name ="district", required = false) String district,
			@RequestParam(name ="state", required = false) String state,
			@RequestParam(name ="pinCode", required = false) String pinCode,
			@RequestParam(name ="occupation", required = false) String occupation,
			@RequestParam(name ="education", required = false) String education,
			@RequestParam(name ="selectPosition", required = false) String selectPosition,
			@RequestParam(name ="introducerCode", required = false) String introducerCode,
			@RequestParam(name ="introducerName", required = false) String introducerName,
			@RequestParam(name ="feesIfAny", required = false) String feesIfAny,
			@RequestParam(name ="position", required = false) String position,
			@RequestParam(name ="paymentBy", required = false) String paymentBy,
			@RequestParam(name ="remarks", required = false) String remarks,
			@RequestParam(name = "id133", required = false) String id,
			AdvisorCollectorDetails advisor
			){
		if(!file1.isEmpty() && !file2.isEmpty()) {
			String fileName1 = fileStorageService.storeFile(file1);
			String fileName2 = fileStorageService.storeFile(file2);
			//advisor.setPhoto(fileName1);
			//advisor.setSigniture(fileName2);
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
	public List<Member> getSerachBySearchMemberFromMemberTable(@RequestBody Member modle){
		List<Member> member = memberrepo.findBymemberName(modle.getMemberName());
		return member;
	}
	
	//Soft Delete Operation
	@PostMapping("/deleteAdvisorRectification")
	@ResponseBody
	public ResponseEntity<String> deleteAdvisorRectification(@RequestBody AdvisorCollectorDetails model){
		String flag = "0";
		int i = advisorcollectordetailsrepo.updateThroughIDIndeleteAdvisorRectification(flag, model.getId());
		return ResponseEntity.ok("Deleted Successfully...!!!");
	}
	
	//Retrieve data in dropdown from dp after soft delete operation is done
	@GetMapping("/retrieveDataOfSoftDeleteApi")
	@ResponseBody
	public List<AdvisorCollectorDetails> retrieveDataOfSoftDeleteApi(){
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
	List<PaymentMaster> getsharePayment(){
		return paymentRepo.findAll();
	}
	
	@PostMapping("/getBranchName1")
	@ResponseBody
	List<BranchMaster> getBranchName(){
		return branchMasterRepo.findAll();}
	
	@PostMapping("/retrieveDataInSavingsTransactionDelete")  
	@ResponseBody public List<SavingsDepositWith> retrieveDataInSavingsTransactionDelete(@RequestBody SavingsDepositWith std ){
	  List<SavingsDepositWith> data1 =savingsDepositWithdrawalRepo.findByaccountNo(std.getAccountNo()); 
	  return data1 ; 
	}
	
	//Update Operation
	@PostMapping("/updateAdvisorRectification")
	@ResponseBody
	public ResponseEntity<String> updateAdvisorRectification(
			@RequestParam(name = "memberName", required = false) String memberName,
			@RequestParam(value = "filetag", required = false) MultipartFile file1,
			@RequestParam(value = "secondfiletag", required = false) MultipartFile file2,
			@RequestParam(name ="joiningDate", required = false) String joiningDate,
			@RequestParam(name ="selectMember", required = false) String selectMember,
			@RequestParam(name ="dob" , required = false) String dob,
			@RequestParam(name ="age", required = false) String age,
			@RequestParam(name ="relativeName", required = false) String relativeName,
			@RequestParam(name ="relativeRelation", required = false) String relativeRelation,
			@RequestParam(name ="mobileNo", required = false) String mobileNo,
			@RequestParam(name ="nomineeName", required = false) String nomineeName,
			@RequestParam(name ="relation", required = false) String relation,
			@RequestParam(name ="branchName", required = false) String branchName,
			@RequestParam(name ="nomineeAge", required = false) String nomineeAge,
			@RequestParam(name ="address", required = false) String address,
			@RequestParam(name ="district", required = false) String district,
			@RequestParam(name ="state", required = false) String state,
			@RequestParam(name ="pinCode", required = false) String pinCode,
			@RequestParam(name ="occupation", required = false) String occupation,
			@RequestParam(name ="education", required = false) String education,
			@RequestParam(name ="selectPosition", required = false) String selectPosition,
			@RequestParam(name ="introducerCode", required = false) String introducerCode,
			@RequestParam(name ="introducerName", required = false) String introducerName,
			@RequestParam(name ="feesIfAny", required = false) String feesIfAny,
			@RequestParam(name ="position", required = false) String position,
			@RequestParam(name ="paymentBy", required = false) String paymentBy,
			@RequestParam(name ="remarks", required = false) String remarks,
			@RequestParam(name = "id133") Integer id,
			@RequestParam(name ="advisorStatus", required = false) String advisorStatus,
			@RequestParam(name ="smsSend", required = false) String smsSend
			){
		if(!file1.isEmpty()&&!file2.isEmpty()) {
			String fileName = fileStorageService.storeFile(file1);
			String fileName1 = fileStorageService.storeFile(file2);
			
			//System.out.println(id);
			int i = advisorcollectordetailsrepo.updateThroughID(joiningDate,selectMember,nomineeName,relation,branchName,nomineeAge,
					fileName,fileName1,selectPosition,introducerCode,feesIfAny,paymentBy,remarks,advisorStatus,smsSend,id);
		}else {
			int i = advisorcollectordetailsrepo.updateThroughID1(joiningDate,selectMember,nomineeName,relation,branchName,nomineeAge,
					selectPosition,introducerCode,feesIfAny,paymentBy,remarks,advisorStatus,smsSend,id);
		}
		return ResponseEntity.ok("Updated Successfully...!!!");
	}
	 
	/* */
	
	/* INVESTMENT RECTIFICATION */
	
	@GetMapping("InvestmentRectification")
	public String showInvestmentRectificationPage() {
		return "rectificationSection/InvestmentRectification";
	}
	
	@GetMapping("/RetrieveDataOFSoftDeletedApis")
	@ResponseBody
	public List<AddInvestment> getretrieveDataOfSoftDeleteApi(){
		String flag = "1";
		List<AddInvestment> data = addInvestmentRepo.findByflag(flag);
		return data;
	}
	
	//dropdown value for investment rectification for Policy no.
	@PostMapping("/policynoapi")
	public ResponseEntity<String> DeleteDailyRenewalPaymentbbb6(@RequestBody AddInvestment addIn) {	
			String flag ="0";
			int i = addInvestmentRepo.updateThroughIDInDeleteinvestmentRectification(flag,addIn.getPolicyno());
			return ResponseEntity.ok("Soft Deleted  SucessFully");
	}
		
	//Code for Retriving data on Feilds
	@PostMapping("/retriveDataFromPolicyno")
	@ResponseBody
	public List<AddInvestment> retrivedatafrompolicyno(@RequestBody AddInvestment adi){
			List<AddInvestment> datAddInvestments=addInvestmentRepo.findBypolicyno(adi.getPolicyno());
			return datAddInvestments;
	}
			
	//Code for Updateing feilds
	@PostMapping("/updateInvestmentRectification")
	@ResponseBody
	public ResponseEntity<String> updateInvestmentRectification(
				@RequestParam(value = "filetag", required = false) MultipartFile file1,
				@RequestParam(value = "secondfiletag", required = false) MultipartFile file23,
				@RequestParam("policyno") String policyno,
				@RequestParam("policyDate") String policyDate,
			    @RequestParam("memberName") String memberName,
				@RequestParam("dob") String dob,
				@RequestParam("age") String age,
				@RequestParam("relativeName") String relativeName,
				@RequestParam("phoneno") String phoneno,
				@RequestParam("nomineeName") String nomineeName,
				@RequestParam("nomineeAge") String nomineeAge,
				@RequestParam("nomineeRelation") String nomineeRelation,
				@RequestParam("address") String address,
				@RequestParam("district") String district,
				@RequestParam("state") String state,
				@RequestParam("pin") String pin,
				@RequestParam("cspname") String cspname,
				@RequestParam("modeOfOp") String modeOfOp,
				@RequestParam("jointCode") String jointCode,
				@RequestParam("jointName") String jointName,
				@RequestParam("mDate") String mDate,
				@RequestParam("schemeType") String schemeType,
				@RequestParam("schemeName") String schemeName,
				@RequestParam("term") String term,
				@RequestParam("mode") String mode,
//				@RequestParam("misMode") String misMode,
				@RequestParam("policyAmount") String policyAmount,
				@RequestParam("totalDeposit") String totalDeposit,
				@RequestParam("maturityAmount") String maturityAmount,
				@RequestParam("mISInterest") String mISInterest,
				@RequestParam("paymode") String paymode,
				@RequestParam("remarks") String remarks,
				@RequestParam("advisorCode") String advisorCode,
				@RequestParam("advisorName") String advisorName,
				@RequestParam("chkisSms") String chkisSms) {
			
					if(!file1.isEmpty()&&!file23.isEmpty()) {
						String fileName = fileStorageService.storeFile(file1);
						String fileName2 = fileStorageService.storeFile(file23);
						int i = addInvestmentRepo.updateThroughThepolicyno(policyDate,memberName,dob,age,relativeName,phoneno,nomineeName,nomineeAge,nomineeRelation,
								address,pin,cspname,modeOfOp,jointCode,district,state,jointName,mDate,schemeType,schemeName,term,mode,policyAmount,
								totalDeposit,maturityAmount,mISInterest,paymode,remarks,advisorCode,advisorName,chkisSms,fileName,fileName2,policyno);
						//System.out.println(fileName +""+fileName2);
					}else {
						int i = addInvestmentRepo.updateThroughThepolicyno2(policyDate,memberName,dob,age,relativeName,phoneno,nomineeName,nomineeAge,nomineeRelation,
						address,pin,cspname,modeOfOp,jointCode,district,state,jointName,mDate,schemeType,schemeName,term,mode,policyAmount,
						totalDeposit,maturityAmount,mISInterest,paymode,remarks,advisorCode,advisorName,chkisSms,policyno);
					}
					return ResponseEntity.ok("Updated SucessFully");
	 }
	
	/* */
	
	/* SHARE RECTIFICATION */
	
	@GetMapping("/ShareRectification")
	public String getShareRectification() {
		return "rectificationSection/ShareRectification";
	}
		
	//dropdown for Payment 
	
	
	@PostMapping("/DeleteSavingsTransactionDelete")
	@ResponseBody
	public ResponseEntity<String> DeleteSavingsTransactionDelete(@RequestBody SavingsDepositWith model) {
			String flag = "0";
			int i = savingsDepositWithdrawalRepo.updateThroughIDInDeleteSavingsTransaction(flag, model.getAccountNo());

			return ResponseEntity.ok("Soft Deleted Successfully...");
	}
	//Code for Retrieving data on Fields
	@PostMapping("/retrievedateinsharefields")
	@ResponseBody
	public List<ShareTransferDto> retrievedateinsharefields(@RequestBody ShareTransferDto adi){
			List<ShareTransferDto> data=shareRepo.findByid(adi.getId());
			return data;
	}
		
	@PostMapping("/DeleteShareRectification")
	public ResponseEntity<String> DeleteShareRectification(@RequestBody ShareTransferDto model){
			String flag = "0";
			int i = shareRepo.updateThroughIDInDeleteShareRectification(flag, model.getId());
			return ResponseEntity.ok("Soft Deleted Successfully...");
	}
		
	@PostMapping("/RetrieveDataOfSoftDeletedApi")
	@ResponseBody
	public List<ShareTransferDto> RetrieveDataOfSoftDeletedApi(){
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
	
	//Get Dynamic Dropdown in Member Rectification
	@GetMapping("/getDataInDd")
	@ResponseBody
	public List<Member> getDataInDd(){
		List<Member> list = memberRepo.findAll();
		return list;
	}
	
	//Retrieve Code
	@PostMapping("/searchByCode")
	@ResponseBody
	public List<Member> getSearchByCode(@RequestBody Member model){
		List<Member> list = memberRepo.findByselectByCode(model.getSelectByCode());
		return list;
	}
	
	//Update Code of Member Rectification
	@PostMapping("/updateMemberRectification")
	@ResponseBody
	public ResponseEntity<String> updateMemberRectification(
	 @RequestParam(name = "selectByCode", required = false) String selectByCode,		
	 @RequestParam(name = "registrationDate" , required = false)	String registrationDate,
	 @RequestParam(name = "memberNamePrefix" , required = false)	String memberNamePrefix,
	 @RequestParam(name = "memberName" , required = false)	String memberName,
	 @RequestParam(name = "relativeName", required = false)	String relativeName,
	 @RequestParam(name = "relativeRelation", required = false)	String relativeRelation,
	 @RequestParam(name = "gender", required = false)	String gender,
	 @RequestParam(name = "dob", required = false)	String dob,
	 @RequestParam(name ="age" , required = false)	String age,
	 @RequestParam(name ="maritalStatus" , required = false)	String maritalStatus,
	 @RequestParam(name ="address" , required = false)	String address,
	 @RequestParam(name ="district" , required = false)	String district,
	 @RequestParam(name ="state" , required = false)	String state,
	 @RequestParam(name ="branchName" , required = false)	String branchName,
	 @RequestParam(name ="pinCode" , required = false)	String pinCode,
	 @RequestParam(name ="aadharNo" , required = false)	String aadharNo,
	 @RequestParam(name ="pan" , required = false)	String pan,
	 @RequestParam(name ="voterNo" , required = false)	String voterNo,
	 @RequestParam(name ="phoneno" , required = false)	String phoneno,
	 @RequestParam(name ="emailid" , required = false)	String emailid,
	 @RequestParam(name ="occupation" , required = false)	String occupation,
	 @RequestParam(name ="education" , required = false)	String education,
	 @RequestParam(name ="introMCode" , required = false)	String introMCode,
	 @RequestParam(name ="introMName" , required = false)	String introMName,
	 @RequestParam(value = "filetag", required = false) MultipartFile file1,
	 @RequestParam(name ="nomineeName" , required = false)	String nomineeName,
	 @RequestParam(name ="nRelation" , required = false)	String nRelation,
	 @RequestParam(name ="nomineeAddress" , required = false)	String nomineeAddress,
	 @RequestParam(name ="nomineeKycNumber" , required = false)	String nomineeKycNumber,
	 @RequestParam(name ="nomineeMobileNo" , required = false)	String nomineeMobileNo,
	 @RequestParam(name ="nomineeAge" , required = false)	String nomineeAge,
	 @RequestParam(name ="nomineePanNo" , required = false)	String nomineePanNo,
	 @RequestParam(name ="nomineeKycType" , required = false)	String nomineeKycType,
	 @RequestParam(name ="memberJoiningFess" , required = false)	String memberJoiningFess,
	 @RequestParam(name ="shareAllotedfrm" , required = false)	String shareAllotedfrm,
	 @RequestParam(name ="noOfShared" , required = false)	String noOfShared,
	 @RequestParam(name ="enterShareAmount" , required = false)	String enterShareAmount,
	 @RequestParam(name ="paymode" , required = false)	String paymode,
	 @RequestParam(name ="chkNo" , required = false)	String chkNo,
	 @RequestParam(name ="chkDate" , required = false)	String chkDate,
	 @RequestParam(name ="depositAcc" , required = false)	String depositAcc,
	 @RequestParam(name ="remarks" , required = false)	String remarks
	){
		if(!file1.isEmpty()) {
		String fileName1 = fileStorageService.storeFile(file1);	
		
		int i = memberRepo.updateThroughselectByCode(selectByCode,registrationDate, memberNamePrefix, memberName, relativeName, relativeRelation, gender, dob, age, maritalStatus, address, district, state, branchName, pinCode 
		,aadharNo, pan, voterNo, phoneno, emailid, occupation,	education, introMCode, introMName,fileName1, nomineeName, nRelation, nomineeAddress, nomineeKycNumber, nomineeMobileNo, nomineeAge, nomineePanNo, nomineeKycType,
		memberJoiningFess, shareAllotedfrm, noOfShared, enterShareAmount, paymode, chkNo, chkDate, depositAcc, remarks );   
		}
		return ResponseEntity.ok("Data Updated Successfully..!!");
	}
	
	//Soft Delete for Member Rectification
	@PostMapping("/deleteMemberRectificationByselectByCode")
	@ResponseBody
	public ResponseEntity<String> deleteMemberRectificationByselectByCode(@RequestBody Member member) {
	String flag= "0";
	int i =	memberRepo.updateMemberRectificationThroughselectByCode(flag,member.getSelectByCode());
		
		return ResponseEntity.ok("Deleted Successfully..!!");
	}
	
	//Retrieval Code for Member Rectification 
	@GetMapping("/retrieveMemberRectificaionByFlag")
	@ResponseBody
	public List<Member> retrieveMemberRectificaionByFlag(){
    String flag = "1";
	List<Member> data = memberRepo.findByflag(flag);
		return data;
	}
	
	/* */
	
	/* DAILY RENEWAL RECTIFICATION */
	
	@GetMapping("/DailyRenewalPaymentbbb6")
	public String DailyRenewalPaymentbbb6() {
		return "rectificationSection/DailyRenewalPaymentbbb6";
	}
	
	@PostMapping("/DeleteDailyRenewalPaymentbbb6")
	public ResponseEntity<String> DeleteDailyRenewalPaymentbbb61(@RequestBody AddInvestment addIn) {
	
		String flag ="0";
		
		int i = addInvestmentRepo.updateThroughIDInDeleteDailyRenewalPaymentbbb6(flag,addIn.getId());
		
		return ResponseEntity.ok("Soft Deleted  SucessFully");
	}
	
	@GetMapping("/RetrieveDataOFSoftDeletedApi111")
	@ResponseBody
	public List<AddInvestment>  RetrieveDataOFSoftDeletedApi() {
		
		String flag = "1";
		List<AddInvestment> data = addInvestmentRepo.findByflag(flag);
		return  data;
	}
	
	/* */
	
	/* FLEXI TRANSACTION DELETE */
	
	/* */
	
	@GetMapping("/FlexiRenewalbbb6")
	public String FlexiRenewalbbb6() {
		return "rectificationSection/FlexiRenewalbbb6";
	}
	
	
	//Retrieve policy NO DropDown
		@PostMapping("/retrievepolicyNODropDown")
		@ResponseBody
		public List<AddInvestment> retrievepolicyNODropDown(@RequestBody AddInvestment model){
			List<AddInvestment> list = addInvestmentRepo.findByid(model.getId());
			return list;
		}	
		
		
		
		/* */
		
		/* Saving Rectification */
		
		/* */
		
	
		
		
		@GetMapping("/RetrieveDataOFSoftDeleteAddSavingAcoount")
		@ResponseBody
		public List<AddSavingAccount>  RetrieveDataOFSoftDeleteAddSavingAcoount() {
			
			String flag = "1";
			List<AddSavingAccount> data = addSavingAccountRepo.findByflag(flag);
			return  data;
		}
		
		
		@PostMapping("/RetrieveDatathroughAccountNumber")
		@ResponseBody
		public List<AddSavingAccount>  RetrieveDatathroughAccountNumber(@RequestBody AddSavingAccount asm) {
			
			
			List<AddSavingAccount> data = addSavingAccountRepo.findByaccountNo(asm.getAccountNo());
			return  data;
		}
		
		
		
		//Update the Saving REctification
		@PostMapping("/UpdatetheSavingREctification")
		@ResponseBody
		public ResponseEntity<String> UpdatetheSavingREctification(
		 @RequestParam(name = "accountNo", required = false) String accountNo,		
		 @RequestParam(name = "searchMemberCode" , required = false)	String searchMemberCode,
		 @RequestParam(name = "opDate" , required = false)	String opDate,
		 @RequestParam(name = "memberName" , required = false)	String memberName,
		 @RequestParam(name = "dOB", required = false)	String dOB,
		 @RequestParam(name = "relativeName", required = false)	String relativeName,
		 @RequestParam(name = "phoneno", required = false)	String phoneno,
		 @RequestParam(name = "nomineeName", required = false)	String nomineeName,
		 @RequestParam(name ="nage" , required = false)	String nage,
		 @RequestParam(name ="nRelation" , required = false)	String nRelation,
		 @RequestParam(name ="address" , required = false)	String address,
		 @RequestParam(name ="district" , required = false)	String district,
		 @RequestParam(name ="cSPName" , required = false)	String cSPName,
		 @RequestParam(name ="state" , required = false)	String state,
		 @RequestParam(name ="pin" , required = false)	String pin,
		 @RequestParam(name ="modeOfOp" , required = false)	String modeOfOp,
		 @RequestParam(name ="jointCode" , required = false)	String jointCode,
		 @RequestParam(name ="jointName" , required = false)	String jointName,
		 @RequestParam(name ="jointRelation" , required = false)	String jointRelation,
		 @RequestParam(name ="sBPlan" , required = false)	String sBPlan,
		 @RequestParam(name ="openingAmount" , required = false)	String openingAmount,
		 @RequestParam(name ="advisorCode" , required = false)	String advisorCode,
		 @RequestParam(name ="advisorName" , required = false)	String advisorName,
		 @RequestParam(name ="opFees" , required = false)	String opFees,
		 @RequestParam(name = "paymode", required = false) String paymode,
		 @RequestParam(name ="remarks" , required = false)	String remarks,
		 @RequestParam(name ="chkisactive" , required = false)	String chkisactive,
		 @RequestParam(name ="chkisSms" , required = false)	String chkisSms,
		 @RequestParam(name ="chkdebitcard" , required = false)	String chkdebitcard,
		 @RequestParam(name = "filetag", required = false) MultipartFile filetag,
		 @RequestParam(name = "secondfiletag", required = false) MultipartFile secondfiletag,
		 @RequestParam(name = "thirdfiletag", required = false) MultipartFile thirdfiletag
		){
			
			
			if(!filetag.isEmpty()&&!secondfiletag.isEmpty()&&!thirdfiletag.isEmpty()) {
			
			String fileName1 = fileStorageService.storeFile(filetag);	
			String fileName2 = fileStorageService.storeFile(secondfiletag);
			String fileName3 = fileStorageService.storeFile(thirdfiletag);
			
			int i = addSavingAccountRepo.updateTheAddSavingAcoount(accountNo,searchMemberCode,opDate,memberName,dOB,relativeName,
					phoneno,nomineeName,nage,nRelation,address,district,cSPName,state,pin,modeOfOp,jointCode,jointName,jointRelation
					,sBPlan,openingAmount,advisorCode,advisorName,opFees,paymode,remarks,chkisactive,chkisSms,chkdebitcard,fileName1,
					fileName2,fileName3);
			}else {
				int i = addSavingAccountRepo.updateTheAddSavingAcoountWithoutFile(accountNo,searchMemberCode,opDate,memberName,dOB,relativeName,
						phoneno,nomineeName,nage,nRelation,address,district,cSPName,state,pin,modeOfOp,jointCode,jointName,jointRelation
						,sBPlan,openingAmount,advisorCode,advisorName,opFees,paymode,remarks,chkisactive,chkisSms,chkdebitcard);
			}
			
			
			
			return ResponseEntity.ok("Data Updated Successfully..!!");
		}
		
		
		//Soft Delete rectification of saving rectification
		@PostMapping("/softDeleterectificationofsavingrectification")
		@ResponseBody
		public ResponseEntity<String> softDeleterectificationofsavingrectification(@RequestBody AddSavingAccount asm) {
		String flag= "0";
		int i =	addSavingAccountRepo.softDeleterectificationofsavingrectification(flag,asm.getAccountNo());
			
			return ResponseEntity.ok("Deleted Successfully..!!");
		}
		
}
