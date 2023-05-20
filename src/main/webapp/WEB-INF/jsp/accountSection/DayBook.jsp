<jsp:include page="../header.jsp" />

 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>

<body  class="skin-blue sidebar-mini" style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);" cz-shortcut-listen="true" >




<!--     <form method="get" action="searchDayBook" id="form1" modelAttribute="SearchDayBookModelAtttribute"> -->






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
        <h1 id="ContentPlaceHolder1_IdHeader">Regular Statement (Daybook)</h1>
        <ol class="breadcrumb">
            <li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
            <li><a href="#">Dashboard</a></li>
            <li class="active">Daybook</li>
        </ol>
    </section>
    <section class="content">
        <div class="row">
            <div class="col-xs-12">
                <div class="box box-success">
                    <div class="box-header with-border">
                        <h3 class="box-title">Search information</h3>
                    </div>
                    <div class="box-body">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Select Branch</label>
                                <select name="selectBranch" id="selectBranch" class="form-control" style="width: 100%;">
	<option value="">All Branch</option>
	<option value="001">Main Office - 001</option>
	<option value="002">Main Office - 002</option>
	<option value="003">Main Office - 003</option>

</select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Select Ledger</label>
                                <select name="selectLedger" id="selectLedger" class="form-control select2" style="width: 100%;">
	<option value="">All Heads</option>
	<option value="Loan Principal">Loan Principal</option>
	<option value="Loan Interest Received">Loan Interest Received</option>
	<option value="Fixed Deposit A/C">Fixed Deposit A/C</option>
	<option value="1003">Recurring Deposit A/C</option>
	<option value="1004">Daily Deposit A/C</option>
	<option value="1005">MIS Deposit A/C</option>
	<option value="1006">Saving A/C</option>
	<option value="1007">Advisor Advance</option>
	<option value="1008">Advisor/Collector Fees</option>
	<option value="1009">Member Joining Fees</option>
	<option value="1010">Incentive Payment</option>
	<option value="1011">Loan Interest Receivable</option>
	<option value="1012">MIS Interest Payable</option>
	<option value="1013">Advance incentive</option>
	<option value="1014">Late Fine A/c</option>
	<option value="1015">Processing Fee A/C</option>
	<option value="1016">Maturity A/C</option>
	<option value="1017">Member Share A/C</option>
	<option value="1018">Unencumbered Term Deposit</option>
	<option value="1019">PaidUp Share Capital</option>
	<option value="1020">SB Interest Paid</option>
	<option value="1021">Loan Proc Fees</option>
	<option value="1022">Loan GST</option>
	<option value="1023">Loan Interest Waiver</option>
	<option value="1024">Loan Fore Closure Charges</option>
	<option value="1025">Loan Penalty A/C</option>
	<option value="1026">RD Interest Paid A/C</option>
	<option value="1027">Daily Interest Paid A/C</option>
	<option value="1028">FD Interest Paid A/C</option>
	<option value="1029">MIS Interest Paid A/C</option>
	<option value="1030">Loan Legal Amount</option>
	<option value="1031">Loan Insurance Fee</option>
	<option value="1032">Company Capital</option>
	<option value="2053">Official Exp</option>
	<option value="2055">Petty Cash</option>
	<option value="2058">Furniture &amp; Fixture</option>
	<option value="2062">Bank Charge </option>
	<option value="2065">Employee Salary</option>
	<option value="2067">Office Rent</option>
	<option value="2069">Cash Withdrawal Charge</option>
	<option value="2070">Maturity Deduction</option>
	<option value="2071">Gold Valuation Fees</option>
	<option value="2072">SMS Charges</option>
	<option value="2073">SB Service Charges</option>
	<option value="2079">Electric Bill</option>
	<option value="2080">Incentive</option>
	<option value="2081">Electric Bill</option>
	<option value="2082">Deposit self</option>
	<option value="2085">Pass book Reisssue charge</option>
	<option value="2086">Cash Transfer</option>
	<option value="2087">Revenu </option>
	<option value="2088">Revenu </option>
	<option value="2090">Maturity Paid</option>

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
                                   <input name="fDate" type="date" value="01/08/2022" id="fDate" class="form-control" data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;" data-mask="" />  
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
                                    <input name="tDate" type="date" value="01/08/2022" id="tDate" class="form-control" data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;" data-mask="" />  
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="box-footer">
                        <div class="row col-md-12">
                           
                           
<!--                             <input    name="ctl00$ContentPlaceHolder1$btnShowReport" value="Search" id="ContentPlaceHolder1_btnShowReport" class="btn btn-success pull-right"  /> -->
                        <button type="submit"  onclick="getSelectedDayBook();" class="btn btn-success pull-right margin-20" >Search</button>
                        
                        
                        
                        
                        
                       
                        
                        
                        
                        
                        
                        </div>
                    </div>
                </div>
<!-- 				 </form> -->

                 <div class="box box-success" style="box-shadow: none; overflow: auto !important;">
                    <div class="box-header with-border">
                        <h3 class="box-title">Search Result</h3>
                        <div class="box-tools pull-right">
                            
                        </div>
                    </div>
                    <div class="box-body">
                        <div class="clearfix margin-bottom-10"></div>

                         


               <table cellspacing="0" cellpadding="3" rules="all" 
                              class="display nowrap table table-hover table-striped table-bordered" 
                              border="1"  style="width:100%;border-collapse:collapse;">
                                 <caption>
                                    Advisor Collection Report
                                    
                                  
                                 </caption>
                                 <tr style="color:White;background-color:#008385;">
                                    <th scope="col">Id</th>
                                    <th scope="col">Branch type</th>
                                    <th scope="col">Ledger</th>
                                    <th scope="col">DATE</th>
                                    
                                    
                                 </tr>
                                  <tbody id="tableBody">
                                    
      							  </tbody>
                              </table>

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
<!--         Fetchrecord -->
<script src="dist/js/FetchRecord.js"></script>
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
        
    
        
   
</body>

<!-- Dk/Admin/RegularStatement.aspx by <!-----EDB------> -->
</html>




