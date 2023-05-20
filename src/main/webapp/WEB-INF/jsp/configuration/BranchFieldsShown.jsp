<jsp:include page="../header.jsp" />
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<body  onload="" class="skin-blue sidebar-mini" style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);" cz-shortcut-listen="true">
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
                 <li class="active">view / edit</li>
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
                        <c:forEach var = "row" items ="${list}">
                        	<input type="hidden" name="id" id="id"  value="${row.id}"/>
                           <div class="col-md-6">
                              <div class="form-group row">
                                 <label class="col-sm-4 control-label">Branch Code <strong style="color: Red">*</strong></label>
                                 <div class="col-sm-8">
                                    <input name="code" type="text" value="${row.branchCode}" maxlength="10" id="code" class="form-control" placeholder="Enter Branch Code" autocomplete="off" disabled />
                                    <span id="branchCodeMsg" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Code</span>
                                 </div>
                              </div>
                              <div class="form-group row">
                                 <label  class="col-sm-4 control-label">Branch Name <strong style="color: Red">*</strong></label>
                                 <div class="col-sm-8">
                                    <input name="name" type="text" id="name" value="${row.name}" class="form-control" placeholder="Enter Branch Name" autocomplete="off" disabled/>
                                    <span id="branchNameMsg" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Branch Name</span>
                                 </div>
                              </div>
                              <div class="form-group row">
                                 <label  class="col-sm-4 control-label">Opening Date <strong style="color: Red">*</strong></label> 
                                 <div class="col-sm-8">
                                    <div class="input-group date">
                                      
                                       <input name="openingDate" type="date" id="openingDate" value="${row.openingDate}" class="form-control" data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;" data-mask="" disabled/>
                                    </div>
                                    <span id="openingDateMsg" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Opening Date</span>
                                 </div>
                              </div>
                              <div class="form-group row">
                                 <label for="txtAddress" class="col-sm-4 control-label">Address <strong style="color: Red">*</strong></label>
                                 <div class="col-sm-8">
                                    <textarea name="address" rows="2" cols="20" id="address"  class="form-control" placeholder="Enter Branch Address" autocomplete="off" disabled>${row.address}
                                    </textarea>
                                    <span id="addressMsg" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Address</span>
                                 </div>
                              </div>
                           </div>
                           <div class="col-md-6">
                              <div class="form-group row">
                                 <label for="txtPin" class="col-sm-4 control-label">PIN <strong style="color: Red">*</strong></label>
                                 <div class="col-sm-8">
                                    <input name="pin" type="text" maxlength="7" id="pin" value="${row.pin}" class="form-control" onkeypress="return isNumberOnlyKey(this, event);" disabled />
                                    <span id="pinMsg" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Pin</span>
                                 </div>
                              </div>
                              <div class="form-group row">
                                 <label for="ddlState" class="col-sm-4 control-label">State <strong style="color: Red">*</strong></label>
                                 <div class="col-sm-8">
                                    <select name="state" id="state" class="form-control select2" style="width: 100%;" disabled>
                                       <option value="${row.state}">--Select--</option>
                                       <option name="ANDRA PRADESH" 
                                       <c:if test="${row.state=='ANDRA PRADESH'}">selected="selected"</c:if>
                                       >ANDRA PRADESH</option>
                                       <option name="ARUNACHAL PRADESH" 
                                       <c:if test="${row.state=='ARUNACHAL PRADESH'}">selected="selected"</c:if>
                                       >ARUNACHAL PRADESH</option>
                                       <option name="ASSAM" 
                                       <c:if test="${row.state=='ASSAM'}">selected="selected"</c:if>
                                       >ASSAM</option>
                                       <option name="BIHAR" 
                                       <c:if test="${row.state=='BIHAR'}">selected="selected"</c:if>
                                       >BIHAR</option>
                                       <option name="CHHATTISGARH" 
                                       <c:if test="${row.state=='CHHATTISGARH'}">selected="selected"</c:if>
                                       >CHHATTISGARH</option>
                                       <option name="DELHI" 
                                       <c:if test="${row.state=='DELHI'}">selected="selected"</c:if>
                                       >DELHI</option>
                                       <option name="GUJARAT" 
                                       <c:if test="${row.state=='GUJARAT'}">selected="selected"</c:if>
                                       >GUJARAT</option>
                                       <option name="HARYANA" 
                                       <c:if test="${row.state=='HARYANA'}">selected="selected"</c:if>
                                       >HARYANA</option>
                                       <option name="HIMACHAL PRADESH" 
                                       <c:if test="${row.state=='HIMACHAL PRADESH'}">selected="selected"</c:if>
                                       >HIMACHAL PRADESH</option>
                                       <option name="JAMMU AND KASHMIR" 
                                       <c:if test="${row.state=='JAMMU AND KASHMIR'}">selected="selected"</c:if>
                                       >JAMMU AND KASHMIR</option>
                                       <option name="JHARKHAND" 
                                       <c:if test="${row.state=='JHARKHAND'}">selected="selected"</c:if>
                                       >JHARKHAND</option>
                                       <option name="KARNATAKA" 
                                       <c:if test="${row.state=='KARNATAKA'}">selected="selected"</c:if>
                                       >KARNATAKA</option>
                                       <option name="KERALA" 
                                       <c:if test="${row.state=='KERALA'}">selected="selected"</c:if>
                                       >KERALA</option>
                                       <option name="MADYA PRADESH" 
                                       <c:if test="${row.state=='MADYA PRADESH'}">selected="selected"</c:if>
                                       >MADYA PRADESH</option>
                                       <option name="MAHARASHTRA" 
                                       <c:if test="${row.state=='MAHARASHTRA'}">selected="selected"</c:if>
                                       >MAHARASHTRA</option>
                                       <option name="MANIPUR" 
                                       <c:if test="${row.state=='MANIPUR'}">selected="selected"</c:if>
                                       >MANIPUR</option>
                                       <option name="MEGHALAYA" 
                                       <c:if test="${row.state=='MEGHALAYA'}">selected="selected"</c:if>
                                       >MEGHALAYA</option>
                                       <option name="MIZORAM" 
                                       <c:if test="${row.state=='MIZORAM'}">selected="selected"</c:if>
                                       >MIZORAM</option>
                                       <option name="NAGALAND" 
                                       <c:if test="${row.state=='NAGALAND'}">selected="selected"</c:if>
                                       >NAGALAND</option>
                                       <option name="ODISSA" 
                                       <c:if test="${row.state=='ODISSA'}">selected="selected"</c:if>
                                       >ODISSA</option>
                                       <option name="PUNJAB" 
                                       <c:if test="${row.state=='PUNJAB'}">selected="selected"</c:if>
                                       >PUNJAB</option>
                                       <option name="RAJASTHAN" 
                                       <c:if test="${row.state=='RAJASTHAN'}">selected="selected"</c:if>
                                       >RAJASTHAN</option>
                                       <option name="SIKKIM" 
                                       <c:if test="${row.state=='SIKKIM'}">selected="selected"</c:if>
                                       >SIKKIM</option>
                                       <option name="TAMIL NADU" 
                                       <c:if test="${row.state=='TAMIL NADU'}">selected="selected"</c:if>
                                       >TAMIL NADU</option>
                                       <option name="TRIPURA" 
                                       <c:if test="${row.state=='TRIPURA'}">selected="selected"</c:if>
                                       >TRIPURA</option>
                                       <option name="UTTAR PRADESH" 
                                       <c:if test="${row.state=='UTTAR PRADESH'}">selected="selected"</c:if>
                                       >UTTAR PRADESH</option>
                                       <option name="UTTARAKHAND" 
                                       <c:if test="${row.state=='UTTARAKHAND'}">selected="selected"</c:if>
                                       >UTTARAKHAND</option>
                                       <option name="WEST BENGAL" 
                                       <c:if test="${row.state=='WEST BENGAL'}">selected="selected"</c:if>
                                       >WEST BENGAL</option>
                                    </select>
                                    <span id="stateMsg" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Select State</span>
                                 </div>
                              </div>
                              <div class="form-group row">
                                 <label  class="col-sm-4 control-label">Contact Person </label>
                                 <div class="col-sm-8">
                                    <input name="contactPerson" type="text" id="contactPerson" value="${row.contactPerson}" class="form-control" placeholder="Contact Person Name" autocomplete="off" disabled/>
                                    <span id="contactPersonMsg" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Person Name</span>
                                 </div>
                              </div>
                              <div class="form-group row">
                                 <label class="col-sm-4 control-label">Contact No.</label>
                                 <div class="col-sm-8">
                                    <input name="contactNo" type="text" maxlength="10" id="contactNo" value="${row.contactNo}" class="form-control" onkeypress="return isNumberOnlyKey(this, event);" autocomplete="off" disabled/>
                                    <span id="contactNoMsg" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Contact No</span>
                                 </div>
                              </div>
                           </div>
                        </c:forEach>
                     </div>
                      <div class="box-footer">
                           <div class="row col-md-12">
                             
                              <button type="button" name="editBtn" value="Edit"
                               onclick="editBranchMaster();"
                               id="editBtn" class="btn btn-success pull-right margin-r-5">Edit</button>
                               
                               <button type="button" name="updateBtn" value="update"
                               onclick="updateBranchMasterById();"
                               id="updateBtn" class="btn btn-success pull-right margin-r-5" disabled>Update</button>
                           
                           	
                           
                           </div>
                        </div>
                  </div>
               </div>
            </div>
         </section>
      </div>
      <!-- Branch Master Ajax -->
      <script src="dist/js/config.js"></script>
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
   </div>
</body>
</html>