<jsp:include page="../header.jsp" />
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<style>
table {
  border-collapse: collapse;
  border-spacing: 0;
  width: 100%;
  border: 1px solid #ddd;
}

th, td {
  text-align: left;
  padding: 8px;
}

/* tr:nth-child(even){background-color: #f2f2f2 */}
</style>

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
        <h1 id="ContentPlaceHolder1_IdHeader">Unencumbered Term Deposit</h1>
        <ol class="breadcrumb">
            <li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
            <li><a href="#">Dashboard</a></li>
            <li class="active">Unencumbered Term Deposit</li>
        </ol>
    </section>
    
    <section class="content">
        
    <form method="get" action="getAllRecords" modelAttribute="ContramodelAttribute" id="form1">
        <div class="row">
            <div class="col-md-12">
                <div class="box box-success">
                    
                    <div class="box-body">
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
                                 <input type="submit" name="btnsearch" value="Search"  id="btnsearch" class="btn btn-success pull-right margin-r-5" /> 
                   
                               <!-- <a id="btnsearch" class="btn btn-success margin-20"><span class="fa fa-search"></span> SEARCH</a> -->
                            </div>

                        </div>
                        <div class="clearfix margin-bottom-10"></div>
                    </div>

                </div>
            </div>
        </div>
        </form>
        
        
        <form method="post" action="mandateDeposit1" modelAttribute="ContramodelAttribute" id="form1">
        <div class="row">
            <div class="col-md-12">
                <div class="box box-success">

                    <div class="box-body">
                        <div class="col-md-6">
                            <div class="form-group row">
                                <label class="col-sm-5 control-label">FD Deposit<strong style="color: Red">*</strong></label>
                                <div class="col-sm-7">
                                    <input name="fddeposit" type="text"  id="fddeposit" class="form-control" />
                                    <span id="fddepositMsg" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Ledger Name</span>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-5 control-label">MIS Deposit<strong style="color: Red">*</strong></label>
                                <div class="col-sm-7">
                                    <input name="misdeposit" type="text"  id="misdeposit" class="form-control" />
                                    <span id="misdepositMsg" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Mis Deposit</span>
                                    
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-5 control-label">RD/DRD Deposit<strong style="color: Red">*</strong></label>
                                <div class="col-sm-7">
                                    <input name="rddeposit" type="text"  id="rddeposit" class="form-control" />
                                    <span id="rddepositMsg" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter RD  Deposit</span>
                                   
                                </div>
                            </div>
                            
                            <div class="form-group row">
                                <label class="col-sm-5 control-label">Savings Deposit<strong style="color: Red">*</strong></label>
                                <div class="col-sm-7">
                                    <input name="savingsdeposit" type="text"  id="savingsdeposit" class="form-control" />
                                    <span id="savingsdepositMsg" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Savings Deposit</span>
                                   
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-5 control-label">Savings Withdrawal<strong style="color: Red">*</strong></label>
                                <div class="col-sm-7">
                                    <input name="savingswithdrawal" type="text"  id="savingswithdrawal" class="form-control" />
                                    <span id="savingswithdrawalMsg" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Savings Withdrawal</span>
                                   
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-5 control-label">Flexi Deposit<strong style="color: Red">*</strong></label>
                                <div class="col-sm-7">
                                    <input name="flexideposit" type="text"  id="flexideposit" class="form-control" />
                                    <span id="flexidepositMsg" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Flexi Deposit</span>
                                   
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-5 control-label">Flexi Withdrawal<strong style="color: Red">*</strong></label>
                                <div class="col-sm-7">
                                    <input name="flexiwithdrawal" type="text"  id="flexiwithdrawal" class="form-control" />
                                    <span id="flexiwithdrawalMsg" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Flexi Withdrawal</span>
                                    
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-5 control-label">Maturity Principal<strong style="color: Red">*</strong></label>
                                <div class="col-sm-7">
                                    <input name="maturityprincipal" type="text"  id="maturityprincipal" class="form-control" />
                                    <span id="maturityprincipalMsg" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Maturity Principal</span>
                                   
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="txtCurrTotalDeposit" class="col-sm-5 control-label">Total Deposit<strong style="color: Red">*</strong></label>
                                <div class="col-sm-7">
                                    <input name="totaldeposit" type="text"  id="totaldeposit" class="form-control" PlaceHolder="Total Deposit" style="color:Red;font-weight:bold;" />
                                    <span id="totaldepositMsg" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Total Deposit</span>
                                   
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="txtCurrTotalWithdrawal" class="col-sm-5 control-label">Total Withdrawal<strong style="color: Red">*</strong></label>
                                <div class="col-sm-7">
                                    <input name="totalwithdrawal" type="text"  id="totalwithdrawal" class="form-control" PlaceHolder="Total Withdrawal" style="color:Red;font-weight:bold;" />
                                    
                                    <span id="totalwithdrawalMsg" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Total Withdrawal</span>
                                </div>
                            </div>
                             <div class="form-group row">
                                <label class="col-sm-5 control-label">Total Balance<strong style="color: Red">*</strong></label>
                                <div class="col-sm-7">
                                    <input name="totalbalance" type="text"  id="totalbalance" class="form-control" style="color:Red;font-weight:bold;" />
                                    <span id="totalbalanceMsg" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Total Balance</span>
                                   
                                </div>
                            </div>
                             <div class="form-group row">
                                <label class="col-sm-5 control-label">Previous FD Deposited<strong style="color: Red">*</strong></label>
                                <div class="col-sm-7">
                                    <input name="previousfddeposited" type="text"  id="previousfddeposited" class="form-control" />
                                    <span id="previousfddepositedMsg" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Previous FD Deposited</span>
                                    
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-5 control-label">Unencumbered (10% )<strong style="color: Red">*</strong></label>
                                <div class="col-sm-7">
                                    <input name="unencumbered" type="text"  id="unencumbered" class="form-control" />
                                    <span id="unencumberedMsg" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Unencumbered</span>
                                    
                                    
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-5 control-label">Unencumbered Amount (10%)<strong style="color: Red">*</strong></label>
                                <div class="col-sm-7">
                                    <input name="unencumberedamount" type="text" id="unencumberedamount" class="form-control" />
                                    <span id="unencumberedamountMsg" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Unencumbered Amount</span>
                                   
                                    
                                </div>
                            </div>
                            <div class="box-footer">
                                <div class="row col-md-12">

<!--                                     <input type="submit" name="ctl00$ContentPlaceHolder1$btgnadd" value="Add >>" onclick="javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions(&quot;ctl00$ContentPlaceHolder1$btgnadd&quot;, &quot;&quot;, true, &quot;V&quot;, &quot;&quot;, false, false))" id="ContentPlaceHolder1_btgnadd" class="btn btn-success pull-right" /> -->
<!--                                 
 -->
</div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            
                            <div class="form-group row">
                                <label for="txtBankName" class="col-sm-4 control-label">Bank Name<strong style="color: Red">*</strong></label>
                                <div class="col-sm-8">
                                    <input name="bankname" type="text" id="bankname" class="form-control"  />
                                    <span id="banknameMsg" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Bank Name</span>
                                    
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="txtBankAddress" class="col-sm-4 control-label">Bank Address<strong style="color: Red">*</strong></label>
                                <div class="col-sm-8">
                                    <input name="bankaddress" type="text" id="bankaddress" class="form-control"  />
                                    <span id="bankaddressMsg" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Bank Address</span>
                                     
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="txtFDNO" class="col-sm-4 control-label">FD NO.<strong style="color: Red">*</strong></label>
                                <div class="col-sm-8">
                                    <input name="fdno" type="text" id="fdno" class="form-control"  />
                                    <span id="fdnoMsg" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter FD No</span>
                                    
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="txtFDAmt" class="col-sm-4 control-label">FD Amt<strong style="color: Red">*</strong></label>
                                <div class="col-sm-8">
                                    <input name="fdamt" type="text"  id="fdamt" class="form-control"  />
                                    <span id="fdamtMsg" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter FD Amount</span>
                                    
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="txtMaturityAmt" class="col-sm-4 control-label">Maturity Amt<strong style="color: Red">*</strong></label>
                                <div class="col-sm-8">
                                    <input name="maturityamt" type="text" id="maturityamt" class="form-control"  />
                                    <span id="maturityamtMsg" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Maturity Amount</span>
                                     
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="txtFDDate" class="col-sm-4 control-label">FD Date<strong style="color: Red">*</strong></label>
                                <div class="col-sm-8">
                                    <div class="input-group date">
                                        <div class="input-group-addon">
                                            <i class="fa fa-calendar"></i>
                                        </div>
                                        <input name="fddate" type="date"  id="fddate" class="form-control" data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;" data-mask="" />
                                        <span id="fddateMsg" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter FD Date</span>
                              
                                    </div>
                                   
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="txtMaturityDate" class="col-sm-4 control-label">Maturity Date<strong style="color: Red">*</strong></label>
                                <div class="col-sm-8">
                                    <div class="input-group date">
                                        <div class="input-group-addon">
                                            <i class="fa fa-calendar"></i>
                                        </div>
                                         <input name="maturitydate" type="date"  id="maturitydate" class="form-control" data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;" data-mask="" />
                                         <span id="maturitydateMsg" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Maturity Date</span>
                                    </div>
                                   
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="ddlPaymentBy" class="col-sm-4 control-label">Payment By</label>
                                <div class="col-sm-8">
                 
                                    <select name="paymentby" onchange="" id="paymentby" class="form-control" style="width: 100%;">
                                   
	<option selected="selected" value="Cash">Cash</option>
	<option value="Cheque">Cheque</option>
	<option value="Online">Online</option>
	<option value="NEFT">NEFT</option>
     
</select>
<span id="paymentbyMsg" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Payment</span>
                                </div>
                            </div>
                            
                            
                            
                            <div class="form-group row">
                                <label for="txtRemarks" class="col-sm-4 control-label">Remarks<strong style="color: Red">*</strong></label>
                                <div class="col-sm-8">
                                    <input name="remarks" type="text" id="remarks" class="form-control" PlaceHolder=" Enter Remarks " />
                                   <span id="remarksMsg" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Remarks</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="box-footer">
                        <div class="row col-md-12">
                            
                            <input type="submit" name="btnsave" value="Save" onclick="MandateDepositToBank();" id="btnsave" class="btn btn-success pull-right margin-r-5" />
                        </div>
                    </div>

                </div>
            </div>
        </div>
        </form>

        <div class="row">
            <div class="col-md-12">
                <div class="box box-success">
                    <div class="box-header with-border">
                        <h3 class="box-title">Detail Search List</h3>
                    </div>

                    <div class="box-body">
                        <div   style="overflow-x:auto;" >
	     <table >
	
<!-- 	cellspacing="0"  rules="all" class="display nowrap table table-hover table-striped table-bordered" border="1" id="ContentPlaceHolder1_gvUTD"  -->
		<tr>
			<!--  <td>No Record Found</td>-->
			<th>FD<br>Deposit</th>
			<th>MIS<br>Deposit</th>
			<th>RD/DRD<br>Deposit</th>
			<th>Savings<br>Deposit</th>
			<th>Savings<br>Withdrawal</th>
			<th>Flexi<br>Deposit</th>
			<th>Flexi<br>Withdrawal</th>
			<th>Maturity<br>Principal</th>
			<th>Total<br>Deposit</th>
			<th>Total<br>Withdrawal</th>
			<th>Total<br>Balance</th>
			<th>Previous<br>FDDeposited</th>
			<th>Unencumbered<br>(10%)</th>
			<th>Unencumbered<br>Amount(10%)</th>
			<th>Bank<br>Name</th>
			<th>Bank<br>Address</th>
			<th>FD<br>NO.</th>
			<th>FD<br>Amt</th>
			<th>Maturity<br>Amt</th>
			<th>FD<br>Date</th>
			<th>Maturity<br>Date</th>
			<th>Payment<br>By</th>
			<th>Remarks</th>
			</tr>
			
		<c:forEach items="${list}" var="rows">	
		<tr>
		<td><c:out value="${rows.fddeposit}"></c:out></td>
		<td><c:out value="${rows.misdeposit}"></c:out></td>
		<td><c:out value="${rows.rddeposit}"></c:out></td>
		<td><c:out value="${rows.savingsdeposit}"></c:out></td>
		<td><c:out value="${rows.savingswithdrawal}"></c:out></td>
		<td><c:out value="${rows.flexideposit}"></c:out></td>
		<td><c:out value="${rows.flexiwithdrawal}"></c:out></td>
		<td><c:out value="${rows.maturityprincipal}"></c:out></td>
		<td><c:out value="${rows.totaldeposit}"></c:out></td>
		<td><c:out value="${rows.totalwithdrawal}"></c:out></td>
		<td><c:out value="${rows.totalbalance}"></c:out></td>
		<td><c:out value="${rows.previousfddeposited}"></c:out></td>
		<td><c:out value="${rows.unencumbered}"></c:out></td>
		<td><c:out value="${rows.unencumberedamount}"></c:out></td>
		<td><c:out value="${rows.bankname}"></c:out></td>
		<td><c:out value="${rows.bankaddress}"></c:out></td>
		<td><c:out value="${rows.fdno}"></c:out></td>
		<td><c:out value="${rows.fdamt}"></c:out></td>
		<td><c:out value="${rows.maturityamt}"></c:out></td>
		<td><c:out value="${rows.fddate}"></c:out></td>
		<td><c:out value="${rows.maturitydate}"></c:out></td>
		<td><c:out value="${rows.paymentby}"></c:out></td>
		<td><c:out value="${rows.remarks}"></c:out></td>
		</tr>
		</c:forEach>
		
		<c:forEach items="${list1}" var="rows">
		<tr>
		<td><c:out value="${rows.fddeposit}"></c:out></td>
		<td><c:out value="${rows.misdeposit}"></c:out></td>
		<td><c:out value="${rows.rddeposit}"></c:out></td>
		<td><c:out value="${rows.savingsdeposit}"></c:out></td>
		<td><c:out value="${rows.savingswithdrawal}"></c:out></td>
		<td><c:out value="${rows.flexideposit}"></c:out></td>
		<td><c:out value="${rows.flexiwithdrawal}"></c:out></td>
		<td><c:out value="${rows.maturityprincipal}"></c:out></td>
		<td><c:out value="${rows.totaldeposit}"></c:out></td>
		<td><c:out value="${rows.totalwithdrawal}"></c:out></td>
		<td><c:out value="${rows.totalbalance}"></c:out></td>
		<td><c:out value="${rows.previousfddeposited}"></c:out></td>
		<td><c:out value="${rows.unencumbered}"></c:out></td>
		<td><c:out value="${rows.unencumberedamount}"></c:out></td>
		<td><c:out value="${rows.bankname}"></c:out></td>
		<td><c:out value="${rows.bankaddress}"></c:out></td>
		<td><c:out value="${rows.fdno}"></c:out></td>
		<td><c:out value="${rows.fdamt}"></c:out></td>
		<td><c:out value="${rows.maturityamt}"></c:out></td>
		<td><c:out value="${rows.fddate}"></c:out></td>
		<td><c:out value="${rows.maturitydate}"></c:out></td>
		<td><c:out value="${rows.paymentby}"></c:out></td>
		<td><c:out value="${rows.remarks}"></c:out></td>
		
		</tr>
		</c:forEach>
		
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
        <!-- Select2 -->
        <script src="bower_components/select2/dist/js/select2.full.min.js"></script>
        <script src="dist/js/MandateDepositToBank.js"></script>
        
        
<script type="text/javascript">
//<![CDATA[
var Page_Validators =  new Array(document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorCurrTotalDeposit"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorCurrTotalWithdrawal"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorUnencumberberedAmt"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidator1"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorBankName"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidatortxtBankAddress"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorFDNO"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidatortFDAmt"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorMaturityAmt"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorFDDate"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorMaturityDate"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorRemarks"));
//]]>
</script>

<script type="text/javascript">
//<![CDATA[
var ContentPlaceHolder1_RequiredFieldValidatorCurrTotalDeposit = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorCurrTotalDeposit"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorCurrTotalDeposit");
ContentPlaceHolder1_RequiredFieldValidatorCurrTotalDeposit.controltovalidate = "ContentPlaceHolder1_txtCurrTotalDeposit";
ContentPlaceHolder1_RequiredFieldValidatorCurrTotalDeposit.focusOnError = "t";
ContentPlaceHolder1_RequiredFieldValidatorCurrTotalDeposit.errormessage = "EnterCurr. Total Deposit";
ContentPlaceHolder1_RequiredFieldValidatorCurrTotalDeposit.display = "Dynamic";
ContentPlaceHolder1_RequiredFieldValidatorCurrTotalDeposit.validationGroup = "V";
ContentPlaceHolder1_RequiredFieldValidatorCurrTotalDeposit.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredFieldValidatorCurrTotalDeposit.initialvalue = "";
var ContentPlaceHolder1_RequiredFieldValidatorCurrTotalWithdrawal = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorCurrTotalWithdrawal"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorCurrTotalWithdrawal");
ContentPlaceHolder1_RequiredFieldValidatorCurrTotalWithdrawal.controltovalidate = "ContentPlaceHolder1_txtCurrTotalWithdrawal";
ContentPlaceHolder1_RequiredFieldValidatorCurrTotalWithdrawal.focusOnError = "t";
ContentPlaceHolder1_RequiredFieldValidatorCurrTotalWithdrawal.errormessage = "Enter Curr. Total Withdrawal";
ContentPlaceHolder1_RequiredFieldValidatorCurrTotalWithdrawal.display = "Dynamic";
ContentPlaceHolder1_RequiredFieldValidatorCurrTotalWithdrawal.validationGroup = "V";
ContentPlaceHolder1_RequiredFieldValidatorCurrTotalWithdrawal.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredFieldValidatorCurrTotalWithdrawal.initialvalue = "";
var ContentPlaceHolder1_RequiredFieldValidatorUnencumberberedAmt = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorUnencumberberedAmt"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorUnencumberberedAmt");
ContentPlaceHolder1_RequiredFieldValidatorUnencumberberedAmt.controltovalidate = "ContentPlaceHolder1_txtUnencumberberedPer";
ContentPlaceHolder1_RequiredFieldValidatorUnencumberberedAmt.focusOnError = "t";
ContentPlaceHolder1_RequiredFieldValidatorUnencumberberedAmt.errormessage = "Enter Unencumberbered (10% ) ";
ContentPlaceHolder1_RequiredFieldValidatorUnencumberberedAmt.display = "Dynamic";
ContentPlaceHolder1_RequiredFieldValidatorUnencumberberedAmt.validationGroup = "V";
ContentPlaceHolder1_RequiredFieldValidatorUnencumberberedAmt.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredFieldValidatorUnencumberberedAmt.initialvalue = "";
var ContentPlaceHolder1_RequiredFieldValidator1 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator1"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidator1");
ContentPlaceHolder1_RequiredFieldValidator1.controltovalidate = "ContentPlaceHolder1_txtUnencumberberedAmt";
ContentPlaceHolder1_RequiredFieldValidator1.focusOnError = "t";
ContentPlaceHolder1_RequiredFieldValidator1.errormessage = "Enter Unencumberbered Amt";
ContentPlaceHolder1_RequiredFieldValidator1.display = "Dynamic";
ContentPlaceHolder1_RequiredFieldValidator1.validationGroup = "V";
ContentPlaceHolder1_RequiredFieldValidator1.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredFieldValidator1.initialvalue = "";
var ContentPlaceHolder1_RequiredFieldValidatorBankName = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorBankName"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorBankName");
ContentPlaceHolder1_RequiredFieldValidatorBankName.controltovalidate = "ContentPlaceHolder1_txtBankName";
ContentPlaceHolder1_RequiredFieldValidatorBankName.focusOnError = "t";
ContentPlaceHolder1_RequiredFieldValidatorBankName.errormessage = "Enter Bank Name";
ContentPlaceHolder1_RequiredFieldValidatorBankName.display = "Dynamic";
ContentPlaceHolder1_RequiredFieldValidatorBankName.validationGroup = "A";
ContentPlaceHolder1_RequiredFieldValidatorBankName.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredFieldValidatorBankName.initialvalue = "";
var ContentPlaceHolder1_RequiredFieldValidatortxtBankAddress = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatortxtBankAddress"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatortxtBankAddress");
ContentPlaceHolder1_RequiredFieldValidatortxtBankAddress.controltovalidate = "ContentPlaceHolder1_txtBankAddress";
ContentPlaceHolder1_RequiredFieldValidatortxtBankAddress.focusOnError = "t";
ContentPlaceHolder1_RequiredFieldValidatortxtBankAddress.errormessage = "Enter Bank Address";
ContentPlaceHolder1_RequiredFieldValidatortxtBankAddress.display = "Dynamic";
ContentPlaceHolder1_RequiredFieldValidatortxtBankAddress.validationGroup = "A";
ContentPlaceHolder1_RequiredFieldValidatortxtBankAddress.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredFieldValidatortxtBankAddress.initialvalue = "";
var ContentPlaceHolder1_RequiredFieldValidatorFDNO = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorFDNO"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorFDNO");
ContentPlaceHolder1_RequiredFieldValidatorFDNO.controltovalidate = "ContentPlaceHolder1_txtFDNO";
ContentPlaceHolder1_RequiredFieldValidatorFDNO.focusOnError = "t";
ContentPlaceHolder1_RequiredFieldValidatorFDNO.errormessage = "Enter FD NO.";
ContentPlaceHolder1_RequiredFieldValidatorFDNO.display = "Dynamic";
ContentPlaceHolder1_RequiredFieldValidatorFDNO.validationGroup = "A";
ContentPlaceHolder1_RequiredFieldValidatorFDNO.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredFieldValidatorFDNO.initialvalue = "";
var ContentPlaceHolder1_RequiredFieldValidatortFDAmt = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatortFDAmt"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatortFDAmt");
ContentPlaceHolder1_RequiredFieldValidatortFDAmt.controltovalidate = "ContentPlaceHolder1_txtFDAmt";
ContentPlaceHolder1_RequiredFieldValidatortFDAmt.focusOnError = "t";
ContentPlaceHolder1_RequiredFieldValidatortFDAmt.errormessage = "Enter FD Amt";
ContentPlaceHolder1_RequiredFieldValidatortFDAmt.display = "Dynamic";
ContentPlaceHolder1_RequiredFieldValidatortFDAmt.validationGroup = "A";
ContentPlaceHolder1_RequiredFieldValidatortFDAmt.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredFieldValidatortFDAmt.initialvalue = "";
var ContentPlaceHolder1_RequiredFieldValidatorMaturityAmt = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorMaturityAmt"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorMaturityAmt");
ContentPlaceHolder1_RequiredFieldValidatorMaturityAmt.controltovalidate = "ContentPlaceHolder1_txtMaturityAmt";
ContentPlaceHolder1_RequiredFieldValidatorMaturityAmt.focusOnError = "t";
ContentPlaceHolder1_RequiredFieldValidatorMaturityAmt.errormessage = "Enter Maturity Amt";
ContentPlaceHolder1_RequiredFieldValidatorMaturityAmt.display = "Dynamic";
ContentPlaceHolder1_RequiredFieldValidatorMaturityAmt.validationGroup = "A";
ContentPlaceHolder1_RequiredFieldValidatorMaturityAmt.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredFieldValidatorMaturityAmt.initialvalue = "";
var ContentPlaceHolder1_RequiredFieldValidatorFDDate = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorFDDate"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorFDDate");
ContentPlaceHolder1_RequiredFieldValidatorFDDate.controltovalidate = "ContentPlaceHolder1_txtFDDate";
ContentPlaceHolder1_RequiredFieldValidatorFDDate.focusOnError = "t";
ContentPlaceHolder1_RequiredFieldValidatorFDDate.errormessage = "Enter FD Date";
ContentPlaceHolder1_RequiredFieldValidatorFDDate.display = "Dynamic";
ContentPlaceHolder1_RequiredFieldValidatorFDDate.validationGroup = "A";
ContentPlaceHolder1_RequiredFieldValidatorFDDate.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredFieldValidatorFDDate.initialvalue = "";
var ContentPlaceHolder1_RequiredFieldValidatorMaturityDate = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorMaturityDate"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorMaturityDate");
ContentPlaceHolder1_RequiredFieldValidatorMaturityDate.controltovalidate = "ContentPlaceHolder1_txtMaturityDate";
ContentPlaceHolder1_RequiredFieldValidatorMaturityDate.focusOnError = "t";
ContentPlaceHolder1_RequiredFieldValidatorMaturityDate.errormessage = "Enter  Maturity Date";
ContentPlaceHolder1_RequiredFieldValidatorMaturityDate.display = "Dynamic";
ContentPlaceHolder1_RequiredFieldValidatorMaturityDate.validationGroup = "A";
ContentPlaceHolder1_RequiredFieldValidatorMaturityDate.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredFieldValidatorMaturityDate.initialvalue = "";
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
        
document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorCurrTotalDeposit').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorCurrTotalDeposit'));
}

document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorCurrTotalWithdrawal').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorCurrTotalWithdrawal'));
}

document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorUnencumberberedAmt').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorUnencumberberedAmt'));
}

document.getElementById('ContentPlaceHolder1_RequiredFieldValidator1').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator1'));
}

document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorBankName').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorBankName'));
}

document.getElementById('ContentPlaceHolder1_RequiredFieldValidatortxtBankAddress').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatortxtBankAddress'));
}

document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorFDNO').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorFDNO'));
}

document.getElementById('ContentPlaceHolder1_RequiredFieldValidatortFDAmt').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatortFDAmt'));
}

document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorMaturityAmt').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorMaturityAmt'));
}

document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorFDDate').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorFDDate'));
}

document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorMaturityDate').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorMaturityDate'));
}

document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorRemarks').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorRemarks'));
}
//]]>
</script>

</body>

<!-- Dk/Admin/UnencumberedTermDeposit.aspx by <!-----EDB------> -->
</html>
