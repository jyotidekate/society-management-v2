<jsp:include page="../header.jsp" />
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<body class="skin-blue sidebar-mini" style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);" cz-shortcut-listen="true">
<form method="get" modelAttribute="incentivepaymentmodel" action="incentivepayments" id="form2">


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
        <h1 id="ContentPlaceHolder1_IdHeader">Incentive Payment</h1>
        <ol class="breadcrumb">
            <li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
            <li><a href="#">Dashboard</a></li>
            <li class="active">Incentive Payment</li>
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
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Month Name :</label>
                                <select name="monthname" id="monthname" class="form-control" style="width: 100%;">
									<option value="All">All</option>
									<option value="January">January</option>
									<option value="February">February</option>
									<option value="March">March</option>
									<option value="April">April</option>
									<option value="May">May</option>
									<option value="June">June</option>
									<option value="July">July</option>
									<option value="August">August</option>
									<option value="September">September</option>
									<option value="October">October</option>
									<option value="November">November</option>
									<option value="December">December</option>
									
</select>
                            </div>

                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Code :</label>
                                <input name="code" type="text" id="code" class="form-control" />
                            </div>

                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label></label>
                                <!-- <a id="btnSearch" class="btn btn-success margin-20" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$btnSearch&#39;,&#39;&#39;)"><span class="fa fa-search"></span> SEARCH</a> -->
                            	<input type="submit" name="btnsearch" value="Search" id="btnsearch" class="btn btn-success margin-20" />
                            </div>

                        </div>
                        <div class="clearfix margin-bottom-10"></div>
                    </div>

                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="box box-success">
                    <div class="box-header with-border">
                        <h3 class="box-title">Incentive Details</h3>
                    </div>

                    <div class="box-body">
                        <div class="col-md-6">
                            <div class="form-group row">
                                <label for="txtBranch" class="col-sm-4 control-label">Name <strong style="color: Red">*</strong></label>
                                <div class="col-sm-8">
                                
                               		<c:forEach var = "row" items ="${list1}">
                                    <input name="name" type="text" id="name" value="${row.name}" class="form-control" PlaceHolder="Enter Name" />
                                    </c:forEach>
                                    
                                    <c:forEach var = "row" items ="${list2}">
                                    <input name="name" type="text" id="name" value="${row.name}" class="form-control" PlaceHolder="Enter Name" />
                                    </c:forEach>
                                    
                                    <span id="ContentPlaceHolder1_RequiredFieldValidatorBranch" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Name</span>
                               
                                </div>
                            </div>
                            
                            <div class="form-group row">
                                <label for="txtPosition" class="col-sm-4 control-label">Position <strong style="color: Red">*</strong></label>
                                <div class="col-sm-8">
                                
                                 	<c:forEach var = "row" items ="${list1}">
                                    <input name="position" type="text" id="position" value="${row.position }"  class="form-control" PlaceHolder="Enter Position" />
                                    </c:forEach>
                                    
                                    <c:forEach var = "row" items ="${list2}">
                                    <input name="position" type="text" id="position" value="${row.position }"  class="form-control" PlaceHolder="Enter Position" />
                                    </c:forEach>
                                    
                                    <span id="ContentPlaceHolder1_RequiredFieldValidatorPosition" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Position</span>
                              
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="txtNewBusiness" class="col-sm-4 control-label">Self Business <strong style="color: Red">*</strong></label>
                                <div class="col-sm-8">
                                
                                	<c:forEach var = "row" items ="${list1}">
                                    <input name="selfbusiness" type="text" id="selfbusiness" value="${row.selfbusiness }" class="form-control" PlaceHolder="Enter Self Business" />
                                    </c:forEach>
                                    
                                    <c:forEach var = "row" items ="${list2}">
                                    <input name="selfbusiness" type="text" id="selfbusiness" value="${row.selfbusiness }" class="form-control" PlaceHolder="Enter Self Business" />
                                    </c:forEach>
                                    
                                    <span id="ContentPlaceHolder1_RequiredFieldValidatorNewBusiness" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Self Business</span>
                                </div>
                            </div>
                            
                            <div class="form-group row">
                                <label for="txtOldBusiness" class="col-sm-4 control-label">Team Business<strong style="color: Red">*</strong></label>
                                <div class="col-sm-8">
                                
                                	<c:forEach var = "row" items ="${list1}">
                                    <input name="teambusiness" type="text" id="teambusiness" value="${row.teambusiness }" class="form-control" PlaceHolder="Enter Team Business" />
                                    </c:forEach>
                                    
                                    <c:forEach var = "row" items ="${list2}">
                                    <input name="teambusiness" type="text" id="teambusiness" value="${row.teambusiness }" class="form-control" PlaceHolder="Enter Team Business" />
                                    </c:forEach>
                                    
                                    <span id="ContentPlaceHolder1_RequiredFieldValidatorOldBusiness" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Team Business</span>
                                </div>
                            </div>
                            
                            <div class="form-group row">
                                <label for="txtTotalBusiness" class="col-sm-4 control-label">Total Business <strong style="color: Red">*</strong></label>
                                <div class="col-sm-8">
                                
                                	<c:forEach var = "row" items ="${list1}">
                                    <input name="totalbusiness" type="text" id="totalbusiness" value="${row.totalbusiness }" class="form-control" PlaceHolder="Enter Total Business" />
                                    </c:forEach>
                                    
                                    <c:forEach var = "row" items ="${list2}">
                                    <input name="totalbusiness" type="text" id="totalbusiness" value="${row.totalbusiness }" class="form-control" PlaceHolder="Enter Total Business" />
                                    </c:forEach>
                                    
                                    <span id="ContentPlaceHolder1_RequiredFieldValidatorTotalBusiness" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Total Business</span>
                                </div>
                            </div>
                            
                        </div>
                        
                        <div class="col-md-6">
                            <div class="form-group row">
                                <label for="txtTDSDeduction" class="col-sm-4 control-label">Total Incentive <strong style="color: Red">*</strong></label>
                                <div class="col-sm-8">
                                    
                                    <c:forEach var = "row" items ="${list1}">
                                    <input name="totalincentive" type="text" id="totalincentive" value="${row.totalincentive }" class="form-control" />
                                    </c:forEach>
                                    
                                    <c:forEach var = "row" items ="${list2}">
                                    <input name="totalincentive" type="text" id="totalincentive" value="${row.totalincentive }" class="form-control" />
                                    </c:forEach>
                                    
                                    <span id="ContentPlaceHolder1_RequiredFieldValidator1" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Total Incentive</span>
                                </div>
                            </div>
                            
                            <div class="form-group row">
                                <label for="txtTDSDeduction" class="col-sm-4 control-label">TDS (-) <strong style="color: Red">*</strong></label>
                                <div class="col-sm-8">
                                
                                	<c:forEach var = "row" items ="${list1}">
                                    <input name="tds" type="text" id="tds" value="${row.tds }" class="form-control" PlaceHolder="Enter TDS" />
                                    </c:forEach>
                                    
                                    <c:forEach var = "row" items ="${list2}">
                                    <input name="tds" type="text" id="tds" value="${row.tds }" class="form-control" PlaceHolder="Enter TDS" />
                                    </c:forEach>
                                    
                                    <span id="ContentPlaceHolder1_RequiredFieldValidatorTDSDeduction" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter TDSDeduction</span>
                                </div>
                            </div>
                            
                            <div class="form-group row">
                                <label for="txtServiceChanges" class="col-sm-4 control-label">Service Charge (-) <strong style="color: Red">*</strong></label>
                                <div class="col-sm-8">
                                    
                                    <c:forEach var = "row" items ="${list1}">
                                    <input name="servicecharge" type="text" id="servicecharge" value="${row.servicecharge }" class="form-control" PlaceHolder="Enter Service Charge" />
                                    </c:forEach>
                                    
                                    <c:forEach var = "row" items ="${list2}">
                                    <input name="servicecharge" type="text" id="servicecharge" value="${row.servicecharge }" class="form-control" PlaceHolder="Enter Service Charge" />
                                    </c:forEach>
                                    
                                    <span id="ContentPlaceHolder1_RequiredFieldValidatorAmountServiceChanges" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Service Charge</span>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="txtAllowance" class="col-sm-4 control-label">Allowance (If Any)</label>
                                <div class="col-sm-8">
                                    
                                    <c:forEach var = "row" items ="${list1}">
                                    <input name="allowance" type="text" value="0" id="allowance" value="${row.allowance }"  class="form-control" PlaceHolder="Enter Allowance" />
									</c:forEach>
									
									<c:forEach var = "row" items ="${list2}">
                                    <input name="allowance" type="text" value="0" id="allowance" value="${row.allowance }"  class="form-control" PlaceHolder="Enter Allowance" />
									</c:forEach>
									
                                </div>
                            </div>
                            
                            <div class="form-group row">
                                <label for="txtNetPayble" class="col-sm-4 control-label">Net Payable <strong style="color: Red">*</strong></label>
                                <div class="col-sm-8">
                                	
                                	<c:forEach var = "row" items ="${list1}">
                                    <input name="netpayable" type="text" id="netpayable" value="${row.netpayable}" class="form-control" PlaceHolder="Enter Net Payable" />
                                    </c:forEach>
                                    
                                    <c:forEach var = "row" items ="${list2}">
                                    <input name="netpayable" type="text" id="netpayable" value="${row.netpayable}" class="form-control" PlaceHolder="Enter Net Payable" />
                                    </c:forEach>
                                    
                                    <span id="ContentPlaceHolder1_RequiredFieldValidatorNetPayble" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Net Payable</span>
                                </div>
                            </div>
                            
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="box box-info">
                    <div class="box-header with-border">
                        <h3 class="box-title">Payment Details </h3>
                    </div>

                    <div class="box-body">
                        <div class="col-md-6">
                            <div class="form-group row">
                                <label for="ddlPayBranch" class="col-sm-4 control-label">Pay Branch</label>
                                <div class="col-sm-8">
                                    <select name="paybranch" id="paybranch" class="form-control" style="width: 100%;">
	<option value="001">Main Office - 001</option>

</select>

                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="txtPayDate" class="col-sm-4 control-label">Pay Date <strong style="color: Red">*</strong></label>
                                <div class="col-sm-8">
                                    <div class="input-group date">
                                        <div class="input-group-addon">
                                            <i class="fa fa-calendar"></i>
                                        </div>
                                        <input name="paydate" type="date" value="01/08/2022" id="paydate" class="form-control" data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;" data-mask="" />
                                    </div>
                                    <span id="ContentPlaceHolder1_RequiredFieldValidatorPayDate" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Pay Date</span>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="drpPaymentBy" class="col-sm-4 control-label">Payment By <strong style="color: Red">*</strong></label>
                                <div class="col-sm-8">
                                    <select name="paymentby" onchange="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$ddlPaymode\&#39;,\&#39;\&#39;)&#39;, 0)" id="paymentby" class="form-control" style="width: 100%;">
	<option selected="selected" value="Cash">Cash</option>
	<option value="Cheque">Cheque</option>
	<option value="Online">Online</option>
	<option value="NEFT">NEFT</option>
	<option value="SBAccount">SBAccount</option>

</select>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">

                            
                            
                            

                            
                        </div>

                    </div>

                    <div class="box-footer">
                        <div class="row col-md-12">
                            
                            <input type="submit" name="ctl00$ContentPlaceHolder1$btnPay" value="Pay" onclick="javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions(&quot;ctl00$ContentPlaceHolder1$btnPay&quot;, &quot;&quot;, true, &quot;B&quot;, &quot;&quot;, false, false))" id="ContentPlaceHolder1_btnPay" class="btn btn-success pull-right margin-r-5" />
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
var Page_Validators =  new Array(document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorBranch"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorPosition"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorNewBusiness"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorOldBusiness"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorTotalBusiness"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidator1"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorTDSDeduction"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorAmountServiceChanges"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorNetPayble"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorPayDate"));
//]]>
</script>

<script type="text/javascript">
//<![CDATA[
var ContentPlaceHolder1_RequiredFieldValidatorBranch = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorBranch"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorBranch");
ContentPlaceHolder1_RequiredFieldValidatorBranch.controltovalidate = "ContentPlaceHolder1_txtFullName";
ContentPlaceHolder1_RequiredFieldValidatorBranch.focusOnError = "t";
ContentPlaceHolder1_RequiredFieldValidatorBranch.errormessage = "Enter Name";
ContentPlaceHolder1_RequiredFieldValidatorBranch.display = "Dynamic";
ContentPlaceHolder1_RequiredFieldValidatorBranch.validationGroup = "B";
ContentPlaceHolder1_RequiredFieldValidatorBranch.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredFieldValidatorBranch.initialvalue = "";
var ContentPlaceHolder1_RequiredFieldValidatorPosition = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorPosition"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorPosition");
ContentPlaceHolder1_RequiredFieldValidatorPosition.controltovalidate = "ContentPlaceHolder1_txtPosition";
ContentPlaceHolder1_RequiredFieldValidatorPosition.focusOnError = "t";
ContentPlaceHolder1_RequiredFieldValidatorPosition.errormessage = "Enter Position";
ContentPlaceHolder1_RequiredFieldValidatorPosition.display = "Dynamic";
ContentPlaceHolder1_RequiredFieldValidatorPosition.validationGroup = "B";
ContentPlaceHolder1_RequiredFieldValidatorPosition.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredFieldValidatorPosition.initialvalue = "";
var ContentPlaceHolder1_RequiredFieldValidatorNewBusiness = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorNewBusiness"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorNewBusiness");
ContentPlaceHolder1_RequiredFieldValidatorNewBusiness.controltovalidate = "ContentPlaceHolder1_txtSelfBiz";
ContentPlaceHolder1_RequiredFieldValidatorNewBusiness.focusOnError = "t";
ContentPlaceHolder1_RequiredFieldValidatorNewBusiness.errormessage = "Enter Self Business";
ContentPlaceHolder1_RequiredFieldValidatorNewBusiness.display = "Dynamic";
ContentPlaceHolder1_RequiredFieldValidatorNewBusiness.validationGroup = "B";
ContentPlaceHolder1_RequiredFieldValidatorNewBusiness.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredFieldValidatorNewBusiness.initialvalue = "";
var ContentPlaceHolder1_RequiredFieldValidatorOldBusiness = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorOldBusiness"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorOldBusiness");
ContentPlaceHolder1_RequiredFieldValidatorOldBusiness.controltovalidate = "ContentPlaceHolder1_txtTeamBiz";
ContentPlaceHolder1_RequiredFieldValidatorOldBusiness.focusOnError = "t";
ContentPlaceHolder1_RequiredFieldValidatorOldBusiness.errormessage = "Enter Team Business";
ContentPlaceHolder1_RequiredFieldValidatorOldBusiness.display = "Dynamic";
ContentPlaceHolder1_RequiredFieldValidatorOldBusiness.validationGroup = "B";
ContentPlaceHolder1_RequiredFieldValidatorOldBusiness.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredFieldValidatorOldBusiness.initialvalue = "";
var ContentPlaceHolder1_RequiredFieldValidatorTotalBusiness = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorTotalBusiness"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorTotalBusiness");
ContentPlaceHolder1_RequiredFieldValidatorTotalBusiness.controltovalidate = "ContentPlaceHolder1_txtTotalBusiness";
ContentPlaceHolder1_RequiredFieldValidatorTotalBusiness.focusOnError = "t";
ContentPlaceHolder1_RequiredFieldValidatorTotalBusiness.errormessage = "Enter Total Business";
ContentPlaceHolder1_RequiredFieldValidatorTotalBusiness.display = "Dynamic";
ContentPlaceHolder1_RequiredFieldValidatorTotalBusiness.validationGroup = "B";
ContentPlaceHolder1_RequiredFieldValidatorTotalBusiness.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredFieldValidatorTotalBusiness.initialvalue = "";
var ContentPlaceHolder1_RequiredFieldValidator1 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator1"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidator1");
ContentPlaceHolder1_RequiredFieldValidator1.controltovalidate = "ContentPlaceHolder1_txtGrossPay";
ContentPlaceHolder1_RequiredFieldValidator1.focusOnError = "t";
ContentPlaceHolder1_RequiredFieldValidator1.errormessage = "Enter Total Incentive";
ContentPlaceHolder1_RequiredFieldValidator1.display = "Dynamic";
ContentPlaceHolder1_RequiredFieldValidator1.validationGroup = "B";
ContentPlaceHolder1_RequiredFieldValidator1.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredFieldValidator1.initialvalue = "";
var ContentPlaceHolder1_RequiredFieldValidatorTDSDeduction = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorTDSDeduction"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorTDSDeduction");
ContentPlaceHolder1_RequiredFieldValidatorTDSDeduction.controltovalidate = "ContentPlaceHolder1_txtTDSDeduction";
ContentPlaceHolder1_RequiredFieldValidatorTDSDeduction.focusOnError = "t";
ContentPlaceHolder1_RequiredFieldValidatorTDSDeduction.errormessage = "Enter TDSDeduction";
ContentPlaceHolder1_RequiredFieldValidatorTDSDeduction.display = "Dynamic";
ContentPlaceHolder1_RequiredFieldValidatorTDSDeduction.validationGroup = "B";
ContentPlaceHolder1_RequiredFieldValidatorTDSDeduction.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredFieldValidatorTDSDeduction.initialvalue = "";
var ContentPlaceHolder1_RequiredFieldValidatorAmountServiceChanges = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorAmountServiceChanges"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorAmountServiceChanges");
ContentPlaceHolder1_RequiredFieldValidatorAmountServiceChanges.controltovalidate = "ContentPlaceHolder1_txtServiceChanges";
ContentPlaceHolder1_RequiredFieldValidatorAmountServiceChanges.focusOnError = "t";
ContentPlaceHolder1_RequiredFieldValidatorAmountServiceChanges.errormessage = "Enter Service Charge";
ContentPlaceHolder1_RequiredFieldValidatorAmountServiceChanges.display = "Dynamic";
ContentPlaceHolder1_RequiredFieldValidatorAmountServiceChanges.validationGroup = "B";
ContentPlaceHolder1_RequiredFieldValidatorAmountServiceChanges.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredFieldValidatorAmountServiceChanges.initialvalue = "";
var ContentPlaceHolder1_RequiredFieldValidatorNetPayble = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorNetPayble"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorNetPayble");
ContentPlaceHolder1_RequiredFieldValidatorNetPayble.controltovalidate = "ContentPlaceHolder1_txtNetPayble";
ContentPlaceHolder1_RequiredFieldValidatorNetPayble.focusOnError = "t";
ContentPlaceHolder1_RequiredFieldValidatorNetPayble.errormessage = "Enter Net Payable";
ContentPlaceHolder1_RequiredFieldValidatorNetPayble.display = "Dynamic";
ContentPlaceHolder1_RequiredFieldValidatorNetPayble.validationGroup = "B";
ContentPlaceHolder1_RequiredFieldValidatorNetPayble.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredFieldValidatorNetPayble.initialvalue = "";
var ContentPlaceHolder1_RequiredFieldValidatorPayDate = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorPayDate"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorPayDate");
ContentPlaceHolder1_RequiredFieldValidatorPayDate.controltovalidate = "ContentPlaceHolder1_txtPayDate";
ContentPlaceHolder1_RequiredFieldValidatorPayDate.focusOnError = "t";
ContentPlaceHolder1_RequiredFieldValidatorPayDate.errormessage = "Enter Pay Date";
ContentPlaceHolder1_RequiredFieldValidatorPayDate.display = "Dynamic";
ContentPlaceHolder1_RequiredFieldValidatorPayDate.validationGroup = "B";
ContentPlaceHolder1_RequiredFieldValidatorPayDate.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredFieldValidatorPayDate.initialvalue = "";
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
        
document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorBranch').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorBranch'));
}

document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorPosition').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorPosition'));
}

document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorNewBusiness').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorNewBusiness'));
}

document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorOldBusiness').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorOldBusiness'));
}

document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorTotalBusiness').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorTotalBusiness'));
}

document.getElementById('ContentPlaceHolder1_RequiredFieldValidator1').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator1'));
}

document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorTDSDeduction').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorTDSDeduction'));
}

document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorAmountServiceChanges').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorAmountServiceChanges'));
}

document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorNetPayble').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorNetPayble'));
}

document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorPayDate').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorPayDate'));
}
//]]>
</script>
</form>
</body>

<!-- Dk/Admin/IncentivePayment.aspx by <!-----EDB------> -->
</html>
