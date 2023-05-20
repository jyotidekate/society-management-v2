 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<jsp:include page="../header.jsp"/>



<style>
	table{
		border-collapse: collapse;
		border-spacing: 0;
		width: 100%;
		border: 1px solid #ddd;
	}
	
	th,td{
		text-align: left;
		padding: 8px;
	}
</style>

<body class="skin-blue sidebar-mini" style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);" cz-shortcut-listen="true" > 
<!-- <form method="get" action="journalReport1" id="form1" modelAttribute="JournalReport">  -->
    
<script type="text/javascript">
//<![CDATA[
var theForm = document.forms['form1'];
if (!theForm) {
    theForm = document.form1;
}
function __doPostBack(eventTarget, eventArgument) {
    if (!theForm.onsubmit || (theForm.onsubmit() != false)) {
        theForm.__EVENTTARGET.value = eventTarget;
        theForm.__EVENTARGUMENT.value = eventArgument;
        theForm.submit();
    }
}
//]]>
</script>


<script src="../WebResourcea077.js?d=aKrB3Wg4ktcAdLzfwHNclnzQJginAX-WDxEXiKln398ZfxSpl5en7e6-r-t6qAS--33aKUyvVcAR5D4ulS_TNNrAx-wX18laGa3-ySpD_j01&amp;t=637290976998988531" type="text/javascript"></script>


<script src="../ScriptResourced8e7.js?d=uSqqCHFE8MMix38uq8GgGybxYtpH6dYwFMSYHjhHytO5jH1yPS2uWYjdlBZZSuu9t5CBFsRRRI6lEwvTTYPraDdistIqSYPDLCP6VorXyjIpQTji_JKtdkLVZLH_mYVZvHI4YJqUtS662n__8I2atI54HJ4NkBUVIeVAPnAuCTI1&amp;t=2a797f5c" type="text/javascript"></script>
<script src="../ScriptResourceb4d6.js?d=KzKHuQVzCI25ZiHK9SA2HZdRjaymXCFpWiizBRMk8lvEiiZsQoLPz0ARKvRH6PmSA3Tt96qvSLsIOMPBDLx_VBsyISpzBQoSBrYr5izAbtKSWsBVrS0pYd7veJqhmzHYrhKgOEJXiOei6ZrcxpAdqnYxCXhjNIW9HOvs7dp7o0kgl18uTZv1SVlBuafpWq2x0&amp;t=2a797f5c" type="text/javascript"></script>
<div class="aspNetHidden">

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="AD310E55" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEdAAizMH46mJYz8I05USb3p59LXXhtDrRv6st/qI+x+N0hz4VNppXIEHMAIHNnY0nj1N3T0Pq/1cDfbPKKLoVNMhKcFvD/zVADzuUXng+CCuGRtEPQI1RC2v7K0iVkfbE9+2rNLwNnpX7SaGgjTqu3VexijkxbpcxoWPNP2dR2wiSei89qW7YFcuMazcwt50czR7tmf4kJ6JUOyKTVHOXmE35P" />
</div>

        <div style="height: auto; min-height: 100%; border-radius: 30px; margin: 15px; background: url(dist/img/back.jpg);">

            <header class="main-header">

                <!-- Header Navbar: style can be found in header.less -->
                <nav class="navbar navbar-static-top">
                    <!-- Sidebar toggle button-->
                    <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
                        <span class="sr-only">Toggle navigation</span>
                    </a>
                    <!-- Navbar Right Menu -->
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                            <i class="fa fa-bars" aria-hidden="true"></i>
                        </button>
                    </div>
                    <div class="collapse navbar-collapse pull-left" id="myNavbar">
                        <ul class="nav navbar-nav">
                            <li><a class="b-1" href="Home.html">Home</a></li>
                            <li id="idconfig" class="dropdown">
                                <a class="dropdown-toggle b-1" data-toggle="dropdown" href="#" aria-expanded="false">Configuration <span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="CompanyDetails.html">Company Setting</a></li>
                                    <li><a href="AddFinancialMaster.html">Add FY Master</a></li>
                                    <li><a href="Branch.html">Branch Creation</a></li>
                                    <li><a href="AddBankAccount.html">Bank Master</a></li>
                                    <li><a href="CodeSetting.html">Code Setting</a></li>
                                    <li><a href="DirectorDetail.html">Add Director/Promoter</a></li>
                                    <li><a href="UserCreate.html">User Creation</a></li>
                                    <li><a href="UserMenuAccess.html">User Menu Access</a></li>
                                    <li><a href="UserActivityReport.html">User Activity Report</a></li>
                                    
                                </ul>
                            </li>
                            <li id="idLegal" class="dropdown">
                                <a class="dropdown-toggle b-1" data-toggle="dropdown" href="#" aria-expanded="false">NDH Report <span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="NDH1Form.html">NDH-1</a></li>
                                    <li><a href="NDH2Form.html">NDH-2</a></li>
                                    <li><a href="NDH3Form.html">NDH-3</a></li>
                                    <li><a href="NDH4Form.html">NDH-4</a></li>
                                    <li><a href="MemberReportFor_NDH.html">Member Report</a></li>
                                    <li><a href="InvestmentReportFor_NDH.html">Investment Report</a></li>
                                    <li><a href="SavingsReportFor_NDH.html">Savings Account Report</a></li>
                                    <li><a href="LoanEMIOutstandingReport.html">Loan Report</a></li>
                                </ul>
                            </li>
                            
                            <li id="idcollsheet"><a class="b-1" href="AllCollectionSheet.html">Collection Sheet</a></li>
                            <li id="idquickdep"><a class="b-1" href="QuickDeposit.html">Quick Deposit <span class="label label-success">NEW</span></a></li>

                           

                        </ul>
                    </div>
                    <div class="navbar-custom-menu">
                        <ul class="nav navbar-nav p-1">
                            <!-- Messages: style can be found in dropdown.less-->
                            <li class="dropdown messages-menu">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <i class="fa fa-envelope-o"></i>
                                    <span class="label label-success">3</span>
                                </a>
                                <ul class="dropdown-menu">
                                    <li class="header">You have 3 messages</li>
                                    <li>
                                        <!-- inner menu: contains the actual data -->
                                        <ul class="menu">
                                            <li>
                                                <!-- start message -->
                                                <a href="#">
                                                    <div class="pull-left">
                                                        <i class="fa fa-align-right text-danger"></i>
                                                    </div>
                                                    <h4>LogIn Branch
                       
                                                        <small><i class="fa fa-clock-o"></i></small>
                                                    </h4>
                                                    <p>
                                                       Main Office - 001
                                                    </p>
                                                </a>
                                            </li>
                                            <!-- end message -->
                                            <li>
                                                <a href="#">
                                                    <div class="pull-left">
                                                        <i class="fa fa-align-right text-danger"></i>
                                                    </div>
                                                    <h4>Last LogIn Date/Time
                       
                                                        <small><i class="fa fa-clock-o"></i></small>
                                                    </h4>
                                                    <p>
                                                        01/08/2022 - 10:20AM
                                                    </p>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <div class="pull-left">
                                                        <i class="fa fa-align-right text-danger"></i>
                                                    </div>
                                                    <h4>Server Date/Time
                       
                                                        <small><i class="fa fa-clock-o"></i></small>
                                                    </h4>
                                                    <p>
                                                       01/08/2022 - 2:53PM
                                                    </p>
                                                </a>
                                            </li>
                                            <li>
                                                
                                            </li>

                                        </ul>
                                    </li>

                                </ul>
                            </li>
                            <!-- Notifications: style can be found in dropdown.less -->
                            <li class="dropdown notifications-menu">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <i class="fa fa-bell-o"></i>
                                    <span class="label label-warning">4</span>
                                </a>
                                <ul class="dropdown-menu">
                                    <li class="header">You have 4 notifications</li>
                                    <li>
                                        <!-- inner menu: contains the actual data -->
                                        <ul class="menu">
                                            <li>
                                                <a href="RecurringDueNotification.html">
                                                    <i class="fa fa-recycle text-aqua"></i>Renewal Due Today
                                                </a>
                                            </li>
                                            <li>
                                                <a href="LoanEmiDueNotification.html">
                                                    <i class="fa fa-newspaper-o text-yellow"></i>EMI Due Today
                                                </a>
                                            </li>
                                            <li>
                                                <a href="MaturityNotification.html">
                                                    <i class="fa fa-money text-red"></i>Maturity Today
                                                </a>
                                            </li>
                                            <li>
                                                <a href="MemberBirthdayNotification.html">
                                                    <i class="fa fa-birthday-cake text-green"></i>Member Birthday
                                                </a>
                                            </li>
                                           
                                        </ul>
                                    </li>

                                </ul>
                            </li>


                            <!-- User Account: style can be found in dropdown.less -->
                            <li class="dropdown user user-menu">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <img id="imgRightside" class="user-image" alt="User Image" src="dist/img/User.png" />
                                    <span class="hidden-xs">admin
                                    </span>
                                </a>
                                <ul class="dropdown-menu">
                                    <!-- User image -->
                                    <li class="user-header">
                                        <img id="imgdrop" class="img-circle" alt="User Image" src="dist/img/User.png" />
                                        <p>
                                             admin
                                        </p>
                                    </li>
                                    <!-- Menu Body -->

                                    <!-- Menu Footer-->
                                    <li class="user-footer">
                                        <div class="pull-left">
                                            <a id="lnkChangeUserPhoto" class="btn btn-default btn-flat" href="javascript:__doPostBack(&#39;ctl00$lnkChangeUserPhoto&#39;,&#39;&#39;)">Change Password</a>
                                        </div>
                                        <div class="pull-right">
                                           <a id="lnklogout" class="btn btn-default btn-flat" href="javascript:__doPostBack(&#39;ctl00$lnklogout&#39;,&#39;&#39;)">Logout</a>
                                        </div>
                                    </li>
                                </ul>
                            </li>
                            <!-- Control Sidebar Toggle Button -->
                            <!-- <li>
            <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
          </li> -->
                        </ul>
                    </div>

                </nav>
            </header>
            <!-- Left side column. contains the logo and sidebar -->
            <aside class="main-sidebar">
                <!-- sidebar: style can be found in sidebar.less -->
                <section class="sidebar" style="height: auto;">
                    <!-- Sidebar user panel -->
                    <div class="user-panel">
                        <div class="txt">
                            EQFI
                        </div>
                    </div>
                    <!-- search form -->
                    
                    <!-- /.search form -->
                    <!-- sidebar menu: : style can be found in sidebar.less -->
                    <ul class="sidebar-menu tree" data-widget="tree">
                     
                         <li class="active">
                            <a href="Home.html">
                                <img src="dist/img/icon/ico-1.png" style="margin-right: 5px;" />
                                <span>Dashboard</span>
                            </a>
                        </li>
                        
                                <li class="treeview">
                                    <a href='#'><img src="dist/img/icon/ico-3.png" style="margin-right: 5px;"/><span>Member Section</span><span class="pull-right-container">  <i class="fa fa-angle-left pull-right"></i></span></a>
                                    <ul class="treeview-menu">
                                        
                                                <li><a href="AddMember.html"><i class="fa fa-circle-o"></i>Add Member</a></li>
                                            
                                                <li><a href="AddMemberKYC.html"><i class="fa fa-circle-o"></i>Add Member KYC</a></li>
                                            
                                                <li><a href="MemberAllDetails.html"><i class="fa fa-circle-o"></i>Member Summary</a></li>
                                            
                                                <li><a href="MemberDetailRpt.html"><i class="fa fa-circle-o"></i>Member Report</a></li>
                                            
                                                <li><a href="SearchMember.html"><i class="fa fa-circle-o"></i>Search Member</a></li>
                                            
                                    </ul>
                                </li>
                            
                                <li class="treeview">
                                    <a href='#'><img src="dist/img/icon/ico-4.png" style="margin-right: 5px;"/><span>Member Share</span><span class="pull-right-container">  <i class="fa fa-angle-left pull-right"></i></span></a>
                                    <ul class="treeview-menu">
                                        
                                                <li><a href="ShareIssueca9f.html?ismodify=false"><i class="fa fa-circle-o"></i>Share Transfer</a></li>
                                            
                                                <li><a href="UnallotedShareReport.html"><i class="fa fa-circle-o"></i>Un-allotted Shares</a></li>
                                            
                                                <li><a href="ShareCertificate.html"><i class="fa fa-circle-o"></i>Share Certificate</a></li>
                                            
                                                <li><a href="MemberShareReport.html"><i class="fa fa-circle-o"></i>Share Report</a></li>
                                            
                                                <li><a href="DNOGenerate.html"><i class="fa fa-circle-o"></i>DNO Re-Generate</a></li>
                                            
                                    </ul>
                                </li>
                            
                                <li class="treeview">
                                    <a href='#'><img src="dist/img/icon/ico-5.png" style="margin-right: 5px;"/><span>Collector/Advisor</span><span class="pull-right-container">  <i class="fa fa-angle-left pull-right"></i></span></a>
                                    <ul class="treeview-menu">
                                        
                                                <li><a href="AddAdvisor.html"><i class="fa fa-circle-o"></i>Add Collector/Advisor</a></li>
                                            
                                                <li><a href="AdvisorTree.html"><i class="fa fa-circle-o"></i>Collector/Advisor Tree</a></li>
                                            
                                                <li><a href="AdvisorDownline.html"><i class="fa fa-circle-o"></i>Collector/Advisor Downline</a></li>
                                            
                                                <li><a href="CollectorPromotion.html"><i class="fa fa-circle-o"></i>Collector/Advisor Promotion</a></li>
                                            
                                                <li><a href="IDCardPrinting.html"><i class="fa fa-circle-o"></i>Collector/Advisor I-Card</a></li>
                                            
                                                <li><a href="AdvisorSearch.html"><i class="fa fa-circle-o"></i>Collector/Advisor Search</a></li>
                                            
                                    </ul>
                                </li>
                            
                                <li class="treeview">
                                    <a href='#'><img src="dist/img/icon/ico-3.png" style="margin-right: 5px;"/><span>Employee Section</span><span class="pull-right-container">  <i class="fa fa-angle-left pull-right"></i></span></a>
                                    <ul class="treeview-menu">
                                        
                                                <li><a href="DesignationMaster.html"><i class="fa fa-circle-o"></i>Add Designation</a></li>
                                            
                                                <li><a href="DepartmentMaster.html"><i class="fa fa-circle-o"></i>Add Department</a></li>
                                            
                                                <li><a href="AddEmployee.html"><i class="fa fa-circle-o"></i>Add Employee</a></li>
                                            
                                                <li><a href="EmployeeIDCardPrinting.html"><i class="fa fa-circle-o"></i>Employee I-Card</a></li>
                                            
                                                <li><a href="SearchEmployee.html"><i class="fa fa-circle-o"></i>Search Employee</a></li>
                                            
                                    </ul>
                                </li>
                            
                                <li class="treeview">
                                    <a href='#'><img src="dist/img/icon/ico-6.png" style="margin-right: 5px;" /><span>Investment Section</span><span class="pull-right-container">  <i class="fa fa-angle-left pull-right"></i></span></a>
                                    <ul class="treeview-menu">
                                        
                                                <li><a href="PlanMaster.html"><i class="fa fa-circle-o"></i>Plan Master</a></li>
                                            
                                                <li><a href="AddInvestment.html"><i class="fa fa-circle-o"></i>New Investment</a></li>
                                            
                                                <li><a href="RDRenewal.html"><i class="fa fa-circle-o"></i>Renewal Payment</a></li>
                                            
                                                <li><a href="DailyRenewalPayment.html"><i class="fa fa-circle-o"></i>Daily Renewal Payment</a></li>
                                            
                                                <li><a href="Flexirenewal9828.html?IsModification=false"><i class="fa fa-circle-o"></i>Flexi Renewal Payment</a></li>
                                            
                                                <li><a href="RenewalPassbook.html"><i class="fa fa-circle-o"></i>Daily/RD Passbook</a></li>
                                            
                                                <li><a href="PolicyRenewalReceiptf0be.html?IsTag=New"><i class="fa fa-circle-o"></i>Investment Receipt</a></li>
                                            
                                                <li><a href="PolicyRenewalReceiptb376.html?IsTag=Renew"><i class="fa fa-circle-o"></i>Recurring  Receipt</a></li>
                                            
                                                <li><a href="CertificateIssue.html"><i class="fa fa-circle-o"></i>Certificate Issue</a></li>
                                            
                                                <li><a href="CertificateIssue46b3.html?RePrint=Reprint"><i class="fa fa-circle-o"></i>Certificate Re-Issue</a></li>
                                            
                                                <li><a href="InvestmentInterestDetails.html"><i class="fa fa-circle-o"></i>Interest Details</a></li>
                                            
                                                <li><a href="InvestmentInterestPayable.html"><i class="fa fa-circle-o"></i>Interest Payable</a></li>
                                            
                                                <li><a href="InvestmentSearch.html"><i class="fa fa-circle-o"></i>Investment Search</a></li>
                                            
                                    </ul>
                                </li>
                            
                                <li class="treeview">
                                    <a href='#'><img src="dist/img/icon/ico-9.png" style="margin-right: 5px;" /><span>Savings Account</span><span class="pull-right-container">  <i class="fa fa-angle-left pull-right"></i></span></a>
                                    <ul class="treeview-menu">
                                        
                                                <li><a href="SavingsPlanMaster.html"><i class="fa fa-circle-o"></i>Savings Plan Master</a></li>
                                            
                                                <li><a href="AddSaving.html"><i class="fa fa-circle-o"></i>Savings Opening</a></li>
                                            
                                                <li><a href="SavingsTransactionEntry.html"><i class="fa fa-circle-o"></i>Savings Transaction</a></li>
                                            
                                                <li><a href="SavingIntraTransfer.html"><i class="fa fa-circle-o"></i>SB Intra Transfer</a></li>
                                            
                                                <li><a href="SBInterestGenerate.html"><i class="fa fa-circle-o"></i>SB Interest Transfer</a></li>
                                            
                                                <li><a href="SBPassbookPrint.html"><i class="fa fa-circle-o"></i>Savings Passbook</a></li>
                                            
                                                <li><a href="SavingsStatement.html"><i class="fa fa-circle-o"></i>Savings Statement</a></li>
                                            
                                                <li><a href="AccountCloser.html"><i class="fa fa-circle-o"></i>Account Closer</a></li>
                                            
                                                <li><a href="SearchSavingsAccount.html"><i class="fa fa-circle-o"></i>Search Savings AC</a></li>
                                            
                                                <li><a href="SMSChargesDeduction.html"><i class="fa fa-circle-o"></i>SMS Charges Deduction</a></li>
                                            
                                                <li><a href="ServiceChargesDeduction.html"><i class="fa fa-circle-o"></i>Service Charges Deduction</a></li>
                                            
                                    </ul>
                                </li>
                            
                                <li class="treeview">
                                    <a href='#'><img src="dist/img/icon/ico-7.png" style="margin-right: 5px;"/><span>Loan Section</span><span class="pull-right-container">  <i class="fa fa-angle-left pull-right"></i></span></a>
                                    <ul class="treeview-menu">
                                        
                                                <li><a href="LoanPlanf159.html?Type=Normal"><i class="fa fa-circle-o"></i>Loan Plan Creation</a></li>
                                            
                                                <li><a href="LoanCalculator.html"><i class="fa fa-circle-o"></i>Loan Calculator</a></li>
                                            
                                                <li><a href="LoanApplication7475.html?Type=Application"><i class="fa fa-circle-o"></i>Loan Application</a></li>
                                            
                                                <li><a href="LoanApplication9c5a.html?Type=Approval"><i class="fa fa-circle-o"></i>Loan Authorized</a></li>
                                            
                                                <li><a href="LoanApplicationf780.html?Type=Payment"><i class="fa fa-circle-o"></i>Loan Payment Section</a></li>
                                            
                                                <li><a href="LoanRepaymentf159.html?Type=Normal"><i class="fa fa-circle-o"></i>Regular Emi Re-payment</a></li>
                                            
                                                <li><a href="IrregularEMIPaymentEntryf159.html?Type=Normal"><i class="fa fa-circle-o"></i>Irregular Emi Re-payment</a></li>
                                            
                                                <li><a href="RegularLoanStatementf159.html?Type=Normal"><i class="fa fa-circle-o"></i>Regular Loan Statement</a></li>
                                            
                                                <li><a href="IrregularLoanStatementf159.html?Type=Normal"><i class="fa fa-circle-o"></i>Irregular Loan Statement</a></li>
                                            
                                                <li><a href="RegularLoanDocumentPrint.html"><i class="fa fa-circle-o"></i>Loan Document Print</a></li>
                                            
                                                <li><a href="LoanPreSettlementf159.html?Type=Normal"><i class="fa fa-circle-o"></i>Pre Settlement</a></li>
                                            
                                                <li><a href="ClosedLoanReportf159.html?Type=Normal"><i class="fa fa-circle-o"></i>Closed loan Details</a></li>
                                            
                                                <li><a href="LoanNocf159.html?Type=Normal"><i class="fa fa-circle-o"></i>NOC Certificate</a></li>
                                            
                                                <li><a href="LoanSearch.html"><i class="fa fa-circle-o"></i>Search Loan</a></li>
                                            
                                    </ul>
                                </li>
                            
                                <li class="treeview">
                                    <a href='#'><img src="dist/img/icon/ico-8.png" style="margin-right: 5px;"/><span>Gold Loan</span><span class="pull-right-container">  <i class="fa fa-angle-left pull-right"></i></span></a>
                                    <ul class="treeview-menu">
                                        
                                                <li><a href="LoanPlan9d5e.html?Type=Gold"><i class="fa fa-circle-o"></i>Gold Plan Creation</a></li>
                                            
                                                <li><a href="GoldLoanMaster.html"><i class="fa fa-circle-o"></i>Gold Loan Master</a></li>
                                            
                                                <li><a href="GoldLoanApplication7475.html?Type=Application"><i class="fa fa-circle-o"></i>Gold Loan Application</a></li>
                                            
                                                <li><a href="GoldLoanApplication9c5a.html?Type=Approval"><i class="fa fa-circle-o"></i>Gold Loan Authorized</a></li>
                                            
                                                <li><a href="GoldLoanApplicationf780.html?Type=Payment"><i class="fa fa-circle-o"></i>Loan Payment Section</a></li>
                                            
                                                <li><a href="LoanRepayment9d5e.html?Type=Gold"><i class="fa fa-circle-o"></i>Regular Emi Re-payment</a></li>
                                            
                                                <li><a href="IrregularEMIPaymentEntry9d5e.html?Type=Gold"><i class="fa fa-circle-o"></i>Irregular Emi Re-payment</a></li>
                                            
                                                <li><a href="RegularLoanStatement9d5e.html?Type=Gold"><i class="fa fa-circle-o"></i>Regular Loan Statement</a></li>
                                            
                                                <li><a href="IrregularLoanStatement9d5e.html?Type=Gold"><i class="fa fa-circle-o"></i>Irregular Loan Statement</a></li>
                                            
                                                <li><a href="GoldLoanDocumentPrint.html"><i class="fa fa-circle-o"></i>Loan Documents Print</a></li>
                                            
                                                <li><a href="LoanPreSettlement9d5e.html?Type=Gold"><i class="fa fa-circle-o"></i>Pre Settlement</a></li>
                                            
                                                <li><a href="ClosedLoanReport9d5e.html?Type=Gold"><i class="fa fa-circle-o"></i>Closed loan Details</a></li>
                                            
                                                <li><a href="LoanNoc9d5e.html?Type=Gold"><i class="fa fa-circle-o"></i>NOC Certificate</a></li>
                                            
                                                <li><a href="GoldLoanSearch.html"><i class="fa fa-circle-o"></i>Search Loan</a></li>
                                            
                                    </ul>
                                </li>
                            
                                <li class="treeview">
                                    <a href='#'><img src="dist/img/icon/ico-16.png" style="margin-right: 5px;" /><span>Group Loan</span><span class="pull-right-container">  <i class="fa fa-angle-left pull-right"></i></span></a>
                                    <ul class="treeview-menu">
                                        
                                                <li><a href="LoanPlan5c22.html?Type=Group"><i class="fa fa-circle-o"></i>Group Plan Creation</a></li>
                                            
                                                <li><a href="LoanGroupMaster.html"><i class="fa fa-circle-o"></i>Group Master</a></li>
                                            
                                                <li><a href="GroupLoanApplication.html"><i class="fa fa-circle-o"></i>Group Loan Application</a></li>
                                            
                                                <li><a href="GroupLoanApproval9c5a.html?Type=Approval"><i class="fa fa-circle-o"></i>Group Loan Authorized</a></li>
                                            
                                                <li><a href="GroupLoanApprovalf780.html?Type=Payment"><i class="fa fa-circle-o"></i>Loan Payment Section</a></li>
                                            
                                                <li><a href="LoanRepayment5c22.html?Type=Group"><i class="fa fa-circle-o"></i>Emi Re-payment</a></li>
                                            
                                                <li><a href="GlDailyRepaymentSheet.html"><i class="fa fa-circle-o"></i>Daily Repayment Sheet</a></li>
                                            
                                                <li><a href="DemandSheet.html"><i class="fa fa-circle-o"></i>Demand Sheet</a></li>
                                            
                                                <li><a href="RegularLoanStatement5c22.html?Type=Group"><i class="fa fa-circle-o"></i>Loan Statement</a></li>
                                            
                                                <li><a href="LoanPreSettlement5c22.html?Type=Group"><i class="fa fa-circle-o"></i>Pre Settlement</a></li>
                                            
                                                <li><a href="ClosedLoanReportf159.html?Type=Normal"><i class="fa fa-circle-o"></i>Closed loan Details</a></li>
                                            
                                                <li><a href="GroupLoanSearch.html"><i class="fa fa-circle-o"></i>Search Loan</a></li>
                                            
                                    </ul>
                                </li>
                            
                                <li class="treeview">
                                    <a href='#'><img src="dist/img/icon/ico-12.png"  style="margin-right: 5px;"/><span>Approval Section</span><span class="pull-right-container">  <i class="fa fa-angle-left pull-right"></i></span></a>
                                    <ul class="treeview-menu">
                                        
                                                <li><a href="AddMemberApproval.html"><i class="fa fa-circle-o"></i>Member  Approval</a></li>
                                            
                                                <li><a href="ShareIssueApproval.html"><i class="fa fa-circle-o"></i>Share Approval</a></li>
                                            
                                                <li><a href="AdvisorApproval.html"><i class="fa fa-circle-o"></i>Advisor/Collector Approval</a></li>
                                            
                                                <li><a href="InvestmentApproval.html"><i class="fa fa-circle-o"></i>Investment Approval</a></li>
                                            
                                                <li><a href="RecurringApproval.html"><i class="fa fa-circle-o"></i>Recurring  Approval</a></li>
                                            
                                                <li><a href="SBTxnApproval.html"><i class="fa fa-circle-o"></i>Saving Transaction Approval</a></li>
                                            
                                                <li><a href="IntraTransferApproval.html"><i class="fa fa-circle-o"></i>SB Transfer Approval</a></li>
                                            
                                                <li><a href="RegularEMIApproval.html"><i class="fa fa-circle-o"></i>Regular EMI Approval</a></li>
                                            
                                                <li><a href="IrrularEMIApproval.html"><i class="fa fa-circle-o"></i>Irregular EMI Approval</a></li>
                                            
                                                <li><a href="PaymentEntryApproval.html"><i class="fa fa-circle-o"></i>Payment Entry Approval</a></li>
                                            
                                                <li><a href="MaturityApplicationApproval.html"><i class="fa fa-circle-o"></i>Maturity Application Approval</a></li>
                                            
                                                <li><a href="MaturityApplicationDelete.html"><i class="fa fa-circle-o"></i>Maturity Application Delete</a></li>
                                            
                                                <li><a href="CSPCashTransferApproval.html"><i class="fa fa-circle-o"></i>Branch Cash Transfer Approval</a></li>
                                            
                                    </ul>
                                </li>
                            
                                <li class="treeview">
                                    <a href='#'><img src="dist/img/icon/ico-10.png"  style="margin-right: 5px;"/><span>Rectification Section</span><span class="pull-right-container">  <i class="fa fa-angle-left pull-right"></i></span></a>
                                    <ul class="treeview-menu">
                                        
                                                <li><a href="AddMemberbbb6.html?IsModification=true"><i class="fa fa-circle-o"></i>Member Rectification</a></li>
                                            
                                                <li><a href="ShareIssuef00f.html?ismodify=true"><i class="fa fa-circle-o"></i>Share Rectification</a></li>
                                            
                                                <li><a href="AddAdvisorbbb6.html?IsModification=true"><i class="fa fa-circle-o"></i>Advisor/Collector Rectification</a></li>
                                            
                                                <li><a href="AddInvestmentbbb6.html?IsModification=true"><i class="fa fa-circle-o"></i>Investment Rectification</a></li>
                                            
                                                <li><a href="RDRenewalbbb6.html?IsModification=true"><i class="fa fa-circle-o"></i>Renewal Rectification</a></li>
                                            
                                                <li><a href="DailyRenewalPaymentbbb6.html?IsModification=true"><i class="fa fa-circle-o"></i>Daily Renewal Rectification</a></li>
                                            
                                                <li><a href="FlexiRenewalbbb6.html?IsModification=true"><i class="fa fa-circle-o"></i>Flexi Transaction Delete</a></li>
                                            
                                                <li><a href="AddSavingbbb6.html?IsModification=true"><i class="fa fa-circle-o"></i>Savings Rectification</a></li>
                                            
                                                <li><a href="SavingsTransactionEntrybbb6.html?IsModification=true"><i class="fa fa-circle-o"></i>Savings Transaction Delete</a></li>
                                            
                                                <li><a href="LoanApplicationbbb6.html?IsModification=true"><i class="fa fa-circle-o"></i>Loan Rectification</a></li>
                                            
                                                <li><a href="GoldLoanApplicationbbb6.html?IsModification=true"><i class="fa fa-circle-o"></i>Gold Loan Rectification</a></li>
                                            
                                                <li><a href="GroupLoanApprovalbbb6.html?IsModification=true"><i class="fa fa-circle-o"></i>Group Loan Rectification</a></li>
                                            
                                                <li><a href="AddEmployeebbb6.html?IsModification=true"><i class="fa fa-circle-o"></i>Employee Modification</a></li>
                                            
                                    </ul>
                                </li>
                            
                                <li class="treeview">
                                    <a href='#'><img src="dist/img/icon/ico-11.png" style="margin-right: 5px;" /><span>Accounts Section</span><span class="pull-right-container">  <i class="fa fa-angle-left pull-right"></i></span></a>
                                    <ul class="treeview-menu">
                                        
                                                <li><a href="AccountLegMaster.html"><i class="fa fa-circle-o"></i>Ledger Master</a></li>
                                            
                                                <li><a href="PaymentVoucher.html"><i class="fa fa-circle-o"></i>Payment Entry</a></li>
                                            
                                                <li><a href="ReceiveVoucher.html"><i class="fa fa-circle-o"></i>Receive Entry</a></li>
                                            
                                                <li><a href="ContraVoucherEntry.html"><i class="fa fa-circle-o"></i>Contra Entry</a></li>
                                            
                                                <li><a href="JournalVoucher.html"><i class="fa fa-circle-o"></i>Journal Entry</a></li>
                                            
                                                <li><a href="IncentivePayment.html"><i class="fa fa-circle-o"></i>Incentive Payment</a></li>
                                            
                                                <li><a href="MISPayment.html"><i class="fa fa-circle-o"></i>MIS int. Payment</a></li>
                                            
                                                <li><a href="ChequeClear.html"><i class="fa fa-circle-o"></i>Cheque Clearing</a></li>
                                            
                                                <li><a href="UnencumberedTermDeposit.html"><i class="fa fa-circle-o"></i>Mandate Deposit to Bank</a></li>
                                            
                                                <li><a href="BankStatement.html"><i class="fa fa-circle-o"></i>Bank Statement</a></li>
                                            
                                                <li><a href="CashStatement.html"><i class="fa fa-circle-o"></i>Cash Book</a></li>
                                            
                                                <li><a href="TransferBook.html"><i class="fa fa-circle-o"></i>Transfer Book</a></li>
                                            
                                                <li><a href="RegularStatement.html"><i class="fa fa-circle-o"></i>Day Book</a></li>
                                            
                                                <li><a href="FinancialLedgerReport.html"><i class="fa fa-circle-o"></i>Ledger Report</a></li>
                                            
                                                <li><a href="JournalReport.html"><i class="fa fa-circle-o"></i>Journal Report</a></li>
                                            
                                                <li><a href="FinancialTrialBalance.html"><i class="fa fa-circle-o"></i>Trail Balance</a></li>
                                            
                                                <li><a href="PLStatement.html"><i class="fa fa-circle-o"></i>P&L Statement (FY)</a></li>
                                            
                                                <li><a href="FinancialBalanceSheet.html"><i class="fa fa-circle-o"></i>Balance Sheet (FY)</a></li>
                                            
                                                <li><a href="ProfitLossDateWise.html"><i class="fa fa-circle-o"></i>P&L Statement</a></li>
                                            
                                                <li><a href="BalanceSheetDatewise.html"><i class="fa fa-circle-o"></i>Balance Sheet</a></li>
                                            
                                                <li><a href="CSPCashTransfer.html"><i class="fa fa-circle-o"></i>Branch Cash Transfer</a></li>
                                            
                                    </ul>
                                </li>
                            
                                <li class="treeview">
                                    <a href='#'><img src="dist/img/icon/ico-13.png" style="margin-right: 5px;"/><span>Incentive Section</span><span class="pull-right-container">  <i class="fa fa-angle-left pull-right"></i></span></a>
                                    <ul class="treeview-menu">
                                        
                                                <li><a href="IncentiveMaster.html"><i class="fa fa-circle-o"></i>Incentive Master</a></li>
                                            
                                                <li><a href="IncentiveGeneration.html"><i class="fa fa-circle-o"></i>Incentive Generate</a></li>
                                            
                                                <li><a href="IncentiveDetailsPrint.html"><i class="fa fa-circle-o"></i>Incentive Details</a></li>
                                            
                                                <li><a href="IncentiveListPrint.html"><i class="fa fa-circle-o"></i>Incentive List</a></li>
                                            
                                    </ul>
                                </li>
                            
                                <li class="treeview">
                                    <a href='#'><img src="dist/img/icon/ico-14.png" style="margin-right: 5px;"/><span>Maturity Section</span><span class="pull-right-container">  <i class="fa fa-angle-left pull-right"></i></span></a>
                                    <ul class="treeview-menu">
                                        
                                                <li><a href="PreMaturity.html"><i class="fa fa-circle-o"></i>Maturity Master</a></li>
                                            
                                                <li><a href="MaturityApplication.html"><i class="fa fa-circle-o"></i>Maturity Application</a></li>
                                            
                                                <li><a href="MaturityPayment.html"><i class="fa fa-circle-o"></i>Maturity Payment</a></li>
                                            
                                                <li><a href="RedemtionPartPayment.html"><i class="fa fa-circle-o"></i>Maturity Payment (Partly)</a></li>
                                            
                                                <li><a href="MaturityTracking02a9.html?Code=RR"><i class="fa fa-circle-o"></i>Mat. Application Status</a></li>
                                            
                                                <li><a href="MaturityTrackinge23f.html?Code=AR"><i class="fa fa-circle-o"></i>Approved Status</a></li>
                                            
                                                <li><a href="MaturityTrackingf0bf.html?Code=PR"><i class="fa fa-circle-o"></i>Mat. Payment Status</a></li>
                                            
                                                <li><a href="MaturityPartPaymentReport.html"><i class="fa fa-circle-o"></i>Mat. Payment Status (Partly)</a></li>
                                            
                                                <li><a href="MaturityReceiptRePrint.html"><i class="fa fa-circle-o"></i>Maturity Receipt Print</a></li>
                                            
                                    </ul>
                                </li>
                            
                                <li class="treeview">
                                    <a href='#'><img src="dist/img/icon/ico-15.png" style="margin-right: 5px;"/><span>Report Section</span><span class="pull-right-container">  <i class="fa fa-angle-left pull-right"></i></span></a>
                                    <ul class="treeview-menu">
                                        
                                                <li><a href="InvestmentTotalReport.html"><i class="fa fa-circle-o"></i>Investment Report</a></li>
                                            
                                                <li><a href="InvestmentReportSummary.html"><i class="fa fa-circle-o"></i>Investment - Summary</a></li>
                                            
                                                <li><a href="EmployeeCollection.html"><i class="fa fa-circle-o"></i>Advisor Collection</a></li>
                                            
                                                <li><a href="AdvisorTeamCollection.html"><i class="fa fa-circle-o"></i>Advisor Team Collection</a></li>
                                            
                                                <li><a href="ChequeStatusReport.html"><i class="fa fa-circle-o"></i>Cheque Clearance Status</a></li>
                                            
                                                <li><a href="IncentivePaymentReport.html"><i class="fa fa-circle-o"></i>Incentive Payment report</a></li>
                                            
                                                <li><a href="RecurringDueReport.html"><i class="fa fa-circle-o"></i>Recurring Due Report</a></li>
                                            
                                                <li><a href="LoanNotApproveReport.html"><i class="fa fa-circle-o"></i>Loan Not approved Report</a></li>
                                            
                                                <li><a href="LoanApprovalReport.html"><i class="fa fa-circle-o"></i>Approved Loan </a></li>
                                            
                                                <li><a href="LoanPaymentReport.html"><i class="fa fa-circle-o"></i>Loan Payment Report</a></li>
                                            
                                                <li><a href="LoanEMIDueReport.html"><i class="fa fa-circle-o"></i>Due Emi Report</a></li>
                                            
                                                <li><a href="LoanEMIOverDueReport.html"><i class="fa fa-circle-o"></i>Emi Over Due Report</a></li>
                                            
                                                <li><a href="LoanEMIOutstandingReport.html"><i class="fa fa-circle-o"></i>Emi Outstanding Report</a></li>
                                            
                                                <li><a href="EMICollectonReport6d6e.html?Type=R"><i class="fa fa-circle-o"></i>Regular EMI Report</a></li>
                                            
                                                <li><a href="EMICollectonReport7506.html?Type=I"><i class="fa fa-circle-o"></i>Irregular EMI Report</a></li>
                                            
                                                <li><a href="LoanCollectionsheetPrint.html"><i class="fa fa-circle-o"></i>Loan Sheet Print</a></li>
                                            
                                                <li><a href="MaturityStatusReport.html"><i class="fa fa-circle-o"></i>Maturity Status</a></li>
                                            
                                                <li><a href="ProjectionReport.html"><i class="fa fa-circle-o"></i>Projection Report</a></li>
                                            
                                                <li><a href="MaturityLiabilityReport.html"><i class="fa fa-circle-o"></i>Maturity Liability Report</a></li>
                                            
                                                <li><a href="TDSDeductionReport.html"><i class="fa fa-circle-o"></i>TDS Deduction Report</a></li>
                                            
                                                <li><a href="PolicyStatement.html"><i class="fa fa-circle-o"></i>Policy Statement</a></li>
                                            
                                    </ul>
                                </li>
                            
                                <li class="treeview">
                                    <a href='#'><img src="dist/img/icon/ico-17.png" style="margin-right: 5px;" /><span>Payroll Management</span><span class="pull-right-container">  <i class="fa fa-angle-left pull-right"></i></span></a>
                                    <ul class="treeview-menu">
                                        
                                                <li><a href="DesignationMaster.html"><i class="fa fa-circle-o"></i>Add Designation</a></li>
                                            
                                                <li><a href="DepartmentMaster.html"><i class="fa fa-circle-o"></i>Add Department</a></li>
                                            
                                                <li><a href="EmployeeMaster.html"><i class="fa fa-circle-o"></i>Add Employee</a></li>
                                            
                                                <li><a href="EmployeeLeaveDetails.html"><i class="fa fa-circle-o"></i>Employee Leave</a></li>
                                            
                                                <li><a href="SalarySetupMaster.html"><i class="fa fa-circle-o"></i>Salary Details</a></li>
                                            
                                                <li><a href="HrmAppointmentLetter.html"><i class="fa fa-circle-o"></i>Appointment Letter</a></li>
                                            
                                                <li><a href="HrmOfferLetter.html"><i class="fa fa-circle-o"></i>Offer Letter Issue</a></li>
                                            
                                                <li><a href="OffDaySetting.html"><i class="fa fa-circle-o"></i>Holiday Master</a></li>
                                            
                                                <li><a href="LeaveAdjustment.html"><i class="fa fa-circle-o"></i>Leave Adjustment</a></li>
                                            
                                                <li><a href="HrmAttendance.html"><i class="fa fa-circle-o"></i>Attendance</a></li>
                                            
                                                <li><a href="HrmSalaryGenerate.html"><i class="fa fa-circle-o"></i>Salary Generate</a></li>
                                            
                                                <li><a href="HrmSalaryPayment.html"><i class="fa fa-circle-o"></i>Salary Payment</a></li>
                                            
                                                <li><a href="HrmSalarySlipPrint.html"><i class="fa fa-circle-o"></i>Salary Slip Print</a></li>
                                            
                                                <li><a href="AttendanceReport.html"><i class="fa fa-circle-o"></i>Attendance Report</a></li>
                                            
                                                <li><a href="HrmSalaryPaymentReport.html"><i class="fa fa-circle-o"></i>Salary Payment Report</a></li>
                                            
                                                <li><a href="HRMEmployeeSearch.html"><i class="fa fa-circle-o"></i>Employee Search</a></li>
                                            
                                                <li><a href="HrmEmployeeIDCard.html"><i class="fa fa-circle-o"></i>Employee ID Card</a></li>
                                            
                                    </ul>
                                </li>
                            
                                <li class="treeview">
                                    <a href='#'><img src="dist/img/icon/ico-18.png" style="margin-right: 5px;" /><span>Mobile App Control</span><span class="pull-right-container">  <i class="fa fa-angle-left pull-right"></i></span></a>
                                    <ul class="treeview-menu">
                                        
                                                <li><a href="MUser.html"><i class="fa fa-circle-o"></i>App User Creation</a></li>
                                            
                                                <li><a href="Mobile_MemberApproval.html"><i class="fa fa-circle-o"></i>Member  Approval</a></li>
                                            
                                                <li><a href="Mobile_CollectorApproval.html"><i class="fa fa-circle-o"></i>Advisor Approval</a></li>
                                            
                                                <li><a href="Mobile_InvestmentApproval.html"><i class="fa fa-circle-o"></i>Investment Approval</a></li>
                                            
                                                <li><a href="Mobile_RenawalApproval.html"><i class="fa fa-circle-o"></i>Recurring  Approval</a></li>
                                            
                                                <li><a href="Mobile_RegularEMIApproval.html"><i class="fa fa-circle-o"></i>Regular EMI Approval</a></li>
                                            
                                                <li><a href="Mobile_IrregularEMIApproval.html"><i class="fa fa-circle-o"></i>Irregular EMI Approval</a></li>
                                            
                                                <li><a href="Mobile_SBTxnApproval.html"><i class="fa fa-circle-o"></i>Saving Transaction Approval</a></li>
                                            
                                    </ul>
                                </li>
                            
                                <li class="treeview">
                                    <a href='#'><img src="dist/img/icon/ico-15.png" style="margin-right: 5px;"/><span>Mobile App Report</span><span class="pull-right-container">  <i class="fa fa-angle-left pull-right"></i></span></a>
                                    <ul class="treeview-menu">
                                        
                                                <li><a href="Mobile_MemberApprovalReport.html"><i class="fa fa-circle-o"></i>Member Approval Report</a></li>
                                            
                                                <li><a href="Mobile_AdvisorApprovalReport.html"><i class="fa fa-circle-o"></i>Advisor Approval Report</a></li>
                                            
                                                <li><a href="Mobile_RegularEMICollectionReport.html"><i class="fa fa-circle-o"></i>Regular EMI Approval Report</a></li>
                                            
                                                <li><a href="Mobile_IrregularEMICollectionReport.html"><i class="fa fa-circle-o"></i>Irregular EMI Approval Report</a></li>
                                            
                                                <li><a href="Mobile_SBTxnApprovalReport.html"><i class="fa fa-circle-o"></i>SB Txn Approval Report</a></li>
                                            
                                                <li><a href="Mobile_InvestmentApprovalReport.html"><i class="fa fa-circle-o"></i>Investment Approval Report</a></li>
                                            
                                                <li><a href="Mobile_RenewalApprovalReport.html"><i class="fa fa-circle-o"></i>Renewal Approval Report</a></li>
                                            
                                    </ul>
                                </li>
                            




                    </ul>
                </section>
                <!-- /.sidebar -->
            </aside>
             <script type="text/javascript">
<![CDATA[
 Sys.WebForms.PageRequestManager._initialize('ctl00$ScriptManager1', 'form1', [], [], [], 90, 'ctl00');
]]>
 </script> 

            <!-- Content Wrapper. Contains page content -->
            <div class="content-wrapper" style="min-height: 1105.75px;">
                

                 
     <section class="content-header">
        <h1 id="ContentPlaceHolder1_IdHeader">Journal Report</h1>
        <ol class="breadcrumb">
            <li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
            <li><a href="#">Dashboard</a></li>
            <li class="active">Journal</li>
        </ol>
    </section>
    <section class="content">
        <div class="row">
            <div class="col-xs-12">
                <div class="box box-success">
                    <div class="box-header with-border">
                        <h3 class="box-title">Search Information</h3>
                    </div>
                    <div class="box-body">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Select Branch</label>
                                <select name="selectbranch " id="selectbranch" class="form-control" style="width: 100%;">
									<option value="">All</option>
									<option value="Main Office">Main Office</option>
									<option value="Main Office-001">Main Office-001</option>
								</select>
								<span id="selectbranchMsg" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Select Barnch</span>
								
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>From Date :</label>
                                <div class="input-group date">
                                    <div class="input-group-addon">
                                        <i class="fa fa-calendar"></i>
                                    </div>
                                    <input name="fromdate" type="date"  id="fromdate" class="form-control" data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;" data-mask="" />
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>To Date :</label>
                                <div class="input-group date">
                                    <div class="input-group-addon">
                                        <i class="fa fa-calendar"></i>
                                    </div>
                                    <input name="todate" type="date"  id="todate" class="form-control" data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;" data-mask="" />
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label></label>
                                <button type="submit"   onclick="JournalReportAjax(); JournalReportAjax2();" class="btn btn-success margin-20">View</button>
                            </div>
                        </div>
                    </div>
                 
                </div>
                <div class="box box-success" style="box-shadow: none; overflow: auto !important;">
                    <div class="box-header with-border">
                        <h3 class="box-title">Search Result</h3>
                        <div class="box-tools pull-right"></div>
                        <!-- TABLE STARTS HERE -->
         
         
         
         
    
         
         
                        
                        
    <div>                   
	<table cellspacing="0" rules="all" class="display nowrap table table-hover table-striped table-bordered" border="1" id="table" style="width:100%;border-collapse:collapse; "  >
		<caption>
			Transaction List
		</caption>
		
		 <%--  <tr>
			<td>Receipt No</td>
			<td>Date</td>
			<td>Narration</td>
			<td>Debit</td>
			<td>Creadit Cr.</td>
		</tr>
		 
		
		
		<c:forEach items = "${list}" var="row">
		<tr>
			<td><c:out value="${row.receiptno}"></c:out> </td>
			<td><c:out value="${row.date}"></c:out> </td>
			<td><c:out value="${row.narration}"></c:out> </td>
			<td><c:out value="${row.debit}"></c:out> </td>
			<td><c:out value="${row.credit}"></c:out> </td>
    	</tr>
			
		</c:forEach>
		
		
	
		<c:forEach items = "${list2}" var="row">
		<tr>
			<td><c:out value="${row.receiptno}"></c:out> </td>
			<td><c:out value="${row.date}"></c:out> </td>
			<td><c:out value="${row.narration}"></c:out> </td>
			<td><c:out value="${row.debit}"></c:out> </td>
			<td><c:out value="${row.credit}"></c:out> </td>	
		</tr> 
		</c:forEach>
		
 --%> 				
	</table>	
</div>
 
                        
                        
                        
                   </div>
                    <div class="box-body">
                        <div class="clearfix margin-bottom-10"></div>

                        


                    </div>

                </div>


            </div>
        </div>
     
    </section>




            </div>
            <!-- /.content-wrapper -->

            <footer class="main-footer">
                <div class="pull-right hidden-xs">
                    <b>Version</b> 1.0.1
   
                </div>
                <strong>Copyright © 2020-2021 <a>
                    <span id="lblCompanyName1">EQFI NIDHI LIMITED</span></a>.</strong> All rights
    reserved.
 
            </footer>


            <div class="control-sidebar-bg"></div>

        </div>

        <script src="bower_components/jquery/dist/jquery.min.js"></script>
        <!-- Bootstrap 3.3.7 -->
        <script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

        <!-- InputMask -->
        <script src="plugins/input-mask/jquery.inputmask.js"></script>
        <script src="plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
        <script src="plugins/input-mask/jquery.inputmask.extensions.js"></script>
        <!-- date-range-picker -->
        <script src="bower_components/moment/min/moment.min.js"></script>
        <script src="bower_components/bootstrap-daterangepicker/daterangepicker.js"></script>
        <!-- bootstrap datepicker -->
        <script src="bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
        <!-- bootstrap color picker -->
        <script src="bower_components/bootstrap-colorpicker/dist/js/bootstrap-colorpicker.min.js"></script>
        <!-- bootstrap time picker -->
        <script src="plugins/timepicker/bootstrap-timepicker.min.js"></script>
        <!-- SlimScroll -->
        <script src="bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
        <!-- iCheck 1.0.1 -->
        <script src="plugins/iCheck/icheck.min.js"></script>
        <!-- FastClick -->
        <script src="bower_components/fastclick/lib/fastclick.js"></script>
        <!-- AdminLTE App -->
        <script src="dist/js/adminlte.min.js"></script>
        <!-- AdminLTE for demo purposes -->
        <script src="dist/js/demo.js"></script>
        <!-- Select2 -->
        <script src="bower_components/select2/dist/js/select2.full.min.js"></script>
        <script src="dist/js/JournalReport.js"></script>
        
        
        
        <!-- 
        <script>
            $(function () {
                //Initialize Select2 Elements
                $('.select2').select2();
                //Datemask dd/mm/yyyy
                $('#datemask').inputmask('dd/mm/yyyy', { 'placeholder': 'dd/mm/yyyy' })
                //Datemask2 mm/dd/yyyy
                $('#datemask2').inputmask('mm/dd/yyyy', { 'placeholder': 'mm/dd/yyyy' })
                //Date range picker
                $('#reservation').daterangepicker()
                //Date range picker with time picker
                $('#reservationtime').daterangepicker({ timePicker: true, timePickerIncrement: 30, locale: { format: 'MM/DD/YYYY hh:mm A' } })
                $('#daterange-btn').daterangepicker(
                 {
                     ranges: {
                         'Today': [moment(), moment()],
                         'Yesterday': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
                         'Last 7 Days': [moment().subtract(6, 'days'), moment()],
                         'Last 30 Days': [moment().subtract(29, 'days'), moment()],
                         'This Month': [moment().startOf('month'), moment().endOf('month')],
                         'Last Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
                     },
                     startDate: moment().subtract(29, 'days'),
                     endDate: moment()
                 },
                 function (start, end) {
                     $('#daterange-btn span').html(start.format('DD/MM/YYYY') + ' - ' + end.format('DD/MM/YYYY'))
                 }
               )
                //Date picker
                $('#datepicker').datepicker({
                    autoclose: true
                })
                //Money Euro
                $('[data-mask]').inputmask()

                //iCheck for checkbox and radio inputs
                $('span[type="checkbox"].minimal').iCheck({
                    checkboxClass: 'icheckbox_minimal-blue',
                    radioClass: 'iradio_minimal-blue'
                })





            })
        </script>
 -->  
 
 
 
<!--  </form> -->
</body>

<!-- Dk/Admin/JournalReport.aspx by <!-----EDB------> -->
</html>
