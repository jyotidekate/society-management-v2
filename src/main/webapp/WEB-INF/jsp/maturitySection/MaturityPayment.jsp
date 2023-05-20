
<jsp:include page="../header.jsp" />

 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>

<!-- Sweet alert -->
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

</head>
<body class="skin-blue sidebar-mini" style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);" cz-shortcut-listen="true">
<!--     <form method="post" action="http://admin:eqfi%23123@eqfinidhi.eadmin.in/Admin/MaturityPayment.aspx" onsubmit="javascript:return WebForm_OnSubmit();" id="form1"> -->

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
        <h1 id="ContentPlaceHolder1_IdHeader">Maturity Payment</h1>
        <ol class="breadcrumb">
            <li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
            <li><a href="#">Dashboard</a></li>
            <li class="active">Maturity Payment</li>
        </ol>
    </section>
    <section class="content">
        <div class="row">
            <div class="col-md-12">
                <div class="box box-success">
                    <div class="box-header with-border">
                        <h3 class="box-title">Search Box</h3>
                        
                    </div>
                    <div class="box-body">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label>Policy No. :</label>
                                <input name="policyNo" type="text" onkeyup="SearchTHePolicyNumber();"  id="policyNo" class="form-control" autocomplete="off" />
                                <span id="policyNoMsg" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Policy No</span>
                                      
                            </div>
                        </div>
<button type="button" name="btnupdate" value="Update"  onclick="UpdatetheMaturitySection();" id="btnupdate"  class="btn btn-success pull-right margin-r-5">Update</button>
                        
                        <div class="clearfix margin-bottom-10"></div>
                    </div>
                </div>



            </div>
        </div>

        <div class="row">
            <div class="col-md-12">
                <div class="box box-success">
                    <div class="box-header with-border">
                        <h3 class="box-title">Policy Details</h3>
                    </div>
                    <div class="box-body">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Policy No. :</label>
                                <input name="policyNo1" type="text" readonly="readonly" id="policyNo1" class="form-control" />
                                 <span id="ContentPlaceHolder1_RequiredFieldValidatorEnterPolicyNo" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Policy No</span>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Applicant Name :</label>
                                <input name="ApplicantName" type="text" readonly="readonly" id="ApplicantName" class="form-control" />

                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Plan Name :</label>
                                <input name="planName" type="text" readonly="readonly" id="planName" class="form-control" />

                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Plan Code :</label>
                                <input name="planCode" type="text" readonly="readonly" id="planCode" class="form-control" />

                            </div>
                        </div>

                        <div class="clearfix margin-bottom-10"></div>

                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Term :</label>
                                <input name="term" type="text" readonly="readonly" id="term" class="form-control" />

                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Policy Amount :</label>
                                <input name="policyAmount" type="text" readonly="readonly" id="policyAmount" class="form-control" />

                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Actual Maturity :</label>
                                <input name="actualMaturity" type="text" readonly="readonly" id="actualMaturity" class="form-control" />

                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Maturity Date :</label>
                                <input name="MaturityDate" type="text" readonly="readonly" id="MaturityDate" class="form-control" />

                            </div>
                        </div>

                        <div class="clearfix margin-bottom-10"></div>

                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Sys. Payable :</label>
                                <input name="sysPayable" type="text" readonly="readonly" id="sysPayable" class="form-control" style="color:Red;font-weight:bold;" />

                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Deduction (-) :</label>
                                <input name="deduction" type="text" readonly="readonly" id="deduction" class="form-control" onpaste="return false" onkeypress="return isNumberKey(this, event);" autocomplete="off" />

                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Adjustment (+) :</label>
                                <input name="adjusment" type="text" readonly="readonly" id="adjusment" class="form-control" onpaste="return false" onkeypress="return isNumberKey(this, event);" autocomplete="off" />

                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Net Payable :</label>
                                <input name="netPayable" type="text" readonly="readonly" id="netPayable" class="form-control" style="color:Green;font-weight:bold;" />

                            </div>
                        </div>
                        <div class="clearfix margin-bottom-10"></div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Approval Branch :</label>
                                <input name="approvalBranch" type="text" readonly="readonly" id="approvalBranch" class="form-control" />

                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Approval Date :</label>

                                <div class="input-group date">
                                    <div class="input-group-addon">
                                        <i class="fa fa-calendar"></i>
                                    </div>
                                    <input name="approvalDate" type="text" readonly="readonly" id="approvalDate" class="form-control" data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;" data-mask="" />
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Approve Remarks :</label>
                                <input name="approveRemarks" type="text" readonly="readonly" id="approveRemarks" class="form-control" />

                            </div>
                        </div>
                         <div class="col-md-3">
                            <div class="form-group">
                                <label>Approve User :</label>
                                <input name="approveUser" type="text" readonly="readonly" id="approveUser" class="form-control" />

                            </div>
                        </div>
                    </div>
                </div>
            </div>

           
        </div>

        <div class="row">
            <div class="col-md-12">
                <div class="box box-success">
                    <div class="box-header with-border">
                        <h3 class="box-title">Payment Details</h3>
                    </div>
                    <div class="box-body">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Payment Date :</label>

                                <div class="input-group date">
                                    <div class="input-group-addon">
                                        <i class="fa fa-calendar"></i>
                                    </div>
                                    <input name="payementDate" type="date"  id="payementDate" class="form-control" data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;" data-mask="" />
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Pay Branch :</label>
                                <select name="payBranch" id="payBranch" class="form-control" style="width: 100%;">
      <option value="">Select</option>                          
	<option value="Main Office - 001">Main Office - 001</option>
	<option value="Main Office - 002">Main Office - 002</option>
	<option value="Main Office - 003">Main Office - 003</option>

</select>

                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Payment By <strong style="color: Red">*</strong></label>
                                <select name="paymentBy"  id="paymentBy" class="form-control" style="width: 100%;">
    <option value="">Select</option>                            
	<option value="Cash">Cash</option>
	<option value="Cheque">Cheque</option>
	<option value="Online">Online</option>
	<option value="NEFT">NEFT</option>
	<option value="SBAccount">SBAccount</option>

</select>

                            </div>
                        </div>
                         <div class="col-md-3">
                            <div class="form-group">
                                <label>Pay Remarks :</label>
                                <input name="payRemarks" type="text" id="payRemarks" class="form-control" />

                            </div>
                        </div>

                        <div class="clearfix margin-bottom-10"></div>
                        
                        
                        <div class="col-md-3">
                            
                        </div>
                        
                        
                        





                        <div class="clearfix margin-bottom-10"></div>

                        <div class="text-center">
                            
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
        <!--  Maturity Account  -->
		<script src="dist/js/MaturitySectionSearch.js"></script>
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
var Page_Validators =  new Array(document.getElementById("ContentPlaceHolder1_RequiredFieldValidator1"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorEnterPolicyNo"));
//]]>
</script>

<script type="text/javascript">
//<![CDATA[
var ContentPlaceHolder1_RequiredFieldValidator1 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator1"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidator1");
ContentPlaceHolder1_RequiredFieldValidator1.controltovalidate = "ContentPlaceHolder1_txtSearchPolicy";
ContentPlaceHolder1_RequiredFieldValidator1.focusOnError = "t";
ContentPlaceHolder1_RequiredFieldValidator1.errormessage = "Enter Policy No";
ContentPlaceHolder1_RequiredFieldValidator1.display = "Dynamic";
ContentPlaceHolder1_RequiredFieldValidator1.validationGroup = "A";
ContentPlaceHolder1_RequiredFieldValidator1.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredFieldValidator1.initialvalue = "";
var ContentPlaceHolder1_RequiredFieldValidatorEnterPolicyNo = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorEnterPolicyNo"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorEnterPolicyNo");
ContentPlaceHolder1_RequiredFieldValidatorEnterPolicyNo.controltovalidate = "ContentPlaceHolder1_txtPolicyNo";
ContentPlaceHolder1_RequiredFieldValidatorEnterPolicyNo.focusOnError = "t";
ContentPlaceHolder1_RequiredFieldValidatorEnterPolicyNo.errormessage = "Enter Policy No";
ContentPlaceHolder1_RequiredFieldValidatorEnterPolicyNo.display = "Dynamic";
ContentPlaceHolder1_RequiredFieldValidatorEnterPolicyNo.validationGroup = "A";
ContentPlaceHolder1_RequiredFieldValidatorEnterPolicyNo.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredFieldValidatorEnterPolicyNo.initialvalue = "";
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
        
document.getElementById('ContentPlaceHolder1_RequiredFieldValidator1').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator1'));
}

document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorEnterPolicyNo').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorEnterPolicyNo'));
}
//]]>
</script>
</form>
</body>

<!-- Dk/Admin/MaturityPayment.aspx EDB D 09:27:20 GMT -->
</html>
