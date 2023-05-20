

<!DOCTYPE html>

<jsp:include page="../header.jsp" />

 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>

<!-- Sweet alert -->
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<body class="skin-blue sidebar-mini" style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);" cz-shortcut-listen="true">
<!--     <form method="post" action="http://admin:eqfi%23123@eqfinidhi.eadmin.in/Admin/MaturityApplication.aspx" onsubmit="javascript:return WebForm_OnSubmit();" id="form1"> -->

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
        <h1 id="ContentPlaceHolder1_IdHeader">Maturity Application</h1>
        <ol class="breadcrumb">
            <li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
            <li><a href="#">Dashboard</a></li>
            <li class="active">Maturity Application</li>
        </ol>
    </section>
    <section class="content">
        <div class="row">
            <div class="col-xs-12">
                <div class="box box-success">
                    <div class="box-header with-border">
                        <h3 class="box-title">Search Box</h3>
                    </div>
                    <div class="box-body">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Policy No. :</label>
                                <select name="policyNo" onchange="SearchThroughPolicyNumber();" id="policyNo" class="form-control select2" style="width: 100%;">
        <option  value="21">Select</option>                        
	<option  value="152">152</option>

</select>
                                <span id="policyNoMsg" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Select Policy Number</span>
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="form-group">
                                <label>Member Name :</label>
                                <input name="memberName" type="text" readonly="readonly" id="memberName" class="form-control" Placeholder="Enter Member Name" autocomplete="off" />
                                <span id="memberNameMsg" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Member Name</span>
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="form-group">
                                <label>Policy Date:</label>
                                <div class="input-group date">
                                    <div class="input-group-addon">
                                        <i class="fa fa-calendar"></i>
                                    </div>
                                    <input name="policyDate" type="text" readonly="readonly" id="policyDate" class="form-control" data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;" data-mask="" />
                                </div>
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="form-group">
                                <label>Application Date :</label>
                                <div class="input-group date">
                                    <div class="input-group-addon">
                                        <i class="fa fa-calendar"></i>
                                    </div>
                                    <input name="applicationDate" type="date" value="01/08/2022" id="applicationDate" class="form-control" data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;" data-mask="" />
                                </div>
                                <span id="applicationDateMsg" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Application Date</span>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Remarks :</label>
                                <input name="remarks" type="text" id="remarks" class="form-control" Placeholder="Enter Remarks" autocomplete="off" />
                                <span id="remarksMsg" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Remarks</span>
                            </div>
                        </div>
                        <div class="clearfix margin-bottom-10"></div>
                        <div class="text-center">
                            <input  onclick="SearchMaturityAppplicationFindAll();" type="submit" name="ctl00$ContentPlaceHolder1$btnViewPolicyDetail" value=" View Policy Detail" id="ContentPlaceHolder1_btnViewPolicyDetail" class="btn btn-warning pull-right" />
                            <input  onclick="UpdatetheMaturityApllication();"  type="submit" name="ctl00$ContentPlaceHolder1$btnAdd" value="Add" id="ContentPlaceHolder1_btnAdd" class="btn btn-success pull-right margin-r-5" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-12">
                <div class="box box-success">
                    <div class="box-body">
                        <div class="clearfix margin-bottom-10"></div>
                        <div>
                        
                         <table cellspacing="0" cellpadding="3" rules="all" 
                              class="display nowrap table table-hover table-striped table-bordered" 
                              border="1"  style="width:100%;border-collapse:collapse;">
                                 <caption>
                                   Maturity Application
                                    
                                  
                                 </caption>
                                 <tr style="color:White;background-color:#008385;">
                                    <th scope="col">Id</th>
                                    <th scope="col">Member ID</th>
                                    <th scope="col">Member Name</th>
                                    <th scope="col">Policy Date</th>
                                    <th scope="col">Application Date</th>
                                    <th scope="col">Remarks</th>
                                    
                                    
                                 </tr>
                                  <tbody id="tableBody">
                                    
      							  </tbody>
                              </table>
                        
                        

</div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-12">
                <div class="box box-success">
                    <div class="box-body">
                        <div class="clearfix margin-bottom-10"></div>
                        <div>

</div>
                    </div>
                    <div class="box-footer">
                        
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
var Page_Validators =  new Array(document.getElementById("ContentPlaceHolder1_RequiredFielddValidatorPolicyNumber"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorMemberName"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorApplicationDate"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorRemarks"));
//]]>
</script>

<script type="text/javascript">
//<![CDATA[
var ContentPlaceHolder1_RequiredFielddValidatorPolicyNumber = document.all ? document.all["ContentPlaceHolder1_RequiredFielddValidatorPolicyNumber"] : document.getElementById("ContentPlaceHolder1_RequiredFielddValidatorPolicyNumber");
ContentPlaceHolder1_RequiredFielddValidatorPolicyNumber.controltovalidate = "ContentPlaceHolder1_ddlPolicyNumber";
ContentPlaceHolder1_RequiredFielddValidatorPolicyNumber.focusOnError = "t";
ContentPlaceHolder1_RequiredFielddValidatorPolicyNumber.errormessage = "Select Policy Number";
ContentPlaceHolder1_RequiredFielddValidatorPolicyNumber.display = "Dynamic";
ContentPlaceHolder1_RequiredFielddValidatorPolicyNumber.validationGroup = "A";
ContentPlaceHolder1_RequiredFielddValidatorPolicyNumber.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredFielddValidatorPolicyNumber.initialvalue = "";
var ContentPlaceHolder1_RequiredFieldValidatorMemberName = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorMemberName"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorMemberName");
ContentPlaceHolder1_RequiredFieldValidatorMemberName.controltovalidate = "ContentPlaceHolder1_txtMemberName";
ContentPlaceHolder1_RequiredFieldValidatorMemberName.focusOnError = "t";
ContentPlaceHolder1_RequiredFieldValidatorMemberName.errormessage = "Enter Member Name";
ContentPlaceHolder1_RequiredFieldValidatorMemberName.display = "Dynamic";
ContentPlaceHolder1_RequiredFieldValidatorMemberName.validationGroup = "A";
ContentPlaceHolder1_RequiredFieldValidatorMemberName.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredFieldValidatorMemberName.initialvalue = "";
var ContentPlaceHolder1_RequiredFieldValidatorApplicationDate = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorApplicationDate"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorApplicationDate");
ContentPlaceHolder1_RequiredFieldValidatorApplicationDate.controltovalidate = "ContentPlaceHolder1_txtApplicationDate";
ContentPlaceHolder1_RequiredFieldValidatorApplicationDate.focusOnError = "t";
ContentPlaceHolder1_RequiredFieldValidatorApplicationDate.errormessage = "Enter Application Date";
ContentPlaceHolder1_RequiredFieldValidatorApplicationDate.display = "Dynamic";
ContentPlaceHolder1_RequiredFieldValidatorApplicationDate.validationGroup = "A";
ContentPlaceHolder1_RequiredFieldValidatorApplicationDate.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredFieldValidatorApplicationDate.initialvalue = "";
var ContentPlaceHolder1_RequiredFieldValidatorRemarks = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorRemarks"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorRemarks");
ContentPlaceHolder1_RequiredFieldValidatorRemarks.controltovalidate = "ContentPlaceHolder1_txtRemarks";
ContentPlaceHolder1_RequiredFieldValidatorRemarks.focusOnError = "t";
ContentPlaceHolder1_RequiredFieldValidatorRemarks.errormessage = "Enter Remarks";
ContentPlaceHolder1_RequiredFieldValidatorRemarks.display = "Dynamic";
ContentPlaceHolder1_RequiredFieldValidatorRemarks.validationGroup = "A";
ContentPlaceHolder1_RequiredFieldValidatorRemarks.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredFieldValidatorRemarks.initialvalue = "";
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
        
document.getElementById('ContentPlaceHolder1_RequiredFielddValidatorPolicyNumber').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFielddValidatorPolicyNumber'));
}

document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorMemberName').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorMemberName'));
}

document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorApplicationDate').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorApplicationDate'));
}

document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorRemarks').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorRemarks'));
}
//]]>
</script>
<!-- </form> -->
</body>

<!-- Dk/Admin/MaturityApplication.aspx EDB D 09:27:20 GMT -->
</html>
