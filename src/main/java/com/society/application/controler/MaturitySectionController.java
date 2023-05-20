package com.society.application.controler;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.ResponseBody;

import com.society.application.model.AddInvestment;
import com.society.application.model.AdvisorCollectorDetails;
import com.society.application.model.DailyDeposite;
import com.society.application.model.FixedDeposit;
import com.society.application.model.MISDeposit;
import com.society.application.model.MatApplicationStatus;
import com.society.application.model.MaturityPartPayment;
import com.society.application.model.MaturityPaymentReportModel;
import com.society.application.model.RecurringDeposit;
import com.society.application.repository.AddInvestmentRepo;
import com.society.application.repository.AdvisorCollectorDetailsRepo;
import com.society.application.repository.DailyDepositeRepo;
import com.society.application.repository.FixedDepositRepo;
import com.society.application.repository.MISDepositRepo;
import com.society.application.repository.MatApplicationStatusRepo;
import com.society.application.repository.MaturityPartPaymentRepo;
import com.society.application.repository.MaturityPayemntRepo;
import com.society.application.repository.MaturityPaymentReportRepo;
import com.society.application.repository.RecurringDepositRepo;

@Controller
public class MaturitySectionController {
	@Autowired
	DailyDepositeRepo dailydepositerepo;
	
	@Autowired
	RecurringDepositRepo recurringdepositrepo;
	
	@Autowired
	FixedDepositRepo fixeddepositrepo;
	
	@Autowired
	MISDepositRepo misepositrepo;
	
	@Autowired 
	MaturityPaymentReportRepo maturitypaymentreportrepo;
	
	@Autowired
	MaturityPayemntRepo maturityPaymeRepo;
	
	@Autowired
	AdvisorCollectorDetailsRepo advisorCollectorDetailsRepo;
	
	@Autowired
	private MatApplicationStatusRepo  matApplicationStatusRepo;
	
	@Autowired
	MaturityPaymentReportRepo matrepo;
	
	@Autowired
	MaturityPartPaymentRepo maturityPartPaymentRepo;
	
	@Autowired
	AddInvestmentRepo addInvestmentRepo;
	
	/* MATURITY MASTER */

	@GetMapping("/maturityMaster")
	public String getMaturityMaster() {
		return "maturitySection/MaturityMaster";
	}
	
	/* MATURITY MASTER - 1. Daily Deposit */
	@GetMapping("/maturityMaster1") 
	public String  getmaturityMaster1(@ModelAttribute("DailyDeposite") DailyDeposite dailydep, HttpServletRequest request) { 		  
		  dailydepositerepo.save(dailydep);
		  return "maturitySection/MaturityMaster"; 
	}
	
	/* MATURITY MASTER - 2. Recurring Deposit */
	@GetMapping("/maturityMaster2") 
	public String  getmaturityMaster2(@ModelAttribute("RecurringDeposite") RecurringDeposit recurringdep, HttpServletRequest request) { 		  
		    recurringdepositrepo.save(recurringdep);
	      return "maturitySection/MaturityMaster"; 
	}
	
	/* MATURITY MASTER - 3. Fixed Deposit */
	@GetMapping("/maturityMaster3") 
	public String  getmaturityMaster3(@ModelAttribute("FixedDeposite") FixedDeposit fixeddep, HttpServletRequest request) { 		  
		    fixeddepositrepo.save(fixeddep);
		    return "maturitySection/MaturityMaster"; 
	}
	
	/* MATURITY MASTER - 4. MIS Deposit */
	@GetMapping("/maturityMaster4") 
	public String  getmaturityMaster4(@ModelAttribute("MISDeposite") MISDeposit misdep) { 		  
		    misepositrepo.save(misdep);
	        return "maturitySection/MaturityMaster"; 
	}
	
    /* APPROVED STATUS */
	
	@GetMapping("/approvedStatus")
	public String getApprovedStatus() {
		return "maturitySection/ApprovedStatus";
	}
	
	@GetMapping("/approvedStatus1")
	@ResponseBody
	public List<MaturityPaymentReportModel> getgetApprovedStatus1(HttpServletRequest request){
		try {
			String B_ranch = request.getParameter("BRANCH");
			String FormDate = request.getParameter("Fromdate");
			String ToDate = request.getParameter("Todate");
			
			List<MaturityPaymentReportModel> list1 = maturitypaymentreportrepo.findBypaybranch(B_ranch);
			List<MaturityPaymentReportModel> list2 = maturitypaymentreportrepo.findBypaydateBetween(FormDate, ToDate); 
			
			if(!list1.isEmpty())
			{
				return list1;
			}
		    else 
		    { 
		    	return list2; 
		    }
		}catch(Exception ex) {
			ex.printStackTrace();
		}
		return null;
	 }
	
	 /* MATURITY APPLICATION */
	
	 @GetMapping("/addMaturityApplication")
	 public String addMaturityApplication(Model model) {
					return "maturitySection/MaturityApplication";
	 }

	  @GetMapping("/searchMaturityApplication")
	  @ResponseBody
	  public List<AdvisorCollectorDetails> searchMaturityApplication( HttpServletRequest hp) {
			   String PolicyNoINt = hp.getParameter("PolicyNo1");
			   int i =Integer.parseInt(PolicyNoINt);
			   
			   List<AdvisorCollectorDetails> data1 = advisorCollectorDetailsRepo.findBymemberId(i);
				
			   return data1;
	  }		
			
	   @GetMapping("/MaturityAplicationUpdate")
	   @ResponseBody
	   public int  searchMaturityAplicationUpdate( HttpServletRequest hp) {
			 String PolicyNo = hp.getParameter("PolicyNo1");
			 int i1 =Integer.parseInt(PolicyNo);
			 String ApplcationDate1 = hp.getParameter("ApplcationDate1");
			 String Remarks1 = hp.getParameter("Remarks1");
			 
			 int i = advisorCollectorDetailsRepo.updateThroughPolicyNo(ApplcationDate1,Remarks1,i1);
				
			 return i;
		}

		@GetMapping("/MaturityAplicationFindAll")
		@ResponseBody
		public List<AdvisorCollectorDetails>  searchMaturityAplicationFindAll( HttpServletRequest hp) {
			List<AdvisorCollectorDetails> data = advisorCollectorDetailsRepo.findAll();
				
			return data;
		}
		
        /* MATURITY PAYMENT */
		
		@GetMapping("/addMaturityPayment")
		public String addMaturityPayment(Model model) {
			return "maturitySection/MaturityPayment";
		}
	
		@GetMapping("/searchMaturityPayment")
		@ResponseBody
		public List<MaturityPartPayment> searchMaturityPayment( HttpServletRequest hp) {
					   String PolicyNo = hp.getParameter("PolicyNo1");			   
					   List<MaturityPartPayment> data1 = maturityPaymeRepo.findBypolicyno(PolicyNo);
						
					   return data1;
	    }
				
		@GetMapping("/MaturityPaymentUpdate")
		@ResponseBody
		public int  searchMaturityPaymentUpdate( HttpServletRequest hp) {
			 String PolicyNo = hp.getParameter("PolicyNo1");
			 String PayementDate = hp.getParameter("PayementDate1");
			 String PayBranch = hp.getParameter("PayBranch1");
		     String PaymentBy = hp.getParameter("PaymentBy1");
			 String PayRemarks = hp.getParameter("PayRemarks1"); 
							 
			int i = maturityPaymeRepo.updateThroughPolicyNo(PayementDate,PayBranch,PaymentBy,PayRemarks, PolicyNo);
					
			return i;
						
	    }
		
        /* MAT. APPLICATION STATUS */
		
		@GetMapping("/MatApplicationStatus")
		public String getMatApplicationStatus(){
			return "maturitySection/MatApplicationStatus";
		}
		
		@GetMapping("/MatApplicationStatus1")
		@ResponseBody
		public List<MatApplicationStatus> getMatApplicationStatus1(@ModelAttribute MatApplicationStatus model, HttpServletRequest request){
			String branch= request.getParameter("Branch");
			String fromdate= request.getParameter("Fromdate");
			String todate= request.getParameter("Todate");
			
			List<MatApplicationStatus> list1 = matApplicationStatusRepo.findByapplicationbranch(branch);
			List<MatApplicationStatus> list2 = matApplicationStatusRepo.findByapplicationdateBetween(fromdate, todate);
			
			if(!list1.isEmpty())
			{
				return list1;
			}
			else
				return list2;
	    }
		
        /* MAT. PAYMENT STATUS */
		
		@GetMapping("/MaturityTrackingView")
		public String showMatpaymentststus(Model model){
			return "maturitySection/MaturityTrackingPage";
		}
		
		@GetMapping("/maturityPaymentapi")
		@ResponseBody
		public List<MaturityPaymentReportModel> showmatdata(HttpServletRequest hp){	
			String branch=hp.getParameter("selectbranch");
			String fdate=hp.getParameter("fromdate");
			String tdate=hp.getParameter("todate");		
			try {	
				List<MaturityPaymentReportModel> matbybranch=matrepo.findBypaybranch(branch);
			    List<MaturityPaymentReportModel> matdatesby=matrepo.findBypaydateBetween(fdate,tdate);
				if (!matbybranch.isEmpty()) {
				return matbybranch;}
				else 
					return matdatesby;
			} catch (Exception e) {
				e.printStackTrace();
			}
			return null;
		}
		
        /* MATURITY PAYMENT (PARTLY) */
		
		@GetMapping("/maturityPartPayment")
		public String maturityPartPayment(){
			return "maturitySection/MaturityPartPayment";
		}
		
		@GetMapping("/getmaturityPartPayment")
		@ResponseBody
		public List<MaturityPartPayment>  getmaturityPartPayment(HttpServletRequest request){
			String policyno=request.getParameter("Policyno");
			List<MaturityPartPayment> list=maturityPartPaymentRepo.findBypolicyno(policyno);
			return list;
		}
		
		@GetMapping("/updatematurityPartPayment")
		@ResponseBody
	    public int updatematurityPartPayment(HttpServletRequest request){
			String policyno=request.getParameter("Policyno");
			String amount=request.getParameter("Amount");
			String paymentdate=request.getParameter("Paymentdate");
			String paybranch=request.getParameter("Paybranch");
			String paymentby=request.getParameter("Paymentby");
			int i=maturityPartPaymentRepo.updateThroughpolicyno(amount,paymentdate,paybranch,paymentby,policyno);
			return i;
	    }

        /* MATURITY RECEIPT PRINT */
		
		@GetMapping("/MaturityReceiptPrint")
		public String maturityreceiptReprint(){
			return"maturitySection/MaturityReceiptPrint";
		}
		
		@GetMapping("/getmaturityreceiptprint")
		@ResponseBody
		public List<AddInvestment> getmaturityreceiptReprint(HttpServletRequest request){
			String policyno=request.getParameter("Policyno");
			List<AddInvestment> list=addInvestmentRepo.findBypolicyno(policyno);
			return list;
		}
		
        /* MAT. PAYMENT STATUS (PARTLY) */
		
		@GetMapping("/matPaymentStatusPartly")
		public String matPaymentStatusPartly(){
			return"maturitySection/MatPaymentStatusPartly";
		}
}
