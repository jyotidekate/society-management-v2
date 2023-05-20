<jsp:include page="../header.jsp" />
<script src="jquery-3.6.3.min.js"></script>
<script>
	$(document).ready(function(){
		$("#hideshowtable").hide();
		
		$("#hide").click(function(){
			$("#hideshowtable").hide();
		});
		
		$("#show").click(function(){
			$("#hideshowtable").show();
		});
	});
</script>
<body onload="getAllBranchMasterForAddBank();getAllAddedBank()" class="skin-blue sidebar-mini" style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);" cz-shortcut-listen="true">
   <form method="post" action="saveBankAccount"   modelAttribute="saveBankAccount" id="form1" name="addBank">
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
               <h1 id="ContentPlaceHolder1_IdHeader">Add Bank</h1>
               <ol class="breadcrumb">
                  <li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
                  <li><a href="#">Dashboard</a></li>
                  <li class="active">Add Bank</li>
               </ol>
            </section>
            <section class="content">
               <div class="row">
                  <div class="col-md-12">
                     <div class="box box-success">
                        <div class="box-header with-border">
                           <h3 class="box-title">Bank Details</h3>
                        </div>
                        <div class="box-body">
                           <div class="col-md-6">
                              <div class="form-group row">
                                 <label class="col-sm-4 control-label">Bank Name :</label>
                                 <div class="col-sm-8">
                                    <select name="bankName" id="bankName" class="form-control select2" style="width: 100%;">
                                       <option value="" selected>Select Bank Name</option>
                                       <option value="Au Small Finance Bank">Au Small Finance Bank</option>
                                       <option value="Axis Bank">Axis Bank</option>
                                       <option value="Bandhan Bank">Bandhan Bank</option>
                                       <option value="Bank of Bahrain and Kuwait">Bank of Bahrain and Kuwait</option>
                                       <option value="Bank of Baroda">Bank of Baroda</option>
                                       <option value="Bank of India">Bank of India</option>
                                       <option value="Bank of Maharashtra">Bank of Maharashtra</option>
                                       <option value="Bhartiya Mahila Bank">Bhartiya Mahila Bank</option>
                                       <option value="buxar gramin Bank">buxar gramin Bank</option>
                                       <option value="Canara Bank">Canara Bank</option>
                                       <option value="Catholic Syrian Bank">Catholic Syrian Bank</option>
                                       <option value="Central Bank of India">Central Bank of India</option>
                                       <option value="Citibank">Citibank</option>
                                       <option value="City Union Bank">City Union Bank</option>
                                       <option value="Corporation Bank">Corporation Bank</option>
                                       <option value="Cosmos Bank">Cosmos Bank</option>
                                       <option value="DCB BANK Business">DCB BANK Business</option>
                                       <option value="DCB BANK Personal">DCB BANK Personal </option>
                                       <option value="Deutsche Bank">Deutsche Bank</option>
                                       <option value="Dhanlaxmi Bank">Dhanlaxmi Bank</option>
                                       <option value="Federal Bank">Federal Bank</option>
                                       <option value="HDFC Bank Limited">HDFC Bank Limited</option>
                                       <option value="ICICI Bank">ICICI Bank</option>
                                       <option value="IDBI Bank">IDBI Bank</option>
                                       <option value="Indian Bank">Indian Bank</option>
                                       <option value="Indian Overseas Bank">Indian Overseas Bank</option>
                                       <option value="IndusInd Bank">IndusInd Bank</option>
                                       <option value="ING Vysya Bank (Now Kotak Bank)">ING Vysya Bank (Now Kotak Bank)</option>
                                       <option value="Jammu and Kashmir Bank">Jammu and Kashmir Bank</option>
                                       <option value="Jana Small Finance Bank">Jana Small Finance Bank</option>
                                       <option value="Janata Sahakari Bank">Janata Sahakari Bank</option>
                                       <option value="Karnataka Bank">Karnataka Bank</option>
                                       <option value="Karur Vysya Bank">Karur Vysya Bank</option>
                                       <option value="Kotak Bank">Kotak Bank</option>
                                       <option value="Lakshmi Vilas Bank">Lakshmi Vilas Bank</option>
                                       <option value="Maharashtra Co-operative">Maharashtra Co-operative</option>
                                       <option value="NKGSB Bank">NKGSB Bank</option>
                                       <option value="Oriental Bank of Commerce">Oriental Bank of Commerce</option>
                                       <option value="Punjab and Sind Bank">Punjab and Sind Bank</option>
                                       <option value="Punjab National Bank">Punjab National Bank</option>
                                       <option value="Ratnakar Bank">Ratnakar Bank</option>
                                       <option value="RBL Bank">RBL Bank</option>
                                       <option value="RBS (The Royal Bank of Scotland)">RBS (The Royal Bank of Scotland)</option>
                                       <option value="Saraswat Bank">Saraswat Bank</option>
                                       <option value="South Indian Bank Ltd">South Indian Bank Ltd</option>
                                       <option value="Standard Chartered Bank">Standard Chartered Bank </option>
                                       <option value="State Bank of Bikaner and Jaipur">State Bank of Bikaner and Jaipur</option>
                                       <option value="State Bank of Hyderabad">State Bank of Hyderabad</option>
                                       <option value="State Bank of India">State Bank of India</option>
                                       <option value="State Bank of Mysore">State Bank of Mysore</option>
                                       <option value="State Bank of Patiala">State Bank of Patiala</option>
                                       <option value="State Bank of Travancore">State Bank of Travancore</option>
                                       <option value="Syndicate Bank">Syndicate Bank</option>
                                       <option value="Tamilnad Mercantile Bank">Tamilnad Mercantile Bank</option>
                                       <option value="TNSC Bank">TNSC Bank</option>
                                       <option value="UCO Bank">UCO Bank</option>
                                       <option value="Union Bank of India">Union Bank of India</option>
                                       <option value="United Bank of India">United Bank of India</option>
                                       <option value="Utkarsh small finance bank">Utkarsh small finance bank</option>
                                       <option value="Vijaya Bank">Vijaya Bank</option>
                                       <option value="YES Bank">YES Bank</option>
                                    </select>
                                    <span id="bankNameMsg" style="color:Red;font-size:X-Small;font-weight:bold;display:none;"></span>
                                    
                                 </div>
                              </div>
                              <div class="form-group row">
                                 <label class="col-sm-4 control-label">Account No :</label>
                                 <div class="col-sm-8">
                                    <input name="accountNo" type="text" id="accountNo" class="form-control" Placeholder="Enter Account No" autocomplete="off" />
                                    <span id="accountNoMsg" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Account No.</span>
                                 </div>
                              </div>
                              <div class="form-group row">
                                 <label class="col-sm-4 control-label">Mobile No. :</label>
                                 <div class="col-sm-8">
                                    <input name="mobileNo" type="text" id="mobileNo" class="form-control" Placeholder="Enter Mobile No." autocomplete="off" />
                                 </div>
                              </div>
                              <div class="form-group row">
                                 <label class="col-sm-4 control-label">Address :</label>
                                 <div class="col-sm-8">
                                    <input name="address" type="text" id="address" class="form-control" Placeholder="Enter Address" autocomplete="off" />
                                 </div>
                              </div>
                              <div class="form-group row">
                                 <label class="col-sm-4 control-label">Opening Date :</label>
                                 <div class="col-sm-8">
                                    <div class="input-group date">
                                       <div class="input-group-addon">
                                          <i class="fa fa-calendar"></i>
                                       </div>
                                      <input name="openingDate" type="date" value="01/08/2022"  id="openingDate" class="form-control" data-inputmask="" data-mask="" />
                                    </div>
                                    <span id="ContentPlaceHolder1_RequiredFieldValidator1" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Op. Date</span>
                                 </div>
                              </div>
                              <div class="form-group row">
                                 <label class="col-sm-4 control-label">Op. Balance :</label>
                                 <div class="col-sm-8">
                                    <input name="openingBalance" type="text" id="openingBalance" class="form-control" autocomplete="off" />
                                    <span id="ContentPlaceHolder1_RequiredFieldValidator2" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Op. Balance</span>
                                 </div>
                              </div>
                           </div>
                           <div class="col-md-6">
                              <div>
 
                                 <table cellspacing="0" cellpadding="3" rules="all" 
                                 class="display nowrap table table-hover table-striped table-bordered" 
                                 border="1"  style="width:100%;border-collapse:collapse;">
                                 <caption>
                                  Branch Access List
                                 </caption>
                                 <tr style="color:White;background-color:#008385;">
                                   <th scope="col">B.CODE</th>
                                    <th scope="col">B.NAME</th>
                                    <th scope="col">Check</th>
                                 </tr>
                                  <tbody id="ContentPlaceHolder1_gdvBranchAddBank">
                                 </tbody>
                                 </table>
                                 <span id="mappedBranchMsg" style="color:Red;font-size:X-Small;font-weight:bold;display:none;"></span>
                            
                              </div>
                           </div>
                        </div>
                        <div class="box-footer">
                        
                           <div class="row col-md-12">
                           
                              <button type="button" name="save" value="Save" 
                              id="save" class="btn btn-success pull-right margin-r-5"
                              onclick="validateAddBank()">Save</button>
                              
                              <button type="button" name="hide" value="hide" 
                              id="hide" class="btn btn-success pull-right margin-r-5"
                              >Hide</button>
                              
                              <button type="button" name="show" value="show" 
                              id="show" class="btn btn-success pull-right margin-r-5"
                              >Show</button>
                              
                           </div>
                           
                        </div>
                     </div>
                     <div class="box box-success" style="box-shadow: none; overflow: auto !important;">
                        <div class="box-body">
                           <div class="clearfix margin-bottom-10"></div>
                           <div>
                              
                              <section id="hideshowtable">
                              <table cellspacing="0" cellpadding="3" rules="all" 
                              class="display nowrap table table-hover table-striped table-bordered" 
                              border="1"  style="width:100%;border-collapse:collapse;">
                                 <caption>
                                   
                                    Member Data List
                                  
                                 </caption>
                                 	<tr style="color:White;background-color:#008385;">
                                    <th scope="col">SlNo</th>
                                    <th scope="col">Account No</th>
                                    <th scope="col">Bank Name</th>
                                    <th scope="col">Mobile No.</th>
                                    <th scope="col">Op. Date</th>
                                    <th scope="col">Op. Balance</th>
                                    </tr>
                                  <tbody id="ContentPlaceHolder1_gdvDataAddBank">
                                    
      							  </tbody>
                    		 </table>
                    		 </section>
                              
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
         var Page_Validators =  new Array(document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorState"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidator1"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidator2"));
         //]]>
      </script>
      <script type="text/javascript">
         //<![CDATA[
         var ContentPlaceHolder1_RequiredFieldValidatorState = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorState"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorState");
         ContentPlaceHolder1_RequiredFieldValidatorState.controltovalidate = "ContentPlaceHolder1_txtAccountNo";
         ContentPlaceHolder1_RequiredFieldValidatorState.focusOnError = "t";
         ContentPlaceHolder1_RequiredFieldValidatorState.errormessage = "Enter Account No.";
         ContentPlaceHolder1_RequiredFieldValidatorState.display = "Dynamic";
         ContentPlaceHolder1_RequiredFieldValidatorState.validationGroup = "A";
         ContentPlaceHolder1_RequiredFieldValidatorState.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
         ContentPlaceHolder1_RequiredFieldValidatorState.initialvalue = "";
         var ContentPlaceHolder1_RequiredFieldValidator1 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator1"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidator1");
         ContentPlaceHolder1_RequiredFieldValidator1.controltovalidate = "ContentPlaceHolder1_txtTDate";
         ContentPlaceHolder1_RequiredFieldValidator1.focusOnError = "t";
         ContentPlaceHolder1_RequiredFieldValidator1.errormessage = "Enter Op. Date";
         ContentPlaceHolder1_RequiredFieldValidator1.display = "Dynamic";
         ContentPlaceHolder1_RequiredFieldValidator1.validationGroup = "A";
         ContentPlaceHolder1_RequiredFieldValidator1.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
         ContentPlaceHolder1_RequiredFieldValidator1.initialvalue = "";
         var ContentPlaceHolder1_RequiredFieldValidator2 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator2"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidator2");
         ContentPlaceHolder1_RequiredFieldValidator2.controltovalidate = "ContentPlaceHolder1_txtOpBal";
         ContentPlaceHolder1_RequiredFieldValidator2.focusOnError = "t";
         ContentPlaceHolder1_RequiredFieldValidator2.errormessage = "Enter Op. Balance";
         ContentPlaceHolder1_RequiredFieldValidator2.display = "Dynamic";
         ContentPlaceHolder1_RequiredFieldValidator2.validationGroup = "A";
         ContentPlaceHolder1_RequiredFieldValidator2.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
         ContentPlaceHolder1_RequiredFieldValidator2.initialvalue = "";
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
                 
         document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorState').dispose = function() {
             Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorState'));
         }
         
         document.getElementById('ContentPlaceHolder1_RequiredFieldValidator1').dispose = function() {
             Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator1'));
         }
         
         document.getElementById('ContentPlaceHolder1_RequiredFieldValidator2').dispose = function() {
             Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator2'));
         }
         //]]>
      </script>
   </form>
</body>
</html>