<jsp:include page="../header.jsp" />
<body class="skin-blue sidebar-mini" style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);" cz-shortcut-listen="true">
   <form method="post" action="" id="form1">
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
               <h1 id="ContentPlaceHolder1_IdHeader">Search Employee</h1>
               <ol class="breadcrumb">
                  <li><a href="Home.html"><i class="fa fa-dashboard"></i> Home</a></li>
                  <li><a href="#">Dashboard</a></li>
                  <li class="active">Search Employee</li>
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
                                 <label>Branch :</label>
                                 <select name="branch" id="branch" class="form-control select2" style="width: 100%;">
                                    <option value="All">All Branch</option>
                                    <option value="001">Main Office - 001</option>
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
                                    <input name="FDate" type="text" value="01/08/2022" id="FDate" class="form-control" data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;" data-mask="" />                          
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
                                    <input name="TDate" type="text" value="01/08/2022" id="TDate" class="form-control" data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;" data-mask="" />
                                 </div>
                              </div>
                           </div>
                           <div class="col-md-3">
                              <div class="form-group">
                                 <label>Employee Name :</label>
                                 <input name="memberName" type="text" id="memberName" class="form-control" Placeholder="Enter Employee Name" autocomplete="off" />
                              </div>
                           </div>
                           <div class="clearfix"></div>
                           <div class="col-md-3">
                              <div class="form-group">
                                 <label>Employee Code :</label>
                                 <input name="searchbyCode" type="text" id="searchbyCode" class="form-control" Placeholder="Enter Employee Code" autocomplete="off" />
                              </div>
                           </div>
                           <div class="col-md-3">
                              <div class="form-group">
                                 <label>Mobile No. :</label>
                                 <input name="mobile" type="text" id="mobile" class="form-control" Placeholder="Enter Mobile No." autocomplete="off" />
                              </div>
                           </div>
                           <div class="col-md-3">
                              <div class="form-group">
                                 <label>Designation :</label>
                                 <select name="designation" id="designation" class="form-control" style="width: 100%;">
                                    <option value="0"></option>
                                    <option value="101">Officer</option>
                                    <option value="102">Collector</option>
                                    <option value="103">Cashier</option>
                                    <option value="104">Test</option>
                                    <option value="105">Manager</option>
                                    <option value="106">Advisor</option>
                                    <option value="107">Supervisor</option>
                                    <option value="108">Asst Manager</option>
                                    <option value="109">General Manager</option>
                                    <option value="110">HR Manager</option>
                                    <option value="111">Chairman</option>
                                    <option value="112">COLLECTOR</option>
                                    <option value="113">COLLECTOR</option>
                                    <option value="114">COLLECTOR</option>
                                    <option value="115">OFFICE BOY</option>
                                    <option value="116">Cashier</option>
                                 </select>
                              </div>
                           </div>
                           <div class="col-md-3">
                              <div class="form-group">
                                 <label>Department :</label>
                                 <select name="department" id="department" class="form-control" style="width: 100%;">
                                    <option value="0"></option>
                                    <option value="1001">Field Officer</option>
                                    <option value="1002">Accounts</option>
                                    <option value="1003">Sales </option>
                                    <option value="1004">Loan</option>
                                    <option value="1005">Cash</option>
                                    <option value="1006">General</option>
                                    <option value="1007">Collection</option>
                                    <option value="1008">HR</option>
                                    <option value="1009">Marketing</option>
                                    <option value="1010">FIELD OFFICER</option>
                                    <option value="1011">FIELD OFFICER</option>
                                    <option value="1012">Sales  PERSON</option>
                                    <option value="1013">Accounts</option>
                                 </select>
                              </div>
                           </div>
                           <div class="clearfix margin-bottom-10"></div>
                           <div class="text-center">
                              <a id="ContentPlaceHolder1_btnSearch" class="btn btn-success" 
                             ><span class="fa fa-search"></span> SEARCH</a>
                              <a id="ContentPlaceHolder1_btnPrint" class="btn btn-warning" ><span class="fa fa-print"></span> PRINT</a>
                           </div>
                        </div>
                     </div>
                     <div class="box box-success" style="box-shadow:none;overflow:auto !important;">
                        <div class="box-header with-border">
                           <h3 class="box-title">Search Result</h3>
                           <div class="box-tools pull-right">
                           </div>
                        </div>
                        <div class="box-body">
                           <div class="clearfix margin-bottom-10"></div>
                           <div>
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
<!-- Dk/Admin/HRMEmployeeSearch.aspx EDB D 09:27:24 GMT -->
</html>