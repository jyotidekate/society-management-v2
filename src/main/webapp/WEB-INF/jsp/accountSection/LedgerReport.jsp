<jsp:include page="../header.jsp" />
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<body class="skin-blue sidebar-mini" style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);" cz-shortcut-listen="true">
    <form method="get" action="getAllLedgerReport" id="form1" modelAttribute="LedgerModelAttribute">

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
        <h1 id="ContentPlaceHolder1_IdHeader">Ledger Report</h1>
        <ol class="breadcrumb">
            <li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
            <li><a href="#">Dashboard</a></li>
            <li class="active">Ledger Report</li>
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
                                <label>Select Ledger</label>
                                <select name="selectledger" id="selectledger" class="form-control select2" style="width: 100%;">
	<option value="All">All</option>
	<option value="Loan Principal">Loan Principal</option>
	<option value="Loan Interest Received">Loan Interest Received</option>
	<option value="Cash A/C">Cash A/C</option>
	<option value="Fixed Deposit A/C">Fixed Deposit A/C</option>
	<option value="Recurring Deposit A/C">Recurring Deposit A/C</option>
	<option value="Daily Deposit A/C">Daily Deposit A/C</option>
	<option value="MIS Deposit A/C">MIS Deposit A/C</option>
	<option value="Saving A/C">Saving A/C</option>
	<option value="Advisor Advance">Advisor Advance</option>
	<option value="Advisor/Collector Fees">Advisor/Collector Fees</option>
	<option value="Member Joining Fees">Member Joining Fees</option>
	<option value="Incentive Payment">Incentive Payment</option>
	<option value="Loan Interest Receivable">Loan Interest Receivable</option>
	<option value="MIS Interest Payable">MIS Interest Payable</option>
	<option value="Advance incentive">Advance incentive</option>
	<option value="Late Fine A/c">Late Fine A/c</option>
	<option value="Processing Fee A/C">Processing Fee A/C</option>
	<option value="Maturity A/C">Maturity A/C</option>
	<option value="Member Share A/C">Member Share A/C</option>
	<option value="Unencumbered Term Deposit">Unencumbered Term Deposit</option>
	<option value="PaidUp Share Capital">PaidUp Share Capital</option>
	<option value="SB Interest Paid">SB Interest Paid</option>
	<option value="Loan Proc Fees">Loan Proc Fees</option>
	<option value="Loan GST">Loan GST</option>
	<option value="Loan Interest Waiver">Loan Interest Waiver</option>
	<option value="Loan Fore Closure Charges">Loan Fore Closure Charges</option>
	<option value="Loan Penalty A/C">Loan Penalty A/C</option>
	<option value="RD Interest Paid A/C">RD Interest Paid A/C</option>
	<option value="Daily Interest Paid A/C">Daily Interest Paid A/C</option>
	<option value="FD Interest Paid A/C">FD Interest Paid A/C</option>
	<option value="MIS Interest Paid A/C">MIS Interest Paid A/C</option>
	<option value="Loan Legal Amount">Loan Legal Amount</option>
	<option value="Loan Insurance Fee">Loan Insurance Fee</option>
	<option value="Company Capital">Company Capital</option>
	<option value="Official Exp">Official Exp</option>
	<option value="Petty Cash">Petty Cash</option>
	<option value="Furniture Fixture">Furniture &amp; Fixture</option>
	<option value="Bank Charge">Bank Charge</option>
	<option value="Employee Salary">Employee Salary</option>
	<option value="Office Rent">Office Rent</option>
	<option value="Cash Withdrawal Charge">Cash Withdrawal Charge</option>
	<option value="Maturity Deduction">Maturity Deduction</option>
	<option value="Gold Valuation Fees">Gold Valuation Fees</option>
	<option value="SMS Charges">SMS Charges</option>
	<option value="SB Service Charges">SB Service Charges</option>
	<option value="Transfer A/C">Transfer A/C</option>
	<option value="Electric Bill">Electric Bill</option>
	<option value="Incentive">Incentive</option>
	<option value="Electric Bill">Electric Bill</option>
	<option value="Deposit self">Deposit self</option>
	<option value="Pass book Reisssue charge">Pass book Reisssue charge</option>
	<option value="Cash Transfer">Cash Transfer</option>
	<option value="Revenu">Revenu </option>
	<option value="Revenu">Revenu </option>
	<option value="Maturity Paid">Maturity Paid</option>
	<option value="107363400000533">107363400000533</option>

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
                                <input type="submit" name="btnsubmit" value="View" id="btnsubmit" class="btn btn-success margin-20" />
                            </div>
                        </div>
                    </div>
                   
                </div>
               
               
               <div class="row">
            <div class="col-md-12">
                <div class="box box-success">
                    <div class="box-header with-border">
                       <!--   <h3 class="box-title">Search List</h3>-->
                        <div class="box-tools pull-right">
                        
                        </div>
                        
                    </div>

                    <div class="box-body">
                        <div class="clearfix margin-bottom-10">
                        
                        </div>
        <div >  
        <h3 style="text-align: center; font-weight: bold;">EQFI NIDHI LIMITED</h3>
        <h4 style="text-align: center;">PLOT NO 36 DATE LAYOUT JAYTALA ROAD NAGPUR - MAHARASHTRA - 440036</h4>
        <p><b>Ledger On</b>  Cash A/C</p> 
        <p><b>Branch :</b>Main Office</p>
        
        
                    
	    <table cellspacing="2"  rules="all" class="display nowrap table table-hover table-striped table-bordered" border="1" id="ContentPlaceHolder1_gvUTD" >
		<tr>
			
			<th>Date</th>
			<th>Receipt No</th>
			<th>Narration</th>
			<th>Code</th>
			<th>Debit</th>
			<th>Credit</th>
			
			</tr>
			
		<c:forEach items="${list1}" var="rows">	
		<tr>
		<td><c:out value="${rows.date}"></c:out></td>
		<td><c:out value="${rows.receiptno}"></c:out></td>
		<td><c:out value="${rows.narration}"></c:out></td>
		<td><c:out value="${rows.code}"></c:out></td>
		<td><c:out value="${rows.debit}"></c:out></td>
		<td><c:out value="${rows.credit}"></c:out></td>
		</tr>
		</c:forEach>
		
		<c:forEach items="${list2}" var="rows">
		<tr>
		<td><c:out value="${rows.date}"></c:out></td>
		<td><c:out value="${rows.receiptno}"></c:out></td>
		<td><c:out value="${rows.narration}"></c:out></td>
		<td><c:out value="${rows.code}"></c:out></td>
		<td><c:out value="${rows.debit}"></c:out></td>
		<td><c:out value="${rows.credit}"></c:out></td>
		
		</tr>
		</c:forEach>
		
		
		
              			
		
	</table>
	</div>
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
    </form>
</body>

<!-- Dk/Admin/FinancialLedgerReport.aspx by <!-----EDB------> -->
</html>
