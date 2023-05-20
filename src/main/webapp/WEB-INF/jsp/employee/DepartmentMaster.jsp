<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">


<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<head><meta http-equiv="content-type" content="text/html;charset=utf-8" /><meta charset="utf-8" /><meta http-equiv="X-UA-Compatible" content="IE=edge" /><title>
	EQFI NIDHI LIMITED
</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport" />
    <!-- Bootstrap 3.3.7 -->
    <link rel="stylesheet" href="bower_components/bootstrap/dist/css/bootstrap.min.css" />
    <!-- Font Awesome -->
    <link rel="stylesheet" href="bower_components/font-awesome/css/font-awesome.min.css" />
    <!-- Ionicons -->
    <link rel="stylesheet" href="bower_components/Ionicons/css/ionicons.min.css" />
    <!-- jvectormap -->
    <link rel="stylesheet" href="bower_components/jvectormap/jquery-jvectormap.css" />
    <!-- Theme style -->
    <link rel="stylesheet" href="dist/css/AdminLTE.min.css" />

    <!-- daterange picker -->
    <link rel="stylesheet" href="bower_components/bootstrap-daterangepicker/daterangepicker.css" />
    <!-- bootstrap datepicker -->
    <link rel="stylesheet" href="bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css" />
    <!-- iCheck for checkboxes and radio inputs -->
    <link rel="stylesheet" href="plugins/iCheck/all.css" />

    <!-- Select2 -->
    <link rel="stylesheet" href="bower_components/select2/dist/css/select2.min.css" />
    <!-- Theme style -->
    <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="dist/css/skins/_all-skins.min.css" /><link rel="stylesheet" href="dist/css/dashboard.css" /><link rel="shortcut icon" type="image/x-icon" href="../images/favicon.html" /><link rel="stylesheet" href="dist/css/lightbox.min.css" /><link rel="stylesheet" href="dist/css/qr.css" />
    <!-- Google Font -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic" />

    <script type="text/javascript">
        function isNumberOnlyKey(txt, evt) {
            var charCode = (evt.which) ? evt.which : evt.keyCode;
            if (charCode > 31 && (charCode < 48 || charCode > 57)) {
                alert("Allow Only Numbers");
                return false;
            }
        }
    </script>
</head>
<body onload="fatchdepartmentdata()" class="skin-blue sidebar-mini" style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);" cz-shortcut-listen="true">
    
<div class="aspNetHidden">
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="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" />
</div>

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


<script src="../ScriptResource8794.js?d=pl0DaltFZ-nCqZWgxNAqTvBniAbIZw3Iz1bSYE7rwyGDxh1etqVx0WLbkkAE88KWETjjkMMzd-H0InR9BngAQbQfYcq-ENJYTXgawkPhXCZJsAGJSSC1KoJTErXiWh7tEcXp6rwjlayV_PcTh7M4M8rvifeWAlJsyUFxR9AUwO81&amp;t=5334fc78" type="text/javascript"></script>
<script src="../ScriptResourced8e7.js?d=uSqqCHFE8MMix38uq8GgGybxYtpH6dYwFMSYHjhHytO5jH1yPS2uWYjdlBZZSuu9t5CBFsRRRI6lEwvTTYPraDdistIqSYPDLCP6VorXyjIpQTji_JKtdkLVZLH_mYVZvHI4YJqUtS662n__8I2atI54HJ4NkBUVIeVAPnAuCTI1&amp;t=2a797f5c" type="text/javascript"></script>
<script src="../ScriptResourceb4d6.js?d=KzKHuQVzCI25ZiHK9SA2HZdRjaymXCFpWiizBRMk8lvEiiZsQoLPz0ARKvRH6PmSA3Tt96qvSLsIOMPBDLx_VBsyISpzBQoSBrYr5izAbtKSWsBVrS0pYd7veJqhmzHYrhKgOEJXiOei6ZrcxpAdqnYxCXhjNIW9HOvs7dp7o0kgl18uTZv1SVlBuafpWq2x0&amp;t=2a797f5c" type="text/javascript"></script>
<script type="text/javascript">
//<![CDATA[
function WebForm_OnSubmit() {
if (typeof(ValidatorOnSubmit) == "function" && ValidatorOnSubmit() == false) return false;
return true;
}

function clearInput(){
    var getValue= document.getElementById("department");
      if (getValue.value !="") {
          getValue.value = "";
      }
}
//]]>
</script>

<div class="aspNetHidden">

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="CE6C9336" />
	<input type="hidden" name="__VIEWSTATEENCRYPTED" id="__VIEWSTATEENCRYPTED" value="" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="+nHIESE5k3tBRud37S+DVbANjdOTE7ccmykudyVg+EkAUyKp8NP88zCeBkVr4wFLNHZkcx+DTSbY054qQEZ5fLScCWrpk69rHFQnntltzscgvzy7+iQ2ifwaYkYZwvhBztJCbR0AFeZYaiFbRdB8KXvcToMLC/t/z7oqNyyVBnm9pumaUctDJq39QXYmO6GvjJk73J2LxEly1F+mNBdOVbwHHyI+MbpVouHTL0UWpv//4d9uXLNr5lgwYt9Q3fG7ZWg9LxRj+62dlTag5t3264XrJrWku8fdW9ZYlLzk9HhokFKmpWBAsQoLRZdc/cStFMRhfFFg43zHCYW2JBxc5kp71Ixzs53jti7yPMdvPXCjeOpsMbYdOwpNXDtD5oOLiNX0SYe58MCnPD/0LNvR9DQDzWPtrW23U4m9TBC+O6p5tw+APp+Njj/ccRAPbzCfpzI6MBNkJkr2NnYHpvo+Jtb0oTnlFGWqqQEz90ahcDsU0Zd99Y5OvdJn3upafZlm" />
</div>

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
        <h1 id="ContentPlaceHolder1_IdHeader">Add Department</h1>
        <ol class="breadcrumb">
            <li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
            <li><a href="#">Dashboard</a></li>
            <li class="active">Add Department</li>
        </ol>
    </section>
    <section class="content">
        <div class="row">
        
        <form method="post" action="DepartmentMaster123" modelAttribute="departmentMaster" id="form1">
            <div class="col-md-5">
                <div class="box box-success">
                    <div class="box-header with-border">
                        <h3 class="box-title">Add Department Master </h3>
                    </div>

                    <div class="box-body">
                        <div class="col-md-12">
                            
                            <div class="form-group row">
                                <label class="col-sm-4 control-label">Department Name <strong style="color: Red">*</strong></label>
                                <div class="col-sm-8">
                                    <input name="department" type="text" id="department" class="form-control" />
                                    <span id="ContentPlaceHolder1_RequiredtxtDepartmentName" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Department Name</span>
                                </div>
                            </div>
                           
                        </div>
                    </div>
                    <div class="box-footer">
                    
                        <div class="row col-md-12">
                            <input type="button" name="ctl00$ContentPlaceHolder1$btnClear" value="Clear" id="ContentPlaceHolder1_btnClear" class="btn btn-info pull-right" onclick= "clearInput()" />
                            <input type="submit" name="ctl00$ContentPlaceHolder1$btnSave" value="Save"  id="ContentPlaceHolder1_btnSave" class="btn btn-success pull-right margin-r-5" /> 
 <!--                                 <button type="submit" name="ctl00$ContentPlaceHolder1$btnsave" value="Save" id="ContentPlaceHolder1_btnsave" class="btn btn-info pull-right">Save</button>   -->
                        </div>
                    </div>

                </div>
            </div>
            </form>
            <div class="col-md-7">
                <div class="box box-success">

                    <div class="box-body">
                        <div>
	<table cellspacing="0" cellpadding="3" rules="all" 
                              class="display nowrap table table-hover table-striped table-bordered" 
                              border="1"  style="width:100%;border-collapse:collapse;">
                                 <caption>
                                   Department List
                                    
                                  
                                 </caption>
                                 <tr style="color:White;background-color:#008385;">
                                   <th scope="col">S/N</th>
                                    <th scope="col">Department Code</th>
                                    <th scope="col">Department Name</th>
                                    
                                 </tr>
                                  <tbody id="fatchdepartmenttable">
                                    
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
        
        <script src="dist/js/EmpolyeeSection.js"></script>
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
var Page_Validators =  new Array(document.getElementById("ContentPlaceHolder1_RequiredtxtDepartmentName"));
//]]>
</script>

<script type="text/javascript">
//<![CDATA[
var ContentPlaceHolder1_RequiredtxtDepartmentName = document.all ? document.all["ContentPlaceHolder1_RequiredtxtDepartmentName"] : document.getElementById("ContentPlaceHolder1_RequiredtxtDepartmentName");
ContentPlaceHolder1_RequiredtxtDepartmentName.controltovalidate = "ContentPlaceHolder1_txtDepartmentName";
ContentPlaceHolder1_RequiredtxtDepartmentName.focusOnError = "t";
ContentPlaceHolder1_RequiredtxtDepartmentName.errormessage = "Enter Department Name";
ContentPlaceHolder1_RequiredtxtDepartmentName.display = "Dynamic";
ContentPlaceHolder1_RequiredtxtDepartmentName.validationGroup = "A";
ContentPlaceHolder1_RequiredtxtDepartmentName.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredtxtDepartmentName.initialvalue = "";
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
        
document.getElementById('ContentPlaceHolder1_RequiredtxtDepartmentName').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredtxtDepartmentName'));
}
//]]>
</script>

</body>

</html>
            