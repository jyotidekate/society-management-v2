<jsp:include page="../header.jsp" />
<body class="skin-blue sidebar-mini" style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);" cz-shortcut-listen="true">
    <form method="post" action="http://admin:eqfi%23123@eqfinidhi.eadmin.in/Admin/MaturityApplicationApproval.aspx" id="form1">

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
        <h1 id="ContentPlaceHolder1_IdHeader">Maturity Approval</h1>
        <ol class="breadcrumb">
            <li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
            <li><a href="#">Dashboard</a></li>
            <li class="active">Maturity Approval</li>
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
                                <label>Policy No. :</label>
                               <input name="ctl00$ContentPlaceHolder1$txtSearchPolicy" type="text" id="ContentPlaceHolder1_txtSearchPolicy" class="form-control" />
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="form-group">
                                <label>Date From :</label>
                                <div class="input-group date">
                                    <div class="input-group-addon">
                                        <i class="fa fa-calendar"></i>
                                    </div>
                                    <input name="ctl00$ContentPlaceHolder1$txtFDate" type="text" value="01/08/2022" id="ContentPlaceHolder1_txtFDate" class="form-control" data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;" data-mask="" />
                                </div>
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="form-group">
                                <label>Date To :</label>
                                <div class="input-group date">
                                    <div class="input-group-addon">
                                        <i class="fa fa-calendar"></i>
                                    </div>
                                    <input name="ctl00$ContentPlaceHolder1$txtTDate" type="text" value="01/08/2022" id="ContentPlaceHolder1_txtTDate" class="form-control" data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;" data-mask="" />
                                </div>

                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label></label>
                                <a id="ContentPlaceHolder1_btnSearch" class="btn btn-success margin-20" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$btnSearch&#39;,&#39;&#39;)"><span class="fa fa-search"></span> SEARCH</a>
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
                        <h3 class="box-title">Policy Details</h3>
                    </div>
                    <div class="box-body">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Policy No. :</label>
                                <input name="ctl00$ContentPlaceHolder1$txtPolicyNo" type="text" readonly="readonly" id="ContentPlaceHolder1_txtPolicyNo" class="form-control" />

                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="form-group">
                                <label>Applicant Name :</label>
                                <input name="ctl00$ContentPlaceHolder1$txtApplicantName" type="text" readonly="readonly" id="ContentPlaceHolder1_txtApplicantName" class="form-control" />

                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="form-group">
                                <label>Plan Name :</label>
                                <input name="ctl00$ContentPlaceHolder1$txtPlanName" type="text" readonly="readonly" id="ContentPlaceHolder1_txtPlanName" class="form-control" />

                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="form-group">
                                <label>Plan Code :</label>
                                <input name="ctl00$ContentPlaceHolder1$txtPlanCode" type="text" readonly="readonly" id="ContentPlaceHolder1_txtPlanCode" class="form-control" />

                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="form-group">
                                <label>Mode</label>
                                <input name="ctl00$ContentPlaceHolder1$txtMode" type="text" readonly="readonly" id="ContentPlaceHolder1_txtMode" class="form-control" />

                            </div>
                        </div>
                        <div class="clearfix margin-bottom-10"></div>

                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Term :</label>
                                <input name="ctl00$ContentPlaceHolder1$txtTerm" type="text" readonly="readonly" id="ContentPlaceHolder1_txtTerm" class="form-control" />

                            </div>
                        </div>
                         <div class="col-md-2">
                            <div class="form-group">
                                <label>Policy Date :</label>
                                <input name="ctl00$ContentPlaceHolder1$txtPolDate" type="text" readonly="readonly" id="ContentPlaceHolder1_txtPolDate" class="form-control" />

                            </div>
                        </div>
                         <div class="col-md-2">
                            <div class="form-group">
                                <label>Mat. Date :</label>
                                <input name="ctl00$ContentPlaceHolder1$txtMDate" type="text" readonly="readonly" id="ContentPlaceHolder1_txtMDate" class="form-control" />

                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="form-group">
                                <label>Plan Amt.</label>
                                <input name="ctl00$ContentPlaceHolder1$txtPolicyAmt" type="text" readonly="readonly" id="ContentPlaceHolder1_txtPolicyAmt" class="form-control" />

                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="form-group">
                                <label>Mat. Amt.</label>
                                <input name="ctl00$ContentPlaceHolder1$txtMaturityamt" type="text" readonly="readonly" id="ContentPlaceHolder1_txtMaturityamt" class="form-control" />

                            </div>
                        </div>
                       


                        <div class="clearfix margin-bottom-10"></div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Inst Paid :</label>
                                <input name="ctl00$ContentPlaceHolder1$txtInstPaid" type="text" readonly="readonly" id="ContentPlaceHolder1_txtInstPaid" class="form-control" />

                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="form-group">
                                <label>Total Deposit :</label>

                                <input name="ctl00$ContentPlaceHolder1$txtTotDep" type="text" readonly="readonly" id="ContentPlaceHolder1_txtTotDep" class="form-control" />
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="form-group">
                                <label>ROI(%) :</label>
                                <input name="ctl00$ContentPlaceHolder1$txtROI" type="text" readonly="readonly" id="ContentPlaceHolder1_txtROI" class="form-control" />

                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="form-group">
                                <label>Penalty :</label>
                                <input name="ctl00$ContentPlaceHolder1$txtPenalty" type="text" readonly="readonly" id="ContentPlaceHolder1_txtPenalty" class="form-control" />

                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="form-group">
                                <label>Req. User</label>
                                <input name="ctl00$ContentPlaceHolder1$txtreqUser" type="text" readonly="readonly" id="ContentPlaceHolder1_txtreqUser" class="form-control" />

                            </div>
                        </div>
                    </div>
                </div>

               
            </div>

            
        </div>
       
        <div class="row">
            <div class="col-md-12">
                <div class="box box-success">
                    <div class="box-header with-border">
                        <h3 class="box-title">Payment Details</h3>
                    </div>
                    <div class="box-body">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Sys. Payable :</label>
                                <input name="ctl00$ContentPlaceHolder1$txtCalculatedMaturity" type="text" readonly="readonly" onchange="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$txtCalculatedMaturity\&#39;,\&#39;\&#39;)&#39;, 0)" onkeypress="if (WebForm_TextBoxKeyHandler(event) == false) return false;" id="ContentPlaceHolder1_txtCalculatedMaturity" class="form-control" style="color:Red;font-weight:bold;" />

                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Deduction (-) :</label>
                                <input name="ctl00$ContentPlaceHolder1$txtAdjustLatefine" type="text" onchange="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$txtAdjustLatefine\&#39;,\&#39;\&#39;)&#39;, 0)" onkeypress="if (WebForm_TextBoxKeyHandler(event) == false) return false;return isNumberKey(this, event);" id="ContentPlaceHolder1_txtAdjustLatefine" class="form-control" onpaste="return false" autocomplete="off" />

                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Adjustment (+) :</label>
                                <input name="ctl00$ContentPlaceHolder1$txtAdjustment" type="text" onchange="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$txtAdjustment\&#39;,\&#39;\&#39;)&#39;, 0)" onkeypress="if (WebForm_TextBoxKeyHandler(event) == false) return false;return isNumberKey(this, event);" id="ContentPlaceHolder1_txtAdjustment" class="form-control" onpaste="return false" autocomplete="off" />

                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Net Payable :</label>
                                <input name="ctl00$ContentPlaceHolder1$txtNetPayable" type="text" readonly="readonly" id="ContentPlaceHolder1_txtNetPayable" class="form-control" style="color:Green;font-weight:bold;" />

                            </div>
                        </div>

                        <div class="clearfix margin-bottom-10"></div>
                         <div class="col-md-3">
                            <div class="form-group">
                                <label>Application Branch :</label>
                                <input name="ctl00$ContentPlaceHolder1$txtReqBCode" type="text" readonly="readonly" id="ContentPlaceHolder1_txtReqBCode" class="form-control" />

                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Approval Date :</label>

                                <div class="input-group date">
                                    <div class="input-group-addon">
                                        <i class="fa fa-calendar"></i>
                                    </div>
                                    <input name="ctl00$ContentPlaceHolder1$txtApprovalDate" type="text" value="01/08/2022" id="ContentPlaceHolder1_txtApprovalDate" class="form-control" data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;" data-mask="" />
                                </div>
                            </div>
                        </div>
                       
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Approve Branch :</label>
                                <select name="ctl00$ContentPlaceHolder1$ddlAppBranch" id="ContentPlaceHolder1_ddlAppBranch" class="form-control" style="width: 100%;">
	<option value="001">Main Office - 001</option>

</select>

                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Approve Remarks :</label>
                                <input name="ctl00$ContentPlaceHolder1$txtRemarks" type="text" id="ContentPlaceHolder1_txtRemarks" class="form-control" />

                            </div>
                        </div>

                          <div class="clearfix margin-bottom-10"></div>

                         <div class="text-center">
                              
                            <button type="button" name="ctl00$ContentPlaceHolder1$btnAurised" 
                            value="Maturity Approve" id="ContentPlaceHolder1_btnAurised" 
                            class="btn btn-warning pull-right margin-r-5" >Maturity Approve</button>
                        </div>
                    </div>
                </div>


            </div>


        </div>


        <div class="row">
            <div class="col-md-12">
                
                <div class="box box-success" style="box-shadow: none; overflow: auto !important;">
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

<!-- Dk/Admin/MaturityApplicationApproval.aspx EDB D 09:27:14 GMT -->
</html>
