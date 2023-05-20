<jsp:include page="../header.jsp" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<body class="skin-blue sidebar-mini" style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);" cz-shortcut-listen="true">
<!--     <form method="post" action="http://admin:eqfi%23123@eqfinidhi.eadmin.in/Admin/PaymentVoucher.aspx" onsubmit="javascript:return WebForm_OnSubmit();" id="form1"> -->



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
        <h1 id="ContentPlaceHolder1_IdHeader">Payment Voucher</h1>
        <ol class="breadcrumb">
            <li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
            <li><a href="#">Dashboard</a></li>
            <li class="active">Payment Voucher</li>
        </ol>
    </section>
    <section class="content">
        <!--     Search Operaton -->
    
<!--     <form method="get" action="searchPaymentEntry" id="form1" modelAttribute="SearchPaymentEntryModel" > -->
    
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
	<option value="001">Main Office - 001</option>
  <option value="002">Main Office - 002</option>
 

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
                                  <input name="fDate" type="date"  id="fDate" class="form-control" data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;" data-mask="" />
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
                                <button type="submit"  onclick="getpayEntry();" class="btn btn-success pull-right margin-20" >Search</button>
<!--                                 <input type="submit" name="searchbtn" value="Search" id="searchbtn" class="btn btn-success pull-right margin-20" /> -->
                            </div>
                        </div>


                    </div>


                </div>

            </div>
        </div>
<!--          </form> -->
  
        
<!--         INsert Operatoin -->
        
        
        
       <form method="post" action="paymentEntry" id="form1" modelAttribute="PaymentEntry2Modal" >
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
                                    <select name="selectbranch" id="slectbranch" class="form-control" style="width: 100%;">
	<option value="001">Main Office - 001</option>
	<option value="002">Main Office - 002</option>
	<option value="003">Main Office - 003</option>
	<option value="004">Main Office - 004</option>

</select>

                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="txtVoucherNo" class="col-sm-4 control-label">Receipt No.(Auto)<strong style="color: Red">*</strong></label>
                                <div class="col-sm-8">
                                    <input name="reciept" type="text" readonly="readonly" id="reciept" class="form-control" />

                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="txtVoucherDate" class="col-sm-4 control-label">Txn Date<strong style="color: Red">*</strong></label>
                                <div class="col-sm-8">
                                    <div class="input-group date">
                                        <div class="input-group-addon">
                                            <i class="fa fa-calendar"></i>
                                        </div>
                                        <input name="txndate" type="date"  id="txndate" class="form-control" data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;" data-mask="" />
                                           </div>

                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="ddlLedger" class="col-sm-4 control-label">Select Ledger<strong style="color: Red">*</strong></label>
                                <div class="col-sm-8">
                                    <select name="selectledger" id="selectledger" class="form-control select2" style="width: 100%;">
	<option selected="selected" value=""></option>
	<option value="1013">Advance incentive</option>
	<option value="2062">Bank Charge </option>
	<option value="1004">Daily Deposit A/C</option>
	<option value="1027">Daily Interest Paid A/C</option>
	<option value="2081">Electric Bill</option>
	<option value="2065">Employee Salary</option>
	<option value="1028">FD Interest Paid A/C</option>
	<option value="1002">Fixed Deposit A/C</option>
	<option value="2080">Incentive</option>
	<option value="1010">Incentive Payment</option>
	<option value="1022">Loan GST</option>
	<option value="1023">Loan Interest Waiver</option>
	<option value="1016">Maturity A/C</option>
	<option value="2090">Maturity Paid</option>
	<option value="1017">Member Share A/C</option>
	<option value="1005">MIS Deposit A/C</option>
	<option value="1029">MIS Interest Paid A/C</option>
	<option value="1012">MIS Interest Payable</option>
	<option value="2067">Office Rent</option>
	<option value="2053">Official Exp</option>
	<option value="1026">RD Interest Paid A/C</option>
	<option value="1003">Recurring Deposit A/C</option>
	<option value="1006">Saving A/C</option>
	<option value="1020">SB Interest Paid</option>

</select>
                                    <span id="ContentPlaceHolder1_RequiredFieldValidatorddlLedger" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Select Ledger</span>
                                </div>
                            </div>

                        </div>
                        <div class="col-md-6">
                            <div class="form-group row">
                                <label for="ddlDebitFrom" class="col-sm-4 control-label">Select Type<strong style="color: Red">*</strong></label>
                                <div class="col-sm-8">
                                    <select name="selectype" id="selectype" class="form-control" style="width: 100%;">
	<option selected="selected" value="Direct">Direct</option>
	<option value="Transfer">Transfer</option>

</select>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="ddlDebitFrom" class="col-sm-4 control-label">Direct/Transfer<strong style="color: Red">*</strong></label>
                                <div class="col-sm-8">
                                    <select name="dtransfer"  id="dtransfer" class="form-control" style="width: 100%;">
	<option selected="selected" value=""></option>
	<option value="1001">Cash A/C</option>
	<option value="2091">107363400000533</option>

</select>
                                    <span id="ContentPlaceHolder1_RequiredFieldValidatorDebitFrom" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Select Debit From</span>
                                </div>
                            </div>
                            
                            
                            
                            <div class="form-group row">
                                <label for="txtAmount" class="col-sm-4 control-label">Amount<strong style="color: Red">*</strong></label>
                                <div class="col-sm-8">
                                    <input name="amount" type="text" id="amount" class="form-control" PlaceHolder="Enter Amount" onpaste="return false" onkeypress="return isNumberKey(this, event);" autocomplete="off" />
                                    <span id="ContentPlaceHolder1_RequiredFieldValidatorAmount" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Amount</span>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="txtVoucherNo" class="col-sm-4 control-label">Narration (if any)</label>
                                <div class="col-sm-8">
                                    <textarea name="narration" rows="2" cols="20" id="narration" class="form-control">
</textarea>
                                    <span id="ContentPlaceHolder1_RequiredFieldValidator1" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Narration</span>

                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="box-footer">
                        <div class="row col-md-12">
                            
                            
                            <input  type="submit" name="save" value="Save"  id="save" class="btn btn-success pull-right margin-r-5" >
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
                             
                                 <tr style="color:White;background-color:#008385;">
                                    <th scope="col">ID</th>
                                    <th scope="col">BRANCH.</th>
                                    <th scope="col">TXN DATE</th>
                                    <th scope="col">SELECT TYPE</th>
                                    <th scope="col">DIRECT TRANSFER</th>
                                    <th scope="col">SELECT LEDGER</th>
                                    <th scope="col">AMOUNT </th>
                                    <th scope="col">NARRATION</th>
                                    
                                    
                                    
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
        
        <script src="dist/js/PaymentryEntryjs.js"></script>
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
var Page_Validators =  new Array(document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorddlLedger"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorDebitFrom"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorAmount"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidator1"));
//]]>
</script>

<script type="text/javascript">
//<![CDATA[
var ContentPlaceHolder1_RequiredFieldValidatorddlLedger = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorddlLedger"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorddlLedger");
ContentPlaceHolder1_RequiredFieldValidatorddlLedger.controltovalidate = "ContentPlaceHolder1_ddlLedger";
ContentPlaceHolder1_RequiredFieldValidatorddlLedger.focusOnError = "t";
ContentPlaceHolder1_RequiredFieldValidatorddlLedger.errormessage = "Select Ledger";
ContentPlaceHolder1_RequiredFieldValidatorddlLedger.display = "Dynamic";
ContentPlaceHolder1_RequiredFieldValidatorddlLedger.validationGroup = "B";
ContentPlaceHolder1_RequiredFieldValidatorddlLedger.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredFieldValidatorddlLedger.initialvalue = "";
var ContentPlaceHolder1_RequiredFieldValidatorDebitFrom = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorDebitFrom"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorDebitFrom");
ContentPlaceHolder1_RequiredFieldValidatorDebitFrom.controltovalidate = "ContentPlaceHolder1_ddlDebitFrom";
ContentPlaceHolder1_RequiredFieldValidatorDebitFrom.focusOnError = "t";
ContentPlaceHolder1_RequiredFieldValidatorDebitFrom.errormessage = "Select Debit From";
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
        
document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorddlLedger').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorddlLedger'));
}

document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorDebitFrom').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorDebitFrom'));
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
</body>

<!-- Dk/Admin/PaymentVoucher.aspx EDB D 09:27:16 GMT -->
</html>
