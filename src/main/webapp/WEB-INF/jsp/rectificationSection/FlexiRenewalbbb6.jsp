<jsp:include page="../header.jsp" />
<body onload="getAllPolicyNumber1InTheDailyRenewalRectification()" class="skin-blue sidebar-mini" style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);" cz-shortcut-listen="true">
<!--     <form method="post" action="http://admin:eqfi%23123@eqfinidhi.eadmin.in/Admin/FlexiRenewal.aspx?IsModification=true" onsubmit="javascript:return WebForm_OnSubmit();" id="form1"> -->


        <div style="height: auto; min-height: 100%; border-radius: 30px; margin: 15px; background: url(dist/img/back.jpg);">
        
         <!-- Header Start-->
         <jsp:include page="../menu.jsp" />
         <!-- Header End -->
         <!-- Left side column. contains the logo and sidebar -->
         <!-- Aside Menu Start-->
         <jsp:include page="../asideMenu.jsp" />
         <!-- Aside Menu end -->

           
            <!-- Left side column. contains the logo and sidebar -->
            
            <script type="text/javascript">
//<![CDATA[
Sys.WebForms.PageRequestManager._initialize('ctl00$ScriptManager1', 'form1', [], [], [], 90, 'ctl00');
//]]>
</script>

            <!-- Content Wrapper. Contains page content -->
            <div class="content-wrapper" style="min-height: 1105.75px;">
                

                 
    <section class="content-header">
        <h1 id="ContentPlaceHolder1_IdHeader">Delete Flexi Deposit/Withdrawal</h1>
        <ol class="breadcrumb">
            <li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
            <li><a href="#">Dashboard</a></li>
            <li class="active">Deposit/Withdrawal</li>
        </ol>
    </section>
    <section class="content">
        <div class="row">
            <div class="col-md-10">
                <div class="box box-success">
                    <div class="box-header with-border">
                        <h3 class="box-title">Policy Details</h3>
                    </div>

                    <div class="box-body">
                        <div class="col-md-6">
                            <div class="form-group row">
                                <label class="col-sm-4 control-label">Txn Date<strong style="color: Red">*</strong></label>
                                <div class="col-sm-8">
                                    <div class="input-group date">
                                        <div class="input-group-addon">
                                            <i class="fa fa-calendar"></i>
                                        </div>
                                        <input name="ctl00$ContentPlaceHolder1$txtTDate" type="text"  id="ContentPlaceHolder1_txtTDate" class="form-control" data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;" data-mask="" />
                                    </div>

                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-4 control-label">Branch Name<strong style="color: Red">*</strong></label>
                                <div class="col-sm-8">
                                    <select name="ctl00$ContentPlaceHolder1$ddlBranchName" id="ContentPlaceHolder1_ddlBranchName" class="form-control select2" style="width: 100%;">
	<option value="001">Main Office - 001</option>

</select>
                                    <span id="ContentPlaceHolder1_RequiredFieldValidatorddlBranchName" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Select Branch Name</span>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-4 control-label">Select Policy No.<strong style="color: Red">*</strong></label>
                                <div class="col-sm-8">
                                    <select onchange="investmentSectionDailyFlexiTransactionDelete()" name="searchbyPolicyNo"  id="searchbyPolicyNo" class="form-control select2" style="width: 100%;">
	<option selected="selected" value=""></option>

</select>
                                    <span id="ContentPlaceHolder1_RequiredFieldValidatorAccountNo" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Select Account No.</span>
                                </div>
                            </div>
                             <div class="form-group row">
                                <label class="col-sm-4 control-label">Emp. Code<strong style="color: Red">*</strong></label>
                                <div class="col-sm-8">
                                    <input name="ctl00$ContentPlaceHolder1$txtEmpCode" type="text" readonly="readonly" id="ContentPlaceHolder1_txtEmpCode" class="form-control" />
                                    <span id="ContentPlaceHolder1_RequiredFieldValidator3" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Emp. Code</span>
                                </div>
                            </div>


                        </div>
                        <div class="col-md-6">

                            <div class="form-group row">
                                <label class="col-sm-4 control-label">Member Code<strong style="color: Red">*</strong></label>
                                <div class="col-sm-8">
                                    <input name="ctl00$ContentPlaceHolder1$txtMemberCode" type="text" readonly="readonly" id="ContentPlaceHolder1_txtMemberCode" class="form-control" Placeholder="Enter Member Code" />
                                    <span id="ContentPlaceHolder1_RequiredFieldValidatorMembercode" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Member Code</span>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-4 control-label">Name<strong style="color: Red">*</strong></label>
                                <div class="col-sm-8">
                                    <input name="ctl00$ContentPlaceHolder1$txtACHolderName" type="text" readonly="readonly" id="ContentPlaceHolder1_txtACHolderName" class="form-control" Placeholder="Enter A/C Holder Name" />
                                    <span id="ContentPlaceHolder1_RequiredFieldValidator1" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter A/C Holder Name</span>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-4 control-label">Mobile Number<strong style="color: Red">*</strong></label>
                                <div class="col-sm-8">
                                    <input name="ctl00$ContentPlaceHolder1$txtMobile" type="text" readonly="readonly" id="ContentPlaceHolder1_txtMobile" class="form-control" Placeholder="Enter Mobile Number" />
                                    <span id="ContentPlaceHolder1_RequiredFieldValidatorMobilenumber" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Mobile Number</span>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-4 control-label">Plan Code<strong style="color: Red">*</strong></label>
                                <div class="col-sm-8">
                                    <input name="ctl00$ContentPlaceHolder1$txtPlanCode" type="text" readonly="readonly" id="ContentPlaceHolder1_txtPlanCode" class="form-control" Placeholder="Enter Plan Code" />
                                    <span id="ContentPlaceHolder1_RequiredFieldValidator2" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Plan Code</span>
                                </div>
                            </div>
                        </div>

                    </div>

                </div>


                <div class="box box-success">
                    <div class="box-header with-border">
                        <h3 class="box-title">Payment Details</h3>
                    </div>

                    <div class="box-body">
                        <div class="col-md-6">

                            <div class="form-group row">
                                <label class="col-sm-4 control-label">Plan Balance <strong style="color: Red">*</strong></label>
                                <div class="col-sm-8">
                                    <input name="ctl00$ContentPlaceHolder1$txtBalance" type="text" readonly="readonly" id="ContentPlaceHolder1_txtBalance" class="form-control" />
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="txtTransactionFor" class="col-sm-4 control-label">Transaction For</label>
                                <div class="col-sm-8">
                                    <input name="ctl00$ContentPlaceHolder1$txtTransactionFor" type="text" id="ContentPlaceHolder1_txtTransactionFor" class="form-control" Placeholder="Enter Transaction For" />

                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="txtRemarks" class="col-sm-4 control-label">Remarks </label>
                                <div class="col-sm-8">
                                    <input name="ctl00$ContentPlaceHolder1$txtRemarks" type="text" id="ContentPlaceHolder1_txtRemarks" class="form-control" Placeholder="Enter Remarks" />

                                </div>
                            </div>
                            
                            


                        </div>
                        <div class="col-md-6">
                            <div class="form-group row">
                                <label for="ddlTransactionType" class="col-sm-4 control-label">Txn. Type<strong style="color: Red">*</strong></label>
                                <div class="col-sm-8">
                                    <select name="ctl00$ContentPlaceHolder1$ddlTransactionType" id="ContentPlaceHolder1_ddlTransactionType" class="form-control" style="width: 100%;">
	<option value="Deposit">Deposit</option>
	<option value="Withdrawal">Withdrawal</option>

</select>

                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="txtAmount" class="col-sm-4 control-label">Amount <strong style="color: Red">*</strong></label>
                                <div class="col-sm-8">
                                    <input name="ctl00$ContentPlaceHolder1$txtAmount" type="text" id="ContentPlaceHolder1_txtAmount" class="form-control" Placeholder="Enter Amount" onpaste="return false" onkeypress="return isNumberOnlyKey(this, event);" autocomplete="off" />
                                    <span id="ContentPlaceHolder1_RequiredFieldValidatorAmount" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter  Amount</span>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="drpPaymentBy" class="col-sm-4 control-label">Payment By <strong style="color: Red">*</strong></label>
                                <div class="col-sm-8">
                                    <select name="ctl00$ContentPlaceHolder1$ddlPaymode"  id="ContentPlaceHolder1_ddlPaymode" class="form-control" style="width: 100%;">
	<option selected="selected" value="Cash">Cash</option>
	<option value="Cheque">Cheque</option>
	<option value="Online">Online</option>
	<option value="NEFT">NEFT</option>
	<option value="SBAccount">SBAccount</option>

</select>
                                </div>
                            </div>
                            
                            
                            

                        </div>

                    </div>

                    <div class="box-footer">
                        <div class="row col-md-12">
                            <input type="submit" name="ctl00$ContentPlaceHolder1$btnDelete" value="Delete Last Entry" onclick="softdeleteintegrationforFlexiTransactionDelete();" id="ContentPlaceHolder1_btnDelete" class="btn btn-danger pull-right" />
                            
                             
                        </div>
                    </div>
                </div>

                <div class="box box-success" style="box-shadow: none; height: 500px; overflow: auto !important;">
                    <div class="box-body">
                        <div class="clearfix margin-bottom-10"></div>



                        <div>

</div>
                    </div>

                </div>
            </div>

            <div class="col-md-2">
                <div class="box box-success">
                    <div class="box-header with-border">
                        <h3 class="box-title">Photo </h3>

                    </div>

                    <div class="box-body">

                        <div class="col-md-3">
                            <div class="form-group">
                                <div class="text-center">
                                    <a class="imgApp" href='dist/img/photo.jpg' data-lightbox="example-set">
                                        <img id="preview"
                                       class="profile-user-img" 
                                       style="height: 70px; width: 110px;" />
                                              <input type="file"  name="filetag" id="filetag" /></a>
                                </div>
                            </div>
                        </div>


                    </div>

                </div>


                <div class="box box-success">
                    <div class="box-header with-border">
                        <h3 class="box-title">Signature </h3>

                    </div>

                    <div class="box-body">

                        <div class="col-md-3">
                            <div class="form-group">
                                <div class="text-center">
                                    <a class="imgSig" href='dist/img/sign.jpg' data-lightbox="example-set">
                                      <img id="secondpreview"
                                       class="profile-user-img" 
                                       style="height: 70px; width: 115px;" />
                                       <input type="file"  name="secondfiletag" id="secondfiletag" /></a>
                                </div>
                            </div>
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
        <script src="dist/js/Rectification.js"></script>
        <!-- Select2 -->
        <script src="bower_components/select2/dist/js/select2.full.min.js"></script>
        
        <script>

      var fileTag = document.getElementById("filetag"),
          preview = document.getElementById("preview"),
          secondfiletag = document.getElementById("secondfiletag"),
          secondpreview = document.getElementById("secondpreview");
          
      fileTag.addEventListener("change", function() {
        changeImage(this);
      });
      
      secondfiletag.addEventListener("change", function() {
          changeImage2(this);
        });
      
      
      function changeImage(input) {
        var reader;

        if (input.files && input.files[0]) {
          reader = new FileReader();

          reader.onload = function(e) {
            preview.setAttribute('src', e.target.result);
          }

          reader.readAsDataURL(input.files[0]);
        }
      }
      
      function changeImage2(input) {
          var reader;

          if (input.files && input.files[0]) {
            reader = new FileReader();

            reader.onload = function(e) {
            	secondpreview.setAttribute('src', e.target.result);
            }

            reader.readAsDataURL(input.files[0]);
          }
        }
      
      </script>
        
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
var Page_Validators =  new Array(document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorddlBranchName"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorAccountNo"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidator3"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorMembercode"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidator1"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorMobilenumber"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidator2"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorAmount"));
//]]>
</script>

<script type="text/javascript">
//<![CDATA[
var ContentPlaceHolder1_RequiredFieldValidatorddlBranchName = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorddlBranchName"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorddlBranchName");
ContentPlaceHolder1_RequiredFieldValidatorddlBranchName.controltovalidate = "ContentPlaceHolder1_ddlBranchName";
ContentPlaceHolder1_RequiredFieldValidatorddlBranchName.focusOnError = "t";
ContentPlaceHolder1_RequiredFieldValidatorddlBranchName.errormessage = "Select Branch Name";
ContentPlaceHolder1_RequiredFieldValidatorddlBranchName.display = "Dynamic";
ContentPlaceHolder1_RequiredFieldValidatorddlBranchName.validationGroup = "A";
ContentPlaceHolder1_RequiredFieldValidatorddlBranchName.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredFieldValidatorddlBranchName.initialvalue = "--Select--";
var ContentPlaceHolder1_RequiredFieldValidatorAccountNo = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorAccountNo"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorAccountNo");
ContentPlaceHolder1_RequiredFieldValidatorAccountNo.controltovalidate = "ContentPlaceHolder1_ddlSelectAccountNo";
ContentPlaceHolder1_RequiredFieldValidatorAccountNo.focusOnError = "t";
ContentPlaceHolder1_RequiredFieldValidatorAccountNo.errormessage = "Select Account No.";
ContentPlaceHolder1_RequiredFieldValidatorAccountNo.display = "Dynamic";
ContentPlaceHolder1_RequiredFieldValidatorAccountNo.validationGroup = "A";
ContentPlaceHolder1_RequiredFieldValidatorAccountNo.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredFieldValidatorAccountNo.initialvalue = "";
var ContentPlaceHolder1_RequiredFieldValidator3 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator3"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidator3");
ContentPlaceHolder1_RequiredFieldValidator3.controltovalidate = "ContentPlaceHolder1_txtEmpCode";
ContentPlaceHolder1_RequiredFieldValidator3.focusOnError = "t";
ContentPlaceHolder1_RequiredFieldValidator3.errormessage = "Enter Emp. Code";
ContentPlaceHolder1_RequiredFieldValidator3.display = "Dynamic";
ContentPlaceHolder1_RequiredFieldValidator3.validationGroup = "A";
ContentPlaceHolder1_RequiredFieldValidator3.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredFieldValidator3.initialvalue = "";
var ContentPlaceHolder1_RequiredFieldValidatorMembercode = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorMembercode"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorMembercode");
ContentPlaceHolder1_RequiredFieldValidatorMembercode.controltovalidate = "ContentPlaceHolder1_txtMemberCode";
ContentPlaceHolder1_RequiredFieldValidatorMembercode.focusOnError = "t";
ContentPlaceHolder1_RequiredFieldValidatorMembercode.errormessage = "Enter Member Code";
ContentPlaceHolder1_RequiredFieldValidatorMembercode.display = "Dynamic";
ContentPlaceHolder1_RequiredFieldValidatorMembercode.validationGroup = "A";
ContentPlaceHolder1_RequiredFieldValidatorMembercode.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredFieldValidatorMembercode.initialvalue = "";
var ContentPlaceHolder1_RequiredFieldValidator1 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator1"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidator1");
ContentPlaceHolder1_RequiredFieldValidator1.controltovalidate = "ContentPlaceHolder1_txtACHolderName";
ContentPlaceHolder1_RequiredFieldValidator1.focusOnError = "t";
ContentPlaceHolder1_RequiredFieldValidator1.errormessage = "Enter A/C Holder Name";
ContentPlaceHolder1_RequiredFieldValidator1.display = "Dynamic";
ContentPlaceHolder1_RequiredFieldValidator1.validationGroup = "A";
ContentPlaceHolder1_RequiredFieldValidator1.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredFieldValidator1.initialvalue = "";
var ContentPlaceHolder1_RequiredFieldValidatorMobilenumber = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorMobilenumber"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorMobilenumber");
ContentPlaceHolder1_RequiredFieldValidatorMobilenumber.controltovalidate = "ContentPlaceHolder1_txtMobile";
ContentPlaceHolder1_RequiredFieldValidatorMobilenumber.focusOnError = "t";
ContentPlaceHolder1_RequiredFieldValidatorMobilenumber.errormessage = "Enter Mobile Number";
ContentPlaceHolder1_RequiredFieldValidatorMobilenumber.display = "Dynamic";
ContentPlaceHolder1_RequiredFieldValidatorMobilenumber.validationGroup = "A";
ContentPlaceHolder1_RequiredFieldValidatorMobilenumber.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredFieldValidatorMobilenumber.initialvalue = "";
var ContentPlaceHolder1_RequiredFieldValidator2 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator2"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidator2");
ContentPlaceHolder1_RequiredFieldValidator2.controltovalidate = "ContentPlaceHolder1_txtPlanCode";
ContentPlaceHolder1_RequiredFieldValidator2.focusOnError = "t";
ContentPlaceHolder1_RequiredFieldValidator2.errormessage = "Enter Plan Code";
ContentPlaceHolder1_RequiredFieldValidator2.display = "Dynamic";
ContentPlaceHolder1_RequiredFieldValidator2.validationGroup = "A";
ContentPlaceHolder1_RequiredFieldValidator2.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredFieldValidator2.initialvalue = "";
var ContentPlaceHolder1_RequiredFieldValidatorAmount = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorAmount"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorAmount");
ContentPlaceHolder1_RequiredFieldValidatorAmount.controltovalidate = "ContentPlaceHolder1_txtAmount";
ContentPlaceHolder1_RequiredFieldValidatorAmount.focusOnError = "t";
ContentPlaceHolder1_RequiredFieldValidatorAmount.errormessage = "Enter  Amount";
ContentPlaceHolder1_RequiredFieldValidatorAmount.display = "Dynamic";
ContentPlaceHolder1_RequiredFieldValidatorAmount.validationGroup = "A";
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
        
document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorddlBranchName').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorddlBranchName'));
}

document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorAccountNo').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorAccountNo'));
}

document.getElementById('ContentPlaceHolder1_RequiredFieldValidator3').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator3'));
}

document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorMembercode').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorMembercode'));
}

document.getElementById('ContentPlaceHolder1_RequiredFieldValidator1').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator1'));
}

document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorMobilenumber').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorMobilenumber'));
}

document.getElementById('ContentPlaceHolder1_RequiredFieldValidator2').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator2'));
}

document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorAmount').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorAmount'));
}
//]]>
</script>
<!-- </form> -->
</body>

<!-- Dk/Admin/FlexiRenewal.aspx?IsModification=true EDB D 09:27:15 GMT -->
</html>
