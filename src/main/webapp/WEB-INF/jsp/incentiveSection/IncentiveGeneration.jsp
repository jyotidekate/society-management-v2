
<jsp:include page="../header.jsp" />
<body class="skin-blue sidebar-mini" style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);" cz-shortcut-listen="true">
    <form method="post" action="http://admin:eqfi%23123@eqfinidhi.eadmin.in/Admin/IncentiveGeneration.aspx" id="form1">


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
Sys.WebForms.PageRequestManager._initialize('ctl00$ScriptManager1', 'form1', ['tctl00$ContentPlaceHolder1$UpdatePanel2','ContentPlaceHolder1_UpdatePanel2'], ['ctl00$ContentPlaceHolder1$Timer1','ContentPlaceHolder1_Timer1'], [], 90, 'ctl00');
//]]>
</script>

            <!-- Content Wrapper. Contains page content -->
            <div class="content-wrapper" style="min-height: 1105.75px;">
                

                 
    <section class="content-header">
        <h1 id="ContentPlaceHolder1_IdHeader">Incentive Generate</h1>
        <ol class="breadcrumb">
            <li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
            <li><a href="#">Dashboard</a></li>
            <li class="active">Generate</li>
        </ol>
    </section>
    <section class="content">
        <div class="row">
            <div class="col-md-12">
                <div class="box box-info">
                    <div class="box-header with-border">
                        <h3 class="box-title">Incentive Details</h3>
                    </div>




                    <table style="width: 100%; font-size: small;box-shadow: none;overflow: auto !important;">
                        <tr>
                            <td width="20px">&nbsp;</td>
                            <td width="500px">&nbsp;&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td width="20px">&nbsp;</td>
                            <td width="500px">
                                <table style="width: 113%;">
                                    <tr>
                                        <td class="style4">
                                            <label>Incentive Month </label>
                                        </td>
                                        <td colspan="3">
                                            <select name="ctl00$ContentPlaceHolder1$ddlVoucherMonth" onchange="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$ddlVoucherMonth\&#39;,\&#39;\&#39;)&#39;, 0)" id="ContentPlaceHolder1_ddlVoucherMonth" class="form-control" style="width:350px;">

</select>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style4">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td class="style2">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style4">

                                            <label>Incentive Date From </label>
                                        </td>
                                        <td>
                                            <input name="ctl00$ContentPlaceHolder1$txtVDateFrom" type="text" readonly="readonly" id="ContentPlaceHolder1_txtVDateFrom" class="form-control" />
                                        </td>
                                        <td>
                                            <strong>To</strong></td>
                                        <td class="style2">
                                            <input name="ctl00$ContentPlaceHolder1$txtVDateTo" type="text" readonly="readonly" id="ContentPlaceHolder1_txtVDateTo" class="form-control" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style4">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td class="style2">&nbsp;</td>
                                    </tr>
                                   
                                    <tr>
                                        <td class="style4">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td class="style2">&nbsp;</td>
                                    </tr>
                                </table>
                            </td>
                            <td>
                                <div style="margin: auto; width: 80px">
                                    <input type="submit" name="ctl00$ContentPlaceHolder1$btnGenerate" value="Generate" id="ContentPlaceHolder1_btnGenerate" class="btn btn-success pull-right margin-r-5" />
                                    <span id="ContentPlaceHolder1_Timer1" style="visibility:hidden;display:none;"></span>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td width="20px">&nbsp;</td>
                            <td width="500px">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                    <div id="ContentPlaceHolder1_UpdatePanel2">
	
                            <div align="right">
                                &nbsp;&nbsp;&nbsp;&nbsp; Date Time:- 
        <span id="ContentPlaceHolder1_lblDate"></span>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </div>
                            
                                    <table style="width: 100%; border-collapse: collapse;" cellpadding="5"
                                        cellspacing="-1">

                                        <tr>
                                            <th style="background-color: #bc3c3c;color:#fff; width: 60px;">Sl No.</th>
                                            <th align="left"
                                                style="background-color: #bc3c3c; color:#fff; width: 336px;">Progress</th>
                                            <th align="left"
                                                style="background-color: #bc3c3c; color:#fff; width: 150px;">Status</th>
                                            <th style="background-color: #bc3c3c; color:#fff; width: 80px;">&nbsp;
                                            </th>
                                        </tr>
                                        <tr>
                                            <td align="center" style="width: 60px">1</td>
                                            <td style="width: 336px">Validating Progress</td>
                                            <td style="width: 150px">
                                                <span id="ContentPlaceHolder1_lbl1"></span>
                                            </td>
                                            <td style="width: 80px">&nbsp;
                    <img id="ContentPlaceHolder1_img1" src="dist/img/ICOOffline.png" style="width:16px;" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center" style="width: 60px">&nbsp;2</td>
                                            <td style="width: 336px">New Policy - Self Incentive</td>
                                            <td style="width: 150px">
                                                <span id="ContentPlaceHolder1_lbl2"></span>
                                            </td>
                                            <td style="width: 80px">&nbsp;
                    <img id="ContentPlaceHolder1_img2" src="dist/img/ICOOffline.png" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center" style="width: 60px">3</td>
                                            <td style="width: 336px">New Policy - Team Incentive</td>
                                            <td style="width: 150px">
                                                <span id="ContentPlaceHolder1_lbl3"></span>
                                            </td>
                                            <td style="width: 80px">&nbsp;
                    <img id="ContentPlaceHolder1_img3" src="dist/img/ICOOffline.png" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center" style="width: 60px">4</td>
                                            <td style="width: 336px">Renewal - Self Incentive</td>
                                            <td style="width: 150px">
                                                <span id="ContentPlaceHolder1_lbl4"></span>
                                            </td>
                                            <td style="width: 80px">&nbsp;
                    <img id="ContentPlaceHolder1_img4" src="dist/img/ICOOffline.png" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center" style="width: 60px">5</td>
                                            <td style="width: 336px">Renewal - Team Incentive</td>
                                            <td style="width: 150px">
                                                <span id="ContentPlaceHolder1_lbl5"></span>
                                            </td>
                                            <td style="width: 80px">&nbsp;
                    <img id="ContentPlaceHolder1_img5" src="dist/img/ICOOffline.png" />
                                            </td>
                                        </tr>
                                       
                                        <tr>
                                            <td align="center" style="width: 60px">7</td>
                                            <td style="width: 336px">TDS Calculation</td>
                                            <td style="width: 150px">
                                                <span id="ContentPlaceHolder1_lbl7"></span>
                                            </td>
                                            <td style="width: 80px">&nbsp;
                    <img id="ContentPlaceHolder1_img7" src="dist/img/ICOOffline.png" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center" style="width: 60px">8</td>
                                            <td style="width: 336px">Final Pay Generation</td>
                                            <td style="width: 150px">
                                                <span id="ContentPlaceHolder1_lbl8"></span>
                                            </td>
                                            <td style="width: 80px">&nbsp;
                    <img id="ContentPlaceHolder1_img8" src="dist/img/ICOOffline.png" />
                                            </td>
                                        </tr>
                                     
                                    </table>
                                    <div style="vertical-align: middle">
                                        &nbsp;&nbsp;&nbsp;
            <img id="ContentPlaceHolder1_Image1" src="dist/img/Info.png" style="height:50px;width:50px;" />&nbsp;&nbsp;<span id="ContentPlaceHolder1_lblmsg"> Generating Commission Voucher is Time Consuming Process.</span>
                                        .
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
    

<script type="text/javascript">
//<![CDATA[
Sys.Application.add_init(function() {
    $create(Sys.UI._Timer, {"enabled":false,"interval":1000,"uniqueID":"ctl00$ContentPlaceHolder1$Timer1"}, null, null, $get("ContentPlaceHolder1_Timer1"));
});
//]]>
</script>
</form>
</body>

<!-- Dk/Admin/IncentiveGeneration.aspx EDB D 09:27:19 GMT -->
</html>
