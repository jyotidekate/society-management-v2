<jsp:include page="../header.jsp" />

 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>

<body class="skin-blue sidebar-mini" style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);" cz-shortcut-listen="true">


           
         
         
<!--     <form   id="form1"  name="myForm"> -->
    
    


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
        <h1 id="ContentPlaceHolder1_IdHeader">Receipt Voucher</h1>
        <ol class="breadcrumb">
            <li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
            <li><a href="#">Dashboard</a></li>
            <li class="active">Receipt Voucher</li>
        </ol>
    </section>
    <section class="content">
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
                                <select name="Branch" id="Branch" class="form-control" style="width: 100%;">
	<option  value="">Selected</option>
	<option value="001">Main Office - 001</option>
	<option value="002">Main Office - 002</option>
	<option value="003">Main Office - 003</option>

</select>
<span id="selectBranchMsg12" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Select Credit Ledger</span>
                            </div>
                        </div>
                        
                        <div class="col-md-3">
                              <div class="form-group">
                                 <label>From Date :</label>
                                 <div class="input-group date">
                                    <div class="input-group-addon">
                                       <i class="fa fa-calendar"></i>
                                    </div>
                                    
                                    <input name="fDate" type="date"  id="fDate" class="form-control" data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;" data-mask="" />                          
                                 <span id="fDateMsg" style="color:Red;font-size:X-Small;font-weight:bold;display:none;"></span>
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
                                    
                                    <input name="tDate" type="date"  id="tDate" class="form-control" data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;" data-mask="" />
                                 <span id="tDateMsg" style="color:Red;font-size:X-Small;font-weight:bold;display:none;"></span>
                                 </div>
                              </div>
                           </div>
                           
                           
                           <div class="col-md-3">
                                 <div class="form-group">
                                      <label></label>
                                     <input type="submit"  onclick="getSelectedReceiptVoucger();" name="ctl00$ContentPlaceHolder1$btnSearch" value="Search" id="ContentPlaceHolder1_btnSearch" class="btn btn-success pull-right margin-20" />
                                </div>
                            </div>


                    </div>

                  
                </div>

                   </div>  
                </div>
                
<!--                 </form> -->
             
         <form method="post" action="addrecievceVoucherdata"  id="form1" modelAttribute="recievceVoucher" name="myFormSAve">
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
                                    <select name="selectBranch" id="Branch1" class="form-control" style="width: 100%;">
	<option value="">Select</option>
	<option value="001">Main Office - 001</option>
	<option value="002">Main Office - 002</option>
	<option value="003">Main Office - 003</option>

</select>
				<span id="selectBranchMsg" style="color:Red;font-size:X-Small;font-weight:bold;display:none;"></span>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="txtVoucherNo" class="col-sm-4 control-label">Receipt No.(Auto)<strong style="color: Red">*</strong></label>
                                <div class="col-sm-8">
                               

        
 
                                    <input value="${receiptNO}"  name="receiptNo" type="text" readonly="readonly" id="receiptNo" class="form-control" />
                                             
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="txtVoucherDate" class="col-sm-4 control-label">Txn Date<strong style="color: Red">*</strong></label>
                                
                               <div class="col-md-3">
                              <div class="form-group">
                                 <div class="input-group date">
                                    <div class="input-group-addon">
                                       <i class="fa fa-calendar"></i>
                                    </div>
                                    <input name="txnDate" type="date"  id="txnDate" class="form-control" data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;" data-mask="" />                          
                                 <span id="txnDateMsg" style="color:Red;font-size:X-Small;font-weight:bold;display:none;"></span>
                                 
                                 </div>
                              </div>
                           </div>
                                
                                
                            </div>
                             <div class="form-group row">
                                <label for="ddlDebitFrom" class="col-sm-4 control-label">Select Type<strong style="color: Red">*</strong></label>
                                <div class="col-sm-8">
                                    <select name="selectType"  id="selectType" class="form-control" style="width: 100%;">
	<option  value="">Select</option>
	<option  value="Direct">Direct</option>
	<option value="Transfer">Transfer</option>

</select>

 <span id="selectTypeMsg" style="color:Red;font-size:X-Small;font-weight:bold;display:none;"></span>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="ddlDebitFrom" class="col-sm-4 control-label">Direct/Transfer<strong style="color: Red">*</strong></label>
                                <div class="col-sm-8">
                                    <select name="directTransfer"  id="directTransfer" class="form-control" style="width: 100%;">
	<option  value=""></option>
	<option value="1001">Cash A/C</option>
	<option value="2091">107363400000533</option>

</select>
                                    <span id="directTransferMsg" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Select Credit Ledger</span>
                                </div>
                            </div>
                             
                            
                            
                          
                        </div>
                        <div class="col-md-6">

                              <div class="form-group row">
                                <label for="ddlLedger" class="col-sm-4 control-label">Select Ledger<strong style="color: Red">*</strong></label>
                                <div class="col-sm-8">
                                    <select name="selectLedger" id="selectLedger" class="form-control select2" style="width: 100%;">
	<option selected="selected" value="">Select</option>
	<option value="1008">Advisor/Collector Fees</option>
	<option value="2069">Cash Withdrawal Charge</option>
	<option value="2071">Gold Valuation Fees</option>
	<option value="1014">Late Fine A/c</option>
	<option value="1024">Loan Fore Closure Charges</option>
	<option value="1031">Loan Insurance Fee</option>
	<option value="567">Loan Interest Received</option>
	<option value="1030">Loan Legal Amount</option>
	<option value="1025">Loan Penalty A/C</option>
	<option value="1021">Loan Proc Fees</option>
	<option value="2070">Maturity Deduction</option>
	<option value="1009">Member Joining Fees</option>
	<option value="2085">Pass book Reisssue charge</option>
	<option value="1015">Processing Fee A/C</option>
	<option value="2088">Revenu </option>
	<option value="2073">SB Service Charges</option>
	<option value="2072">SMS Charges</option>

</select>
                                    <span id="selectLedgerMsg" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Select Ledger</span>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="txtAmount" class="col-sm-4 control-label">Amount<strong style="color: Red">*</strong></label>
                                <div class="col-sm-8">
                                    <input name="amount" type="text" id="amount" class="form-control" PlaceHolder="Enter Amount" onpaste="return false" onkeypress="return isNumberKey(this, event);" autocomplete="off" />
                                    <span id="amountMsg" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Amount</span>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="txtVoucherNo" class="col-sm-4 control-label">Narration (if any)</label>
                                <div class="col-sm-8">
                                    <textarea name="narration" rows="2" cols="20" id="narration" class="form-control">
</textarea>
                                     <span id="narrationMsg" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Narration</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="box-footer">
                        <div class="row col-md-12">
                            
                            
                            <button  name="ctl00$ContentPlaceHolder1$btnSave" value="Save" type="submit" onclick="return validateFormFields();"
                            
                            id="ContentPlaceHolder1_btnSave" class="btn btn-success pull-right margin-r-5"  >Save</button>
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

                       
                        <div>
	
									<table cellspacing="0" cellpadding="3" rules="all" 
                              class="display nowrap table table-hover table-striped table-bordered" 
                              border="1"  style="width:100%;border-collapse:collapse;">
                                 <caption>
                                   Receive Voucher
                                    
                                  
                                 </caption>
                                 <tr style="color:White;background-color:#008385;">
                                    <th scope="col">Id</th>
                                    <th scope="col">Branch</th>
                                    <th scope="col">Txn Date</th>
                                    <th scope="col">Select Type</th>
                                    <th scope="col">DirectTransfer</th>
                                    <th scope="col">Select Ledger</th>
                                    <th scope="col">Amount</th>
                                    <th scope="col">Narration</th>
                                    
                                   
                                    
                                    
                                 </tr>
                                  <tbody id="tableBody">
                                    
      							  </tbody>
                              </table>
	
	
	
	
	
	
                                </div>

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
        <!-- Custom Js for Account Section -->
		<script src="dist/js/CustomAccountSection.js"></script>
		<!--  Account Section  -->
		<script src="dist/js/AccountSectionSearch.js"></script>
		<!--  Validate Account  -->
		<script src="dist/js/ValidateAccountSection.js"></script>
		<script src="dist/js/FetchRecord.js"></script>
        
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
var Page_Validators =  new Array(document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorDebitFrom"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorddlLedger"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorAmount"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidator1"));
//]]>
</script>

<script type="text/javascript">
//<![CDATA[
var ContentPlaceHolder1_RequiredFieldValidatorDebitFrom = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorDebitFrom"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorDebitFrom");
ContentPlaceHolder1_RequiredFieldValidatorDebitFrom.controltovalidate = "ContentPlaceHolder1_ddlDebitFrom";
ContentPlaceHolder1_RequiredFieldValidatorDebitFrom.focusOnError = "t";
ContentPlaceHolder1_RequiredFieldValidatorDebitFrom.errormessage = "Select Credit Ledger";
ContentPlaceHolder1_RequiredFieldValidatorDebitFrom.display = "Dynamic";
ContentPlaceHolder1_RequiredFieldValidatorDebitFrom.validationGroup = "B";
ContentPlaceHolder1_RequiredFieldValidatorDebitFrom.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredFieldValidatorDebitFrom.initialvalue = "";
var ContentPlaceHolder1_RequiredFieldValidatorddlLedger = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorddlLedger"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorddlLedger");
ContentPlaceHolder1_RequiredFieldValidatorddlLedger.controltovalidate = "ContentPlaceHolder1_ddlLedger";
ContentPlaceHolder1_RequiredFieldValidatorddlLedger.focusOnError = "t";
ContentPlaceHolder1_RequiredFieldValidatorddlLedger.errormessage = "Select Ledger";
ContentPlaceHolder1_RequiredFieldValidatorddlLedger.display = "Dynamic";
ContentPlaceHolder1_RequiredFieldValidatorddlLedger.validationGroup = "B";
ContentPlaceHolder1_RequiredFieldValidatorddlLedger.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredFieldValidatorddlLedger.initialvalue = "";
var ContentPlaceHolder1_RequiredFieldValidatorAmount = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorAmount"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorAmount");
ContentPlaceHolder1_RequiredFieldValidatorAmount.controltovalidate = "ContentPlaceHolder1_txtAmount";
ContentPlaceHolder1_RequiredFieldValidatorAmount.focusOnError = "t";
ContentPlaceHolder1_RequiredFieldValidatorAmount.errormessage = "Enter Amount";
ContentPlaceHolder1_RequiredFieldValidatorAmount.display = "Dynamic";
ContentPlaceHolder1_RequiredFieldValidatorAmount.validationGroup = "B";
ContentPlaceHolder1_RequiredFieldValidatorAmount.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredFieldValidatorAmount.initialvalue = "";
var ContentPlaceHolder1_RequiredFieldValidator1 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator1"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidator1");
ContentPlaceHolder1_RequiredFieldValidator1.controltovalidate = "ContentPlaceHolder1_txtRemarks";
ContentPlaceHolder1_RequiredFieldValidator1.focusOnError = "t";
ContentPlaceHolder1_RequiredFieldValidator1.errormessage = "Enter Narration";
ContentPlaceHolder1_RequiredFieldValidator1.display = "Dynamic";
ContentPlaceHolder1_RequiredFieldValidator1.validationGroup = "B";
ContentPlaceHolder1_RequiredFieldValidator1.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredFieldValidator1.initialvalue = "";
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
        
document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorDebitFrom').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorDebitFrom'));
}

document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorddlLedger').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorddlLedger'));
}

document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorAmount').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorAmount'));
}

document.getElementById('ContentPlaceHolder1_RequiredFieldValidator1').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator1'));
}
//]]>
</script>


</form>

<!-- Java SCript Validation  -->
<script type="text/javascript">
function validateAmount() {
	var status = true;

const selectBranch = document.getElementById("selectBranch");
	if (selectBranch.value === '') {
		var span = document.getElementById("selectBranchMsg");
		span.textContent = "Select The Branch Message.";
		span.style.display = "block";
		status = false;
	}
	
	if (status === true) {
		document.myFormGroupMaster.submit();
		return true;
	} else {
		return false;
	}
}

</script>


</body>

<!-- Dk/Admin/ReceiveVoucher.aspx EDB D 09:27:16 GMT -->
</html>
