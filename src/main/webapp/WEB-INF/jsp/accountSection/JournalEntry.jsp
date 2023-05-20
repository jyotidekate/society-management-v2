
<jsp:include page="../header.jsp"/>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>    
 <%@ page isELIgnored="false"%>	
<body class="skin-blue sidebar-mini" style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);" cz-shortcut-listen="true">


        <div style="height: auto; min-height: 100%; border-radius: 30px; margin: 15px; background: url(dist/img/back.jpg);">
				<!-- Header Start-->
         <jsp:include page="../menu.jsp" />
         <!-- Header End -->
         <!-- Left side column. contains the logo and sidebar -->
         <!-- Aside Menu Start-->
         <jsp:include page="../asideMenu.jsp" />
         <!-- Aside Menu end -->
                       <script type="text/javascript">
//<![CDATA[
Sys.WebForms.PageRequestManager._initialize('ctl00$ScriptManager1', 'form1', [], [], [], 90, 'ctl00');
//]]>
</script>

            <!-- Content Wrapper. Contains page content -->
            <div class="content-wrapper" style="min-height: 1105.75px;">
                

                 
      <section class="content-header">
        <h1 id="ContentPlaceHolder1_IdHeader">Journal Voucher</h1>
        <ol class="breadcrumb">
            <li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
            <li><a href="#">Dashboard</a></li>
            <li class="active">Journal Voucher</li>
        </ol>
    </section>
    
    
    <!--Search Starts Here  -->
    <section class="content">
    <form method="GET" action="getAllRecord"  id="form1" modelAttribute="JournalEntryModelAttribute" >
         <div class="row">
            <div class="col-md-12">
                  <div class="box box-success">
                      <div class="box-header with-border">
                        <h3 class="box-title">Search Box </h3>
                    </div>
                      <div class="box-body">




                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Select Branch</label>
                                <select name="selectbranch" id="selectbranch" class="form-control" style="width: 100%;">
									<option selected="selected" value="All">All Branch</option>
									<option value="Main Office - 001">Main Office - 001</option>
									<option value="Main Office - 002">Main Office - 002</option>
									<option value="Main Office - 003">Main Office - 003</option>

								</select>
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
                                     <input type="submit" name="btnSearch" value="Search" id="btnSearch"  onclick="" class="btn btn-success pull-right margin-20" />
                                </div>
                            </div>


                    </div>

                  
                </div>

                   </div>  
                </div>
             </form>
             
             
        <form method="post" action="getAllRecord"  id="form1" modelAttribute="JournalEntryModelAttribute1">
        <div class="row">
            <div class="col-md-12">
                <div class="box box-success">
                    <div class="box-header with-border">
                        <h3 class="box-title">Entry Details </h3>
                    </div>

                    <div class="box-body">
                        <div class="col-md-6">
                            <div class="form-group row">
                                <label for="ddlPvBranch" class="col-sm-4 control-label">Select Branch<strong style="color: Red">*</strong></label>
                                <div class="col-sm-8">
                                    <select name="selectbranch" id="selectbranch" class="form-control" style="width: 100%;">
									<option value="Main Office - 001">Main Office - 001</option>
									<option value="Main Office - 002">Main Office - 002</option>
									<option value="Main Office - 003">Main Office - 003</option>

</select>

                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="txtVoucherNo" class="col-sm-4 control-label">Receipt No.(Auto)<strong style="color: Red">*</strong></label>
                                <div class="col-sm-8">
                                    <input name="receiptno" type="text" readonly="readonly" id="receiptno"  value="${rcptno}"class="form-control" />

                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="txtVoucherDate" class="col-sm-4 control-label">Txn Date<strong style="color: Red">*</strong></label>
                                <div class="col-sm-8">
                                    <div class="input-group date">
                                        <div class="input-group-addon">
                                            <i class="fa fa-calendar"></i>
                                        </div>
                                        
                                        
                                        <input name="txndate" type="date" value="01/08/2022" id="txndate" class="form-control" data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;" data-mask="" />
                                    
                                    </div>

                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="ddlLedger" class="col-sm-4 control-label">Select Cr. Ledger<strong style="color: Red">*</strong></label>
                                <div class="col-sm-8">
                                    <select name="selectcrledger" id="selectcrledger" class="form-control" style="width: 100%;">
                                    
									<option selected="selected" value=""></option>
									<option value="Advance incentive">Advance incentive</option>
									<option value="Advisor Advance">Advisor Advance</option>
									<option value="Advisor/Collector Fees">Advisor/Collector Fees</option>
									<option value="Bank Charge">Bank Charge </option>
									<option value="Cash Transfer">Cash Transfer</option>
									<option value="Cash Withdrawal Charge">Cash Withdrawal Charge</option>
									<option value="Company Capital">Company Capital</option>
									<option value="Daily Deposit A/C">Daily Deposit A/C</option>
									<option value="Daily Interest Paid A/C">Daily Interest Paid A/C</option>
									<option value="Deposit self">Deposit self</option>
									<option value="Electric Bill">Electric Bill</option>
									<option value="Electric Bill">Electric Bill</option>
									<option value="Employee Salary">Employee Salary</option>
									<option value="FD Interest Paid A/C">FD Interest Paid A/C</option>
									<option value="Fixed Deposit A/C">Fixed Deposit A/C</option>
									<option value="Furniture Fixture">Furniture &amp; Fixture</option>
									<option value="Gold Valuation Fees">Gold Valuation Fees</option>
									<option value="Incentive">Incentive</option>
									<option value="Incentive Payment">Incentive Payment</option>
									<option value="Late Fine A/c">Late Fine A/c</option>
									<option value="Loan Fore Closure Charges">Loan Fore Closure Charges</option>
									<option value="Loan GST">Loan GST</option>
									<option value="Loan Insurance Fee">Loan Insurance Fee</option>
									<option value="Loan Interest Receivable">Loan Interest Receivable</option>
									<option value="Loan Interest Received">Loan Interest Received</option>
									<option value="Loan Interest Waiver">Loan Interest Waiver</option>
									<option value="Loan Legal Amount">Loan Legal Amount</option>
									<option value="Loan Penalty A/C">Loan Penalty A/C</option>
									<option value="Loan Principal">Loan Principal</option>
									<option value="Loan Proc Fees">Loan Proc Fees</option>
									<option value="Maturity A/C">Maturity A/C</option>
									<option value="Maturity Deduction">Maturity Deduction</option>
									<option value="Maturity Paid">Maturity Paid</option>
									<option value="Member Joining Fees">Member Joining Fees</option>
									<option value="Member Share A/C">Member Share A/C</option>
									<option value="MIS Deposit A/C">MIS Deposit A/C</option>
									<option value="MIS Interest Paid A/C">MIS Interest Paid A/C</option>
									<option value="MIS Interest Payable">MIS Interest Payable</option>
									<option value="Office Rent">Office Rent</option>
									<option value="Official Exp">Official Exp</option>
									<option value="PaidUp Share Capital">PaidUp Share Capital</option>
									<option value="Pass book Reisssue charge">Pass book Reisssue charge</option>
									<option value="Petty Cash">Petty Cash</option>
									<option value="Processing Fee A/C">Processing Fee A/C</option>
									<option value="RD Interest Paid A/C">RD Interest Paid A/C</option>
									<option value="Recurring Deposit A/C">Recurring Deposit A/C</option>
									<option value="Revenu">Revenu </option>
									<option value="Revenu">Revenu </option>
									<option value="Saving A/C">Saving A/C</option>
									<option value="SB Interest Paid">SB Interest Paid</option>
									<option value="SB Service Charges">SB Service Charges</option>
									<option value="SMS Charges">SMS Charges</option>
									<option value="Unencumbered Term Deposit">Unencumbered Term Deposit</option>
								
								</select>
                                    <span id="ContentPlaceHolder1_RequiredFieldValidatorddlLedger" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Select Dr. Ledger</span>
                                </div>
                            </div>
                          
                        </div>
                        
                        
                        <div class="col-md-6">

                              <div class="form-group row">
                                <label for="ddlDebitFrom" class="col-sm-4 control-label">select Dr. Ledger<strong style="color: Red">*</strong></label>
                                <div class="col-sm-8">
                                    <select name="selectdrledger" id="selectdrledger" class="form-control" style="width: 100%;">
									<option selected="selected" value=""></option>
									<option value="Advance incentive">Advance incentive</option>
									<option value="Advisor Advance">Advisor Advance</option>
									<option value="Advisor/Collector Fees">Advisor/Collector Fees</option>
									<option value="Bank Charge">Bank Charge </option>
									<option value="Cash Transfer">Cash Transfer</option>
									<option value="Cash Withdrawal Charge">Cash Withdrawal Charge</option>
									<option value="Company Capital">Company Capital</option>
									<option value="Daily Deposit A/C">Daily Deposit A/C</option>
									<option value="Daily Interest Paid A/C">Daily Interest Paid A/C</option>
									<option value="Deposit self">Deposit self</option>
									<option value="Electric Bill">Electric Bill</option>
									<option value="Electric Bill">Electric Bill</option>
									<option value="Employee Salary">Employee Salary</option>
									<option value="FD Interest Paid A/C">FD Interest Paid A/C</option>
									<option value="Fixed Deposit A/C">Fixed Deposit A/C</option>
									<option value="Furniture Fixture">Furniture &amp; Fixture</option>
									<option value="Gold Valuation Fees">Gold Valuation Fees</option>
									<option value="Incentive">Incentive</option>
									<option value="Incentive Payment">Incentive Payment</option>
									<option value="Late Fine A/c">Late Fine A/c</option>
									<option value="Loan Fore Closure Charges">Loan Fore Closure Charges</option>
									<option value="Loan GST">Loan GST</option>
									<option value="Loan Insurance Fee">Loan Insurance Fee</option>
									<option value="Loan Interest Receivable">Loan Interest Receivable</option>
									<option value="Loan Interest Received">Loan Interest Received</option>
									<option value="Loan Interest Waiver">Loan Interest Waiver</option>
									<option value="Loan Legal Amount">Loan Legal Amount</option>
									<option value="Loan Penalty A/C">Loan Penalty A/C</option>
									<option value="Loan Principal">Loan Principal</option>
									<option value="Loan Proc Fees">Loan Proc Fees</option>
									<option value="Maturity A/C">Maturity A/C</option>
									<option value="Maturity Deduction">Maturity Deduction</option>
									<option value="Maturity Paid">Maturity Paid</option>
									<option value="Member Joining Fees">Member Joining Fees</option>
									<option value="Member Share A/C">Member Share A/C</option>
									<option value="MIS Deposit A/C">MIS Deposit A/C</option>
									<option value="MIS Interest Paid A/C">MIS Interest Paid A/C</option>
									<option value="MIS Interest Payable">MIS Interest Payable</option>
									<option value="Office Rent">Office Rent</option>
									<option value="Official Exp">Official Exp</option>
									<option value="PaidUp Share Capital">PaidUp Share Capital</option>
									<option value="Pass book Reisssue charge">Pass book Reisssue charge</option>
									<option value="Petty Cash">Petty Cash</option>
									<option value="Processing Fee A/C">Processing Fee A/C</option>
									<option value="RD Interest Paid A/C">RD Interest Paid A/C</option>
									<option value="Recurring Deposit A/C">Recurring Deposit A/C</option>
									<option value="Revenu">Revenu </option>
									<option value="Revenu">Revenu </option>
									<option value="aving A/C">Saving A/C</option>
									<option value="SB Interest Paid">SB Interest Paid</option>
									<option value="SB Service Charges">SB Service Charges</option>
									<option value="SMS Charges">SMS Charges</option>
									<option value="Unencumbered Term Deposit">Unencumbered Term Deposit</option>
								
								</select>
                                    <span id="ContentPlaceHolder1_RequiredFieldValidatorDebitFrom" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Select Cr. Ledger</span>
                                </div>
                            </div>
                            
                            
                            <div class="form-group row">
                                <label for="txtAmount" class="col-sm-4 control-label">Amount<strong style="color: Red">*</strong></label>
                                <div class="col-sm-8">
                                    <input name="amount" type="text" id="amount" class="form-control" PlaceHolder="Enter Amount" onpaste="return false" onkeypress="return isNumberKey(this, event);" autocomplete="off" />
                                    <span id="amount" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Amount</span>
                                </div>
                            </div>
                            
                            <div class="form-group row">
                                <label for="txtVoucherNo" class="col-sm-4 control-label">Remaks (if any)</label>
                                <div class="col-sm-8">
                                    <textarea name="remarks" rows="2" cols="20" id="remarks" class="form-control">
</textarea>

                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="box-footer">
                        <div class="row col-md-12">
                            
                            
                            <input type="submit" name="btnSave" value="Save" onclick="javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions(&quot;ctl00$ContentPlaceHolder1$btnSave&quot;, &quot;&quot;, true, &quot;B&quot;, &quot;&quot;, false, false))" id="btnSave" class="btn btn-success pull-right margin-r-5" />
                        </div>
                    </div>

                </div>
            </div>

            
        </div>


        
        <div class="row">
               <div class="col-md-12">
                   <div class="box box-success" style="box-shadow: none; overflow: auto !important;">
                          <div class="box-header with-border">
                        <h3 class="box-title">Search Result</h3>
                       
                    </div>
                    <div class="box-body">
                        <div class="clearfix margin-bottom-10"></div>

         
       <!-- Table list1 -->                
     <div>                   
	<table cellspacing="0" rules="all" class="display nowrap table table-hover table-striped table-bordered" border="1" id="table" style="width:100%;border-collapse:collapse;">
		<caption>
			Transaction List
		</caption>
		<tr>
			<td>Branch</td>
			<td>Receipt No.</td>
			<td>TXN Date</td>
			<td>Cr. Ledger</td>
			<td>Dr. Ledger</td>
			<td>Amount</td>	
			<td>Remaks</td>
		</tr>
		
		<c:forEach items = "${list}" var="row">
		<tr>
			<td><c:out value="${row.selectbranch}"></c:out> </td>
			<td><c:out value="${row.receiptno}"></c:out> </td>
			<td><c:out value="${row.txndate}"></c:out> </td>
			<td><c:out value="${row.selectcrledger}"></c:out> </td>
			<td><c:out value="${row.selectdrledger}"></c:out> </td>
		    <td><c:out value="${row.amount}"></c:out> </td>
		    <td><c:out value="${row.remarks}"></c:out> </td>
			
		</tr>
			
		</c:forEach>
		
		<c:forEach items = "${list2}" var="row">
		<tr>
			<td><c:out value="${row.selectbranch}"></c:out> </td>
			<td><c:out value="${row.receiptno}"></c:out> </td>
			<td><c:out value="${row.txndate}"></c:out> </td>
			<td><c:out value="${row.selectcrledger}"></c:out> </td>
			<td><c:out value="${row.selectdrledger}"></c:out> </td>
		    <td><c:out value="${row.amount}"></c:out> </td>
		    <td><c:out value="${row.remarks}"></c:out> </td>
			
		</tr>
			
		</c:forEach>
		
		
	</table>
	
	
</div>

                    </div>

                       </div>
                   </div>
              </div>

</form>

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
    
<script type="text/javascript">
//<![CDATA[
var Page_Validators =  new Array(document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorddlLedger"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorDebitFrom"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorAmount"));
//]]>
</script>

<script type="text/javascript">
//<![CDATA[
var ContentPlaceHolder1_RequiredFieldValidatorddlLedger = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorddlLedger"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorddlLedger");
ContentPlaceHolder1_RequiredFieldValidatorddlLedger.controltovalidate = "ContentPlaceHolder1_ddlDLedger";
ContentPlaceHolder1_RequiredFieldValidatorddlLedger.focusOnError = "t";
ContentPlaceHolder1_RequiredFieldValidatorddlLedger.errormessage = "Select Dr. Ledger";
ContentPlaceHolder1_RequiredFieldValidatorddlLedger.display = "Dynamic";
ContentPlaceHolder1_RequiredFieldValidatorddlLedger.validationGroup = "B";
ContentPlaceHolder1_RequiredFieldValidatorddlLedger.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredFieldValidatorddlLedger.initialvalue = "";
var ContentPlaceHolder1_RequiredFieldValidatorDebitFrom = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorDebitFrom"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorDebitFrom");
ContentPlaceHolder1_RequiredFieldValidatorDebitFrom.controltovalidate = "ContentPlaceHolder1_ddlCLedger";
ContentPlaceHolder1_RequiredFieldValidatorDebitFrom.focusOnError = "t";
ContentPlaceHolder1_RequiredFieldValidatorDebitFrom.errormessage = "Select Cr. Ledger";
ContentPlaceHolder1_RequiredFieldValidatorDebitFrom.display = "Dynamic";
ContentPlaceHolder1_RequiredFieldValidatorDebitFrom.validationGroup = "B";
ContentPlaceHolder1_RequiredFieldValidatorDebitFrom.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredFieldValidatorDebitFrom.initialvalue = "";
var ContentPlaceHolder1_RequiredFieldValidatorAmount = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorAmount"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorAmount");
ContentPlaceHolder1_RequiredFieldValidatorAmount.controltovalidate = "ContentPlaceHolder1_txtAmount";
ContentPlaceHolder1_RequiredFieldValidatorAmount.focusOnError = "t";
ContentPlaceHolder1_RequiredFieldValidatorAmount.errormessage = "Enter Amount";
ContentPlaceHolder1_RequiredFieldValidatorAmount.display = "Dynamic";
ContentPlaceHolder1_RequiredFieldValidatorAmount.validationGroup = "B";
ContentPlaceHolder1_RequiredFieldValidatorAmount.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredFieldValidatorAmount.initialvalue = "";
//]]>
</script>


<script type="text/javascript">
//<![CDATA[

var Page_ValidationActive = false;
if (typeof(ValidatorOnLoad) == "function") {
    ValidatorOnLoad();
}

function ValidatorOnSubmit() {
    if (Page_ValidationActive) {
        return ValidatorCommonOnSubmit();
    }
    else {
        return true;
    }
}
        
document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorddlLedger').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorddlLedger'));
}

document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorDebitFrom').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorDebitFrom'));
}

document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorAmount').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorAmount'));
}
//]]>
</script>

</body>

<!-- Dk/Admin/JournalVoucher.aspx EDB D 09:27:16 GMT -->
</html>
