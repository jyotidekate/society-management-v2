package com.society.application.controler;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.society.application.model.AccountLegMaster;
import com.society.application.model.BalanceSheetDatewise;
import com.society.application.model.BalanceSheetFY;
import com.society.application.model.BankStatement;
import com.society.application.model.BranchMaster;
import com.society.application.model.CashStatement;
import com.society.application.model.ChequeClear;
import com.society.application.model.ContraEntry;
import com.society.application.model.DayBookModel;
import com.society.application.model.IncentivePayment;
import com.society.application.model.JournalEntry;
import com.society.application.model.JournalReport;
import com.society.application.model.LedgerReport;
import com.society.application.model.MandateDepositToBank;
import com.society.application.model.MisPaymentModal;
import com.society.application.model.PaymentEntry2Modal;
import com.society.application.model.TransferBookModel;
import com.society.application.model.TrialBalance;
import com.society.application.model.plstatement;
import com.society.application.model.receiveVoucher;
import com.society.application.repository.AccountLegMasterRepo;
import com.society.application.repository.BalanceSheetDatewiseRepo;
import com.society.application.repository.BalanceSheetFyRepo;
import com.society.application.repository.BankStatementRepo;
import com.society.application.repository.BranchMasterRepo;
import com.society.application.repository.BranchMater2REpo;
import com.society.application.repository.CashStatementrepo;
import com.society.application.repository.ChequeClear_Repo;
import com.society.application.repository.ContraEntryRepo;
import com.society.application.repository.DayBookRepo;
import com.society.application.repository.IncentivePaymentRepo;
import com.society.application.repository.JournalEntryRepo;
import com.society.application.repository.JournalReportRepo;
import com.society.application.repository.LedgerReportRepo;
import com.society.application.repository.MandateDepositToBankRepo;
import com.society.application.repository.MisPaymentRepo;
import com.society.application.repository.PaymentEntryRepo;
import com.society.application.repository.PlStatementRepo;
import com.society.application.repository.TransferBookRepo;
import com.society.application.repository.TrialBalanceRepo;
import com.society.application.repository.accountSectionRepo;

@Controller
public class AccountSectionController {

	@Autowired
	AccountLegMasterRepo accountLegMasterRepo;
	
	@Autowired
	IncentivePaymentRepo incentivePaymentRepo;
	
	@Autowired
	CashStatementrepo csrepo;
	
	@Autowired
	TrialBalanceRepo trialbalancerepo;
	
	@Autowired
	BranchMasterRepo branchmasterrepo;
	
	@Autowired
	PaymentEntryRepo payentryrepo;
	
	@Autowired
	ContraEntryRepo contraEntryRepo;
	
	@Autowired
	MandateDepositToBankRepo mandateDepositRepo;
	
	@Autowired
	JournalReportRepo journalReportRepo;
	
	@Autowired
	BalanceSheetDatewiseRepo balanceSheetDatewiseRepo;
	
	@Autowired
	BankStatementRepo bankStatementRepo;
	
	@Autowired
	LedgerReportRepo ledgerReportRepo;
	
	@Autowired
	MisPaymentRepo mispayrepo;
	
	@Autowired
	TransferBookRepo transferrepo;
	
	@Autowired
	BranchMater2REpo branchMater2REpo;
	
	@Autowired
	accountSectionRepo accountrepo;
	
	@Autowired
	ChequeClear_Repo chequerepo;
	
	@Autowired
	DayBookRepo dayBookRepo;
	
	@Autowired
	BalanceSheetFyRepo balanceSheetFyRepo;
	
	@Autowired 
	PlStatementRepo plrepo;
	
	@Autowired
	JournalEntryRepo journalEntryRepo;

	/* LEDGER MASTER */

	@GetMapping("/accountLegMaster")
	public String getAccountLegMaster() {
		return "accountSection/AccountLegMaster";
	}

	/*
	 * @PostMapping("/accountLegMaster1") public String
	 * getAccountLegMaster( @RequestBody AccountLegMaster model) {
	 * accountLegMasterRepo.save(model); return "accountSection/AccountLegMaster"; }
	 */

	@PostMapping("accountLegMaster1")
	public String getAccountLegMaster(@ModelAttribute("accountlegmodelattribute") AccountLegMaster alm, Model model) {
		if (alm.getLedgername() != null && alm.getSelectgroup() != null) {
			accountLegMasterRepo.save(alm);
			model.addAttribute("msg", "Record Saved");
			//System.out.println("Saved");

		} else {
			model.addAttribute("msg", "Data not saved");
			//System.out.println(" Not Saved");
		}
		return "accountSection/AccountLegMaster";
	}

	@GetMapping("/accountLegMaster2")
	public String getAccountLegMasterList(Model model) {
		List<AccountLegMaster> list = accountLegMasterRepo.findAll();
		model.addAttribute("list", list);
		// System.out.println(""+list);

		/*
		 * list.forEach(s->{ System.out.println(s.getLedgername());
		 * System.out.println(s.getSelectgroup()); });
		 */

		return "accountSection/AccountLegMaster";
	}

	/* INCENTIVE PAYMENT */

	@GetMapping("/incentivepayment")
	public String getIncentivePayment() {
		return "accountSection/IncentivePayment";
	}

	@GetMapping("/incentivepayments")
	public String getIncentivePaymentSearch(@ModelAttribute("incentivepaymentmodel") IncentivePayment model1,
			Model model) {

		List<IncentivePayment> list1 = incentivePaymentRepo.findBymonthname(model1.getMonthname());
		List<IncentivePayment> list2 = incentivePaymentRepo.findBycode(model1.getCode());
		model.addAttribute("list1", list1);
		model.addAttribute("list2", list2);

		/*
		 * List<IncentivePayment> list =
		 * incentivePaymentRepo.findBymonthnameAcode(model1.getMonthname(),
		 * model1.getCode()); model.addAttribute("list", list);
		 */

		return "accountSection/IncentivePayment";
	}
	
	/* CASH BOOK */

	@GetMapping("/cashbook")
	public String getCashBook() {
		return "accountSection/CashBook";
	}

	@GetMapping("/cashbook1")
	public String getCashBookSearch(@ModelAttribute("cashbookmodel") CashStatement model1, Model model) {
		List<CashStatement> list1 = csrepo.findByselectBranch(model1.getSelectBranch());
		List<CashStatement> lists2 = csrepo.findBytxnDateBetween(model1.getFromDate(), model1.getToDate());
		model.addAttribute("list1", list1);
		model.addAttribute("lists2", lists2);
		return "accountSection/CashBook";
	}
	
	/* TRIAL BALANCE */

	@GetMapping("/trialBalance")
	public String getTrialBalance() {
		return "accountSection/FinancialTrialBalance";
	}

	@GetMapping("/trialBalance1")
	@ResponseBody
	public List<TrialBalance> getTrialBalance1(HttpServletRequest request) {
		try {
			String Branch_Name = request.getParameter("BranchName");
			String FromDate = request.getParameter("Fromdate");
			String ToDate = request.getParameter("Todate");

			List<TrialBalance> list1 = trialbalancerepo.findBybranchName(Branch_Name);
			List<TrialBalance> list2 = trialbalancerepo.findBydateBetween(FromDate, ToDate);

			if (!list1.isEmpty()) {
				return list1;
			} else {
				return list2;
			}
		} catch (Exception ex) {
			System.out.println(ex.getMessage());
		}
		return null;
	}
	
	/* BRANCH CASH TRANSFER */

	@GetMapping("/branchCashTransfer")
	public String getBranchCashTransfer() {
		return "accountSection/BranchCashTransfer";
	}

	 @GetMapping("/branchCashTransferUpdate") 
	 @ResponseBody
	 public List<BranchMaster> getbranchCashTransfer1( HttpServletRequest request) {
	  
		 String TransferDate = request.getParameter("TransferDate"); 
		 String FromBranch= request.getParameter("FromBranch"); 
		 String ToBranch = request.getParameter("ToBranch"); 
		 String Amount = request.getParameter("Amount");
		 
		 branchmasterrepo.findByfromBranchToBranch(Amount,TransferDate,FromBranch,ToBranch);
		 
		 List<BranchMaster> list = branchmasterrepo.findAll();
		 return list ;	
	  }
	 
      /* PAYMENT ENTRY */
	 
	  @GetMapping("/paymentEntryView")
	  public String paymententry(Model model)
	  {
	    	return "accountSection/PaymentEntry";
	  }
	    
	  @GetMapping("/searchPaymentEntry")
	  @ResponseBody
	  public List<PaymentEntry2Modal> showpayentry(HttpServletRequest hp)
	  {
	    	try 
	    	{
	    		String fdate=hp.getParameter("fDate");
	    		String tdate=hp.getParameter("todate");
	    		String branch=hp.getParameter("selectbranch");
			
	    		List<PaymentEntry2Modal> pebranch= payentryrepo.findByselectbranch(branch);
	    		List<PaymentEntry2Modal> pedate=payentryrepo.findBytxndateBetween(fdate,tdate);
			
	    		if(!pebranch.isEmpty())
	    		{
	    			return pebranch;
	    		}
	    		else 
	    			return pedate;
			}
			catch (Exception e) 
	    	{
				System.out.println(e.getMessage());
			}
	    	return null;
	   }
	    
	   @PostMapping("/paymentEntry")
	   public String SavePaymentEntry(@ModelAttribute("PaymentEntry2Modal") PaymentEntry2Modal payentry2, Model model)
	   {
	    	String status="exception";
	    	if(payentry2.getSelectbranch()!=null  && payentry2.getTxndate()!=null && payentry2.getSelectype()!=null && payentry2.getDtransfer()!=null && payentry2.getSelectledger()!=null && payentry2.getAmount()!=null)
	    	{
	    		PaymentEntry2Modal payentry=payentryrepo.save(payentry2);
	    		if(payentry!=null)
	    		{
	    			status=" data saved successfully";
	    		}
	    		model.addAttribute("status",status);
	    	}
	    	else
			{
				System.out.println("Data not saved");
			}
	    	return "accountSection/PaymentEntry";
	  }
	   
	  /* CONTRA ENTRY*/
		  
	  @GetMapping("/contraEntry")
	  public String getContraEntry()
	  {
				return "accountSection/ContraEntry";
	  }

	  @GetMapping("/getAllRecord")
	  public String getAllContraEntry(@ModelAttribute("ContramodelAttribute") ContraEntry contraEntry, Model model) 
	  {
				List<ContraEntry> list = contraEntryRepo.findByselectbranch(contraEntry.getSelectbranch());
				List<ContraEntry> list1 = contraEntryRepo.findBytxndateBetween(contraEntry.getFromdate(), contraEntry.getTodate());
				model.addAttribute("list", list);
				model.addAttribute("list1", list1);
				return "accountSection/ContraEntry";
	  }

	  @PostMapping("/contraEntry1")
	  public String getContraEntry(@ModelAttribute("ContramodelAttribute") ContraEntry contraEntry, Model model) 
	  {
				contraEntryRepo.save(contraEntry);
				return "accountSection/ContraEntry";
	  }

	  /* MANDATE DEPOSITE TO BANK */
		 
	  @GetMapping("/mandateDeposit")
	  public String getMandateDeposit() 
	  {
				return "accountSection/MandateDepositToBank";
	  }

	  @PostMapping("/mandateDeposit1")
	  public String getMandateDeposit(@ModelAttribute("ContramodelAttribute") MandateDepositToBank mandateDepBank, Model model) 
	  {
				mandateDepositRepo.save(mandateDepBank);
				return "accountSection/MandateDepositToBank";
	  }

	  @GetMapping("/getAllRecords")
	  public String getAllMandateRecord(@ModelAttribute("ContramodelAttribute") MandateDepositToBank mandateDepBank, Model model) 
	  {
				List<MandateDepositToBank> list = mandateDepositRepo.findByfddateBetween(mandateDepBank.getFromdate(),
						mandateDepBank.getTodate());
				     	model.addAttribute("list", list);
				if (mandateDepBank.getFddeposit() != null && mandateDepBank.getMisdeposit() != null && mandateDepBank.getRddeposit() != null
						&& mandateDepBank.getSavingsdeposit() != null && mandateDepBank.getSavingswithdrawal() != null
						&& mandateDepBank.getFlexideposit() != null && mandateDepBank.getFlexiwithdrawal() != null
						&& mandateDepBank.getMaturityprincipal() != null && mandateDepBank.getTotaldeposit() != null
						&& mandateDepBank.getTotalwithdrawal() != null && mandateDepBank.getTotalbalance() != null
						&& mandateDepBank.getPreviousfddeposited() != null && mandateDepBank.getUnencumbered() != null
						&& mandateDepBank.getUnencumberedamount() != null && mandateDepBank.getBankname() != null
						&& mandateDepBank.getBankaddress() != null && mandateDepBank.getFdno() != null && mandateDepBank.getFdamt() != null
						&& mandateDepBank.getMaturityamt() != null && mandateDepBank.getFddate() != null && mandateDepBank.getMaturityamt() != null
						&& mandateDepBank.getPaymentby() != null && mandateDepBank.getRemarks() != null) 
				{
					model.addAttribute("msg", "Record Saved..!!");
					//System.out.println("Record Saved Successfully");
				}
				else 
				{
					model.addAttribute("msg", "Record not saved");
					//System.out.println("Record Saved failed");
				}

				return "accountSection/MandateDepositToBank";
	  }
	  
	  /* JOURNAL REPORT */
		 
	  @GetMapping("/journalReport")
	  public String getJournalReport()
	  {
			 return "accountSection/JournalReport";
	  }
		 
	  @GetMapping("/journalReport1")
	  @ResponseBody
	  public List<JournalReport> getjournalReport (@ModelAttribute("JournalReport") JournalReport model, HttpServletRequest request )
	  {
			 String selectbranch= request.getParameter("Branch");
			 
			 List<JournalReport> list=journalReportRepo.findByselectbranch(selectbranch);
			 return list;
	  }
		 
	  @GetMapping("/journalReport2")
	  @ResponseBody
	  public List<JournalReport> getjournalReport2 (@ModelAttribute("JournalReport") JournalReport model, HttpServletRequest request )
	  {
			 String fromdate= request.getParameter("Fromdate");
			 String todate= request.getParameter("Todate");
			 
			 List<JournalReport> list2=journalReportRepo.findBydateBetween(fromdate, todate);
			 return list2;
	   }
	  
	  /* BALANCE SHEET */
		 
	  @GetMapping("/Balancesheet")
	  public String getBalancesheet()
	  {
			 return"accountSection/BalanceSheetDatewise";
	  }
		 
	  @GetMapping("/Balancesheet1")
	  @ResponseBody
	  public List<BalanceSheetDatewise> getgetBalancesheet1(@ModelAttribute BalanceSheetDatewise model , HttpServletRequest request)
	  {
			 String branch= request.getParameter("Branch");
			 List<BalanceSheetDatewise> list1= balanceSheetDatewiseRepo.findByselectbranch(branch);
			 
			 String fromdate=request.getParameter("Fromdate");
			 String todate=request.getParameter("Todate");
			 
			 List<BalanceSheetDatewise> list2= balanceSheetDatewiseRepo.findBydateBetween(fromdate, todate);
			 
			 if(!list1.isEmpty())
			 {
				 return list1;
			 }
			 else
				 return list2;
	  }
	  
	  /* BANK STATEMENT */
		 
	  @GetMapping("/bankstatement")
	  public String getBankStatement(Model model1)
	  {
				List<BankStatement> list3= bankStatementRepo.findAll();
				model1.addAttribute("list3", list3);		
				return "accountSection/BankStatement";
	  }
			
	  @GetMapping("/bankstatement1")
	  @ResponseBody
	  public List<BankStatement> getbankstatement (@ModelAttribute ("BankStatement") BankStatement model, HttpServletRequest request)
	  {
				String accountno=request.getParameter("Accountno");
				String fromdate=request.getParameter("Fromdate");
				String todate=request.getParameter("Todate");
				
				List<BankStatement> list1= bankStatementRepo.findByaccountno(accountno);
				List<BankStatement> list2= bankStatementRepo.findBydateBetween(fromdate , todate);
				
				if(!list1.isEmpty())
				{
					return list1;
				}
				
				else
					return list2; 
	  }
	  
	  /* LEDGER REPORT */
		 
	  @GetMapping("/ledgerReport")
	  public String getLedgerReport() 
	  {
				return "accountSection/LedgerReport";
	  }

	  @GetMapping("/getAllLedgerReport")
	  public String getAllLedgerReport(@ModelAttribute("LedgerModelAttribute") LedgerReport ledReport, Model model) 
	  {
				try {
					List<LedgerReport> list1 = ledgerReportRepo.findByselectledger(ledReport.getSelectledger());
					List<LedgerReport> list2 = ledgerReportRepo.findBydateBetween(ledReport.getFromdate(), ledReport.getTodate());
					model.addAttribute("list1", list1);
					model.addAttribute("list2", list2);

				} catch (Exception e) {
					e.printStackTrace();
				}
				return "accountSection/LedgerReport";
	  }

	  /* MIS INT. PAYMENT */
		 
	  @GetMapping("/misIntPayment")
	  public String ShowMisintpage(Model model)
	  {
		    	return "accountSection/MisIntPayment";
	  }
		    
	  @PostMapping("/addPolicyDetails")
	  public String SavePolicyDetails(@ModelAttribute("MisPaymentModal") MisPaymentModal mpm, Model model)
	  {
		    	mispayrepo.save(mpm);
		    	return "accountSection/MisIntPayment";
	  }
	  
	  /* TRANSFER BOOK */
		 
	  @GetMapping("/transferBook")
	  public String getTransferBook()
	  {
			 return "accountSection/TransferBookPage";
	  }
		       
	  @GetMapping("/fetchAllData")
	  public String showListofuser(@ModelAttribute("ViewPaymentDetails") TransferBookModel tbm, Model model)
	  {
		    	List<TransferBookModel> tbMode= transferrepo.findBybranchname(tbm.getSelectbraanch());    
		        List <TransferBookModel> tbModeldate=transferrepo.findBytxndateBetween(tbm.getFromdate(), tbm.getTodate());
		    	
		        model.addAttribute("tbMode", tbMode);
		        model.addAttribute("tbModeldate", tbModeldate);
		    	
		        System.out.println(tbMode);
		    	
		        return "accountSection/TransferBookPage";
	  }
	  
	  /* RECEIVE ENTRY */
		 
	  @GetMapping("/addrecievceVoucher")
	  public String addrecievceVoucher(Model model ) {		
				int i= accountrepo.getMaxReceiptNumber();
				model.addAttribute("receiptNO",i+1);
				//System.out.println(i+1);
				return "accountSection/ReceiveVoucher";
	  }
		 
	  @GetMapping("/searchRecieveVoucher")
	  @ResponseBody
	  public List<receiveVoucher>searchRecieveVoucher(HttpServletRequest hp) {
				String Branch = hp.getParameter("Branch");
				String FromDate = hp.getParameter("fDate");
				String TOdate = hp.getParameter("tDate");
				
				List<receiveVoucher> rv = accountrepo.findByselectBranch(Branch);
				List<receiveVoucher> rvDate = accountrepo.findBytxnDateBetween(FromDate,TOdate);
				
				if(!rv.isEmpty()) {
					return rv;
				}
				return rvDate;
	  }
		 
	  @PostMapping("addrecievceVoucherdata")
	  public String addMember(@ModelAttribute("recievceVoucher") receiveVoucher rv, Model model) {
				String status = "error";
				
				if(rv.getSelectBranch()!=null&&rv.getTxnDate()!=null&&rv.getSelectType()!=null&&rv.getDirectTransfer()!=null
						&&rv.getSelectLedger()!=null&&rv.getAmount()!=null&&rv.getNarration()!=null) {
					System.out.println("Data Submited");
					receiveVoucher rv1 = accountrepo.save(rv);
//					int i= accountrepo.getMaxReceiptNumber();
//					System.out.println(i+1);
//					model.addAttribute("receiptNO",i+1);
				}else {
					System.out.println("Data Not Submited");
				}
				return "accountSection/ReceiveVoucher";
	  }
	  
	  /* CHEQUE CLEARING */
		 
	  @GetMapping("/ChequeClear")
	  public String addChequeClear() {
				return "accountSection/ChequeClear";
	  }
		 
	  @GetMapping("/searchChequeClear")
	  @ResponseBody
	  public List<ChequeClear> searchChequeClear(HttpServletRequest hp) {
				String PaymentType = hp.getParameter("PaymentType1");
				String BranchType = hp.getParameter("BranchType1");
				String FromDate = hp.getParameter("FromDate1");
				String Todate = hp.getParameter("Todate1");
				String ChequeNO = hp.getParameter("ChequeNO1");
				
				List<ChequeClear> data1 = chequerepo.findBytype(PaymentType);
				List<ChequeClear> data2 = chequerepo.findBybranch(BranchType);
				List<ChequeClear> data3 = chequerepo.findBytxndateBetween(FromDate,Todate);
				List<ChequeClear> data4 = chequerepo.findBycheque(ChequeNO);
				
				if(!data1.isEmpty()) {
					return data1;
				}else if(!data2.isEmpty()) {
					return data2;
				}else if(!data3.isEmpty()) {
					return data3;
				}
				
				return data4;
	  }
	  
	  /* DAY BOOK */
		 
	  @GetMapping("/DayBook")
	  public String addDayBook() {
				return "accountSection/DayBook";
	  }
		 
	  @GetMapping("/searchDayBook")
	  @ResponseBody
	  public List<DayBookModel> searchDayBook( HttpServletRequest hp) {
			
				String Ledger = hp.getParameter("Ledger");
				String Branch = hp.getParameter("Branch");
				String fDate = hp.getParameter("fDate");
				String tDate = hp.getParameter("tDate");
				
				List<DayBookModel> data1 = dayBookRepo.findByselectLedger(Ledger);
				List<DayBookModel> data2 = dayBookRepo.findByselectBranch(Branch);
				List<DayBookModel> data3 = dayBookRepo.findBydateBetween(fDate,tDate);
				
				if(!data1.isEmpty()) {
					return data1;
				}else if(!data2.isEmpty()) {
					return data2;
				}
				return data3;
	  }
		 
	  
	  /* BALANCE SHEET (FY) */
		 
	  @GetMapping("/FinancialBalanceSheet")
	  public String addFinancialBalanceSheet() {
				return "accountSection/FinancialBalanceSheet";
	  }
		 
	  @GetMapping("/searchFirstButton")
	  @ResponseBody
	  public List<BranchMaster> searchFirstButton( HttpServletRequest hp){
				String Branch = hp.getParameter("Branch1");
				String FromDate = hp.getParameter("FromDate1");
				String ToDate = hp.getParameter("ToDate1");
				
				List<BranchMaster> list1 = branchMater2REpo.findByname(Branch);
				List<BranchMaster> list2 = branchMater2REpo.findByopeningDateBetween(FromDate,ToDate);
				if(!list1.isEmpty()) {
					return list1;
				}
				return list2;
	  }
			
	  @GetMapping("/searchSecondButton")
	  @ResponseBody
	  public List<BalanceSheetFY> searchSecondButton( HttpServletRequest hp){
					String Branch = hp.getParameter("Branch1");
					String Fyear = hp.getParameter("Fyear1");
					String FromDate = hp.getParameter("FromDate1");
					String ToDate = hp.getParameter("ToDate1");
					int i = Integer.parseInt(Fyear);					
					
					List<BalanceSheetFY> data1 = balanceSheetFyRepo.findAllByyear(i);
					List<BalanceSheetFY> data2 = balanceSheetFyRepo.findBybranch(Branch);
					List<BalanceSheetFY> data3 = balanceSheetFyRepo.findBydateBetween(FromDate,ToDate);
					
					if(!data1.isEmpty()) {
						return data1;
					}else if(!data2.isEmpty()) {
						return data2;
					}
					
					return data3;
	  }
	  
	  /* P&L STATEMENT(FY) */
		
	  @GetMapping("/PLStatementView")
	  public String showPlstatmentPage(Model model)
	  {
	    	return "accountSection/PlstatementPage";
	  }
	  
	  @GetMapping("/searchPlstatement")
	  @ResponseBody
	  public List<plstatement> showplData(HttpServletRequest hp)
	  {
		   try {
			   String fdate=hp.getParameter("fromdate");
			   String tdate=hp.getParameter("todate");
			   String branch=hp.getParameter("selectbranch");
				
				List<plstatement> plbycombo=plrepo.findBybranchname(branch);
				List<plstatement> plbydates=plrepo.findBypldateBetween(fdate, tdate);
				
				if (!plbycombo.isEmpty()) {
					return plbycombo;
				}
				else if (!plbydates.isEmpty()) {
					return plbydates;} 
		 } catch (Exception e) {
			System.out.println(e.getMessage());
		 }
		   return null;
	   }
	  
	  @GetMapping("/searchPlstatementfy")
	  @ResponseBody
	  public List<plstatement>  showsomeList(HttpServletRequest hp){
		    String fdatefy=hp.getParameter("fromdatefy");
			String tdatefy=hp.getParameter("todatefy");
			String branchfy=hp.getParameter("selectbranchfyz");
			String yearyf =hp.getParameter("selectyearfyz");		
			int i=Integer.parseInt(yearyf);		
			List<plstatement> plycombofy=plrepo.findBybranchname(branchfy);
			List<plstatement> plyplbydatesfy=plrepo.findBypldateBetween(fdatefy, tdatefy);
			List<plstatement> plybyyear=plrepo.findAllBypldate(i);
			if (!plycombofy.isEmpty()) {
				return plycombofy;}
		    else if (!plyplbydatesfy.isEmpty()) {
				return plyplbydatesfy;}
			 else if(!plybyyear.isEmpty()){
				return plybyyear;
			 }	 
		  return null;
	  }
	  
	  /* JOURNAL ENTRY */
	  
	  @GetMapping("/journalEntry")
	  public String getJournalEntry(Model model) {
			 int  rcptno= journalEntryRepo.getreceiptno();
			 model.addAttribute("rcptno", rcptno+1);
			return "accountSection/JournalEntry";
	  }

	  @PostMapping("/journalEntry1")
	  public String getJournalEntry1(@ModelAttribute("JournalEntryModelAttribute") JournalEntry model, Model model1) {
			if (model.getSelectbranch() != null  && model.getTxndate() != null
					&& model.getSelectcrledger() != null && model.getSelectdrledger() != null
					&& model.getAmount() != null) {
				model1.addAttribute("msg", "Record Saved");
				journalEntryRepo.save(model);
			}

			else
				model1.addAttribute("msg", "Invalid Entry");

			return "accountSection/JournalEntry";
		}

		
		@GetMapping("/getAllRecord123")
		public String getAllRecord123(@ModelAttribute("JournalEntryModelAttribute") JournalEntry model, Model model1) {
			  List<JournalEntry> list = journalEntryRepo.findByselectbranch(model.getSelectbranch());
			  List<JournalEntry> list2 = journalEntryRepo.findBytxndateBetween(model.getFromdate(),model.getTodate());
			
			  model1.addAttribute("list", list);
			  model1.addAttribute("list2", list2);
			 
			 return "accountSection/JournalEntry";
		}
	  
}


