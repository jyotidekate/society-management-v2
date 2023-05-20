
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
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>


<body  onload="getAllBranchMaster();" class="skin-blue sidebar-mini" style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);" cz-shortcut-listen="true">

       

<!--    <form  action="saveBranchMaster" modelAttribute="" name="addBranch" id="form1"> -->
      <div style="height: auto; min-height: 100%; border-radius: 30px; margin: 15px; background: url(dist/img/back.jpg);">
         <!-- Header Start-->
         <jsp:include page="../menu.jsp" />
         <!-- Header End -->
         <!-- Left side column. contains the logo and sidebar -->
         <!-- Aside Menu Start-->
         <jsp:include page="../asideMenu.jsp" />
         <!-- Aside Menu end -->

         <!-- Content Wrapper. Contains page content -->
         
         <div class="content-wrapper" style="min-height: 1105.75px;">
            <section class="content-header">
               <h1 id="ContentPlaceHolder1_IdHeader">Add Branch</h1>
               <ol class="breadcrumb">
                  <li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
                  <li><a href="#">Dashboard</a></li>
                  <li class="active">Branch</li>
               </ol>
            </section>
            <section class="content">
               <div class="row">
                  <div class="col-md-12">
                     <div class="box box-success">
                        <div class="box-header with-border">
                           <h3 class="box-title">Branch Details </h3>
                        </div>
                        <div class="box-body">
                           <div class="col-md-6">
                              <div class="form-group row">
                                 <label class="col-sm-4 control-label">Branch Code <strong style="color: Red">*</strong></label>
                                 <div class="col-sm-8">
                                
                                 <input name="code" type="text" maxlength="10" id="code" class="form-control" placeholder="Enter Branch Code" autocomplete="off" />
                                
           
                                 <span id="branchCodeMsg" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Code</span>
                                 </div>
                              </div>
                              <div class="form-group row">
                                 <label  class="col-sm-4 control-label">Branch Name <strong style="color: Red">*</strong></label>
                                 <div class="col-sm-8">
                                    <input name="name" type="text" id="name" class="form-control" placeholder="Enter Branch Name" autocomplete="off" />
                                    <span id="branchNameMsg" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Branch Name</span>
                                 </div>
                              </div>
                              <div class="form-group row">
                                 <label  class="col-sm-4 control-label">Opening Date <strong style="color: Red">*</strong></label> 
                                 <div class="col-sm-8">
                                    <div class="input-group date">
                                      
                                       <input name="openingDate" type="date" id="openingDate" class="form-control" data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;" data-mask="" />
                                    </div>
                                    <span id="openingDateMsg" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Opening Date</span>
                                 </div>
                              </div>
                              <div class="form-group row">
                                 <label for="txtAddress" class="col-sm-4 control-label">Address <strong style="color: Red">*</strong></label>
                                 <div class="col-sm-8">
                                    <textarea name="address" rows="2" cols="20" id="address" class="form-control" placeholder="Enter Branch Address" autocomplete="off">
                                    </textarea>
                                    <span id="addressMsg" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Address</span>
                                 </div>
                              </div>
                           </div>
                           <div class="col-md-6">
                              <div class="form-group row">
                                 <label for="txtPin" class="col-sm-4 control-label">PIN <strong style="color: Red">*</strong></label>
                                 <div class="col-sm-8">
                                    <input name="pin" type="text" maxlength="7" id="pin" class="form-control" onkeypress="return isNumberOnlyKey(this, event);" />
                                    <span id="pinMsg" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Pin</span>
                                 </div>
                              </div>
                              <div class="form-group row">
                                 <label for="ddlState" class="col-sm-4 control-label">State <strong style="color: Red">*</strong></label>
                                 <div class="col-sm-8">
                                    <select name="state" id="state" class="form-control select2" style="width: 100%;">
                                       <option selected="selected" value="">--Select--</option>
                                       <option value="ANDRA PRADESH">ANDRA PRADESH</option>
                                       <option value="ARUNACHAL PRADESH">ARUNACHAL PRADESH</option>
                                       <option value="ASSAM">ASSAM</option>
                                       <option value="BIHAR">BIHAR</option>
                                       <option value="CHHATTISGARH">CHHATTISGARH</option>
                                       <option value="DELHI">DELHI</option>
                                       <option value="GUJARAT">GUJARAT</option>
                                       <option value="HARYANA">HARYANA</option>
                                       <option value="HIMACHAL PRADESH">HIMACHAL PRADESH</option>
                                       <option value="JAMMU AND KASHMIR">JAMMU AND KASHMIR</option>
                                       <option value="JHARKHAND">JHARKHAND</option>
                                       <option value="KARNATAKA">KARNATAKA</option>
                                       <option value="KERALA">KERALA</option>
                                       <option value="MADYA PRADESH">MADYA PRADESH</option>
                                       <option value="MAHARASHTRA">MAHARASHTRA</option>
                                       <option value="MANIPUR">MANIPUR</option>
                                       <option value="MEGHALAYA">MEGHALAYA</option>
                                       <option value="MIZORAM">MIZORAM</option>
                                       <option value="NAGALAND">NAGALAND</option>
                                       <option value="ODISSA">ODISSA</option>
                                       <option value="PUNJAB">PUNJAB</option>
                                       <option value="RAJASTHAN">RAJASTHAN</option>
                                       <option value="SIKKIM">SIKKIM</option>
                                       <option value="TAMIL NADU">TAMIL NADU</option>
                                       <option value="TRIPURA">TRIPURA</option>
                                       <option value="UTTAR PRADESH">UTTAR PRADESH</option>
                                       <option value="UTTARAKHAND">UTTARAKHAND</option>
                                       <option value="WEST BENGAL">WEST BENGAL</option>
                                    </select>
                                    <span id="stateMsg" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Select State</span>
                                 </div>
                              </div>
                              <div class="form-group row">
                                 <label  class="col-sm-4 control-label">Contact Person </label>
                                 <div class="col-sm-8">
                                    <input name="contactPerson" type="text" id="contactPerson" class="form-control" placeholder="Contact Person Name" autocomplete="off" />
                                    <span id="contactPersonMsg" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Person Name</span>
                                 </div>
                              </div>
                              <div class="form-group row">
                                 <label class="col-sm-4 control-label">Contact No.</label>
                                 <div class="col-sm-8">
                                    <input name="contactNo" type="text" maxlength="10" id="contactNo" class="form-control" onkeypress="return isNumberOnlyKey(this, event);" autocomplete="off" />
                                    <span id="contactNoMsg" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Contact No</span>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="box-footer">
                           <div class="row col-md-12">
                             
                              <button type="button" name="savebtn" value="Save"
                               onclick="saveDataBranchMaster();"
                               id="savebtn" class="btn btn-success pull-right margin-r-5">Save</button>
                               
                               <button type="button" name="hide" value="hide" 
                              id="hide" class="btn btn-success pull-right margin-r-5"
                              >Hide</button>
                              
                              <button type="button" name="show" value="show" 
                              id="show" class="btn btn-success pull-right margin-r-5"
                              >Show</button>
                              
                           </div>
                        </div>
                     </div>
                     
                     <div class="box box-success" style="box-shadow:none;overflow:auto !important;">
                        <div class="box-body">
                           <div class="clearfix margin-bottom-10"></div>
                           <div>   
                               
                               <section id="hideshowtable">
                              <table cellspacing="0" cellpadding="3" rules="all" 
                              class="display nowrap table table-hover table-striped table-bordered" 
                              border="1"  style="width:100%;border-collapse:collapse;">
                                 <caption>
                                   
                                 </caption>
                                 	<tr style="color:White;background-color:#008385;">
                                    <th scope="col">SlNo</th>
                                    <th scope="col">BRANCH CODE</th>
                                    <th scope="col">BRANCH NAME</th>
                                    <th scope="col">OPENING DATE</th>
                                    <th scope="col">PIN</th>
                                    <th scope="col">STATE</th>
                                    <th scope="col">CONTACT PERSON</th>
                                    <th scope="col">CONTACT NO.</th>
                                    <th scope="col">Action</th>
                                    </tr>
                                  <tbody id="ContentPlaceHolder1_gdvData-branchMaster">
                                  
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
      <!-- Branch Master Ajax -->
      <script src="dist/js/config.js"></script>
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
         var Page_Validators =  new Array(document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorBranchCode"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorBranchName"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidator5"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorAddress"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorPin"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorState"));
         //]]>
      </script>
      <script type="text/javascript">
         //<![CDATA[
         var ContentPlaceHolder1_RequiredFieldValidatorBranchCode = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorBranchCode"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorBranchCode");
         ContentPlaceHolder1_RequiredFieldValidatorBranchCode.controltovalidate = "ContentPlaceHolder1_txtBranchCode";
         ContentPlaceHolder1_RequiredFieldValidatorBranchCode.focusOnError = "t";
         ContentPlaceHolder1_RequiredFieldValidatorBranchCode.errormessage = "Enter Code";
         ContentPlaceHolder1_RequiredFieldValidatorBranchCode.display = "Dynamic";
         ContentPlaceHolder1_RequiredFieldValidatorBranchCode.validationGroup = "A";
         ContentPlaceHolder1_RequiredFieldValidatorBranchCode.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
         ContentPlaceHolder1_RequiredFieldValidatorBranchCode.initialvalue = "";
         var ContentPlaceHolder1_RequiredFieldValidatorBranchName = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorBranchName"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorBranchName");
         ContentPlaceHolder1_RequiredFieldValidatorBranchName.controltovalidate = "ContentPlaceHolder1_txtBranchName";
         ContentPlaceHolder1_RequiredFieldValidatorBranchName.focusOnError = "t";
         ContentPlaceHolder1_RequiredFieldValidatorBranchName.errormessage = "Enter Branch Name";
         ContentPlaceHolder1_RequiredFieldValidatorBranchName.display = "Dynamic";
         ContentPlaceHolder1_RequiredFieldValidatorBranchName.validationGroup = "A";
         ContentPlaceHolder1_RequiredFieldValidatorBranchName.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
         ContentPlaceHolder1_RequiredFieldValidatorBranchName.initialvalue = "";
         var ContentPlaceHolder1_RequiredFieldValidator5 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator5"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidator5");
         ContentPlaceHolder1_RequiredFieldValidator5.controltovalidate = "ContentPlaceHolder1_txtOpeningDate";
         ContentPlaceHolder1_RequiredFieldValidator5.focusOnError = "t";
         ContentPlaceHolder1_RequiredFieldValidator5.errormessage = "Enter Opening Date";
         ContentPlaceHolder1_RequiredFieldValidator5.display = "Dynamic";
         ContentPlaceHolder1_RequiredFieldValidator5.validationGroup = "A";
         ContentPlaceHolder1_RequiredFieldValidator5.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
         ContentPlaceHolder1_RequiredFieldValidator5.initialvalue = "";
         var ContentPlaceHolder1_RequiredFieldValidatorAddress = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorAddress"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorAddress");
         ContentPlaceHolder1_RequiredFieldValidatorAddress.controltovalidate = "ContentPlaceHolder1_txtAddress";
         ContentPlaceHolder1_RequiredFieldValidatorAddress.focusOnError = "t";
         ContentPlaceHolder1_RequiredFieldValidatorAddress.errormessage = "Enter Address";
         ContentPlaceHolder1_RequiredFieldValidatorAddress.display = "Dynamic";
         ContentPlaceHolder1_RequiredFieldValidatorAddress.validationGroup = "A";
         ContentPlaceHolder1_RequiredFieldValidatorAddress.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
         ContentPlaceHolder1_RequiredFieldValidatorAddress.initialvalue = "";
         var ContentPlaceHolder1_RequiredFieldValidatorPin = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorPin"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorPin");
         ContentPlaceHolder1_RequiredFieldValidatorPin.controltovalidate = "ContentPlaceHolder1_txtPin";
         ContentPlaceHolder1_RequiredFieldValidatorPin.focusOnError = "t";
         ContentPlaceHolder1_RequiredFieldValidatorPin.errormessage = "Enter Pin";
         ContentPlaceHolder1_RequiredFieldValidatorPin.display = "Dynamic";
         ContentPlaceHolder1_RequiredFieldValidatorPin.validationGroup = "A";
         ContentPlaceHolder1_RequiredFieldValidatorPin.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
         ContentPlaceHolder1_RequiredFieldValidatorPin.initialvalue = "";
         var ContentPlaceHolder1_RequiredFieldValidatorState = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorState"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorState");
         ContentPlaceHolder1_RequiredFieldValidatorState.controltovalidate = "ContentPlaceHolder1_ddlState";
         ContentPlaceHolder1_RequiredFieldValidatorState.focusOnError = "t";
         ContentPlaceHolder1_RequiredFieldValidatorState.errormessage = "Select State";
         ContentPlaceHolder1_RequiredFieldValidatorState.display = "Dynamic";
         ContentPlaceHolder1_RequiredFieldValidatorState.validationGroup = "A";
         ContentPlaceHolder1_RequiredFieldValidatorState.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
         ContentPlaceHolder1_RequiredFieldValidatorState.initialvalue = "--Select--";
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
                 
         document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorBranchCode').dispose = function() {
             Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorBranchCode'));
         }
         
         document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorBranchName').dispose = function() {
             Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorBranchName'));
         }
         
         document.getElementById('ContentPlaceHolder1_RequiredFieldValidator5').dispose = function() {
             Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator5'));
         }
         
         document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorAddress').dispose = function() {
             Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorAddress'));
         }
         
         document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorPin').dispose = function() {
             Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorPin'));
         }
         
         document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorState').dispose = function() {
             Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorState'));
         }
         //]]>
      </script>
   </form>
</body>
</html>