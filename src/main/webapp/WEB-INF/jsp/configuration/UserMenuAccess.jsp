<jsp:include page="../header.jsp" />
<body onload="getAllUserToServiceMap();setUserIdInSelectOption()" class="skin-blue sidebar-mini" style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);" cz-shortcut-listen="true">
   <form method="post" action="userToServiceMap" modelAttribute="userToServiceMap"  name="userToServiceMap" id="form1">
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
               <h1 id="ContentPlaceHolder1_IdHeader">User Menu Access</h1>
               <ol class="breadcrumb">
                  <li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
                  <li><a href="#">Dashboard</a></li>
                  <li class="active">Menu Access</li>
               </ol>
            </section>
            <section class="content">
               <div class="row">
                  <div class="col-md-6">
                     <div class="box box-danger">
                        <div class="box-header with-border">
                           <h3 class="box-title">Select User ID</h3>
                        </div>
                        <div class="box-body">
                           <div class="col-md-6">
                              <div class="form-group">
                                 <label>User ID <strong style="color: Red">*</strong></label>
                                 <select name="userId" id="userId" class="form-control select2" style="width: 100%;">
                                 </select>
                              </div>
                           </div>
                        </div>
                        <div class="box-footer">
                           <div class="row col-md-12">
                             <!--  <button type="button" name="ctl00$ContentPlaceHolder1$btnGO" value="GO >>" 
                              id="ContentPlaceHolder1_btnGO" class="btn btn-success pull-right margin-r-5">GO >></button> -->
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="col-md-6">
                     <div class="box box-danger" style="margin-top:0; padding:10px;">
                        <div class="box-header with-border">
                           <h3 class="box-title">Select Menu List</h3>
                        </div>
                        <div class="box-body" >
                           <div class="form-group">
                              <div class="row">
                                 <div id="ContentPlaceHolder1_pnlMenu" style="overflow-y:scroll;margin: auto">
                                    <table id="ContentPlaceHolder1_gdvUser_myServiceList" cellpadding="0"
                                     style="overflow-y: auto; overflow-x: hidden;"
                                     cellspacing="0" style="border-width:0;">
                                    </table>
                                 </div>
                              </div>
                              <a id="ContentPlaceHolder1_treeMenu_SkipLink"></a>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="box-footer">
                     <div class="row col-md-12">
                        <button type="button" name="ctl00$ContentPlaceHolder1$btnSave" 
                        value="Save Menu" id="ContentPlaceHolder1_btnSave" 
                        class="btn btn-info pull-right margin-r-5"
                        onclick="submitUserServiceMap()">Save Menu</button>
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
         var ContentPlaceHolder1_treeMenu_ImageArray =  new Array('/WebResource.axd?d=nCr6VCJZ7JnG4DgDUVq70ql97yrIbSLSo7sICHIA53rhYkK2ZvOrf0OrrH7kPQj9A0IXomzKP3bZTms2VOf-3JLQvIrDzufE3lmrxXvrPldZhG7x7iDNHI5hjXJc0p_A0&t=637290976998988531', '/WebResource.axd?d=ShfqxgVZK3xzk18bDiJNTvV_b_I7uiRe3Qq2u58V8bng2udQh_oWVIOzVaH26dbAdMz2EBp5m_DGID1yIWMzrmfH-wqGwqCP80KlIPKfxBTENVQ_MUtvQLYAEt_TpXLv0&t=637290976998988531', '/WebResource.axd?d=H3AlQMevI4Y7LfWM5hNip6p0QK2bjOkbn46c5uf5uIsAJJKetuoOe34WSGRBKoFrCb2-lhqcl149uON6a0dSKXDPehwE-gKqDZPT6_BngHLkb1H3t4ok5VqRn468lukS0&t=637290976998988531', '/WebResource.axd?d=h4Tc_32KHojlhzrq7SV7fzi_fGCzqrKBd4Z0g4i8OovO9VceXTCBhzFkMP0cfR6JDMz8zENE_bwodkCFuqXidRdSn7odJqy9f8vxM-yuPAPtscQmryja_5HXcqW6L6cv0&t=637290976998988531', '/WebResource.axd?d=RAF6wi27bSA5GoBN9GWL5r07d2nkIRZBbV5ipLfZX2V3ORBemAP8UzQgpAJV4-UOl3mZJID3MYKmmfNlogfulCHkhdT23-Ng5J4UzFjo5JHEL63A6tw2-6GqTGbIb3Cw0&t=637290976998988531', '/WebResource.axd?d=H1esaOTSBA5FWc7ex8JwhKVReHF9ex6beKGoddRMOH_073HEoc9-e1yy4hq5toRrBsYvhjLJYqsLUDvdp-V28coGGG391xgfArj4w0wzwk672RyMm5_kg5-CH40IFq9B0&t=637290976998988531', '/WebResource.axd?d=4Tjq01yGyXju-Puur_1XAiYhZSwmU64hAllLbGkAZHoWcaoJ0laDAlPgZN-OQvYSlnz1MF3Rmc8Of--g3bDm5jcTt2NCkf8pnmcHkDQ0RZdGkr8k_vqyEC8eOeNeWBSn0&t=637290976998988531', '/WebResource.axd?d=5MUGYjAf8PkRJAQsI8uwTpL0RPE8YfqZ68MhEitJ5bfou0nZt2LwayI-5nkA3VlbVe7gJyR1XNRPLyVdvilw552vK2HFrj-naGVv-axzCtTbpi-12aBAQlMHSgjohMtF0&t=637290976998988531', '/WebResource.axd?d=PG7CfANctei2MSwmX1io0A0yj7x-KG5A5-QZZRdytekjEvseQGOkGukC4swvrmbIfur9KJAEGxqgujezTJY6jF7ucSgL9zSudugayYUDHw1_EDETUo3B9ZPggtjsSsV80&t=637290976998988531', '/WebResource.axd?d=z2vlXqt_0tzXTpbwq1BK_BLwImP6Q0txpTe_59hPeDjVVVtBJW-xYxvPa0GgHA2WUVATOJOz70gRWkTuyXSzvrUSI4ckbl0Le3AvkUIx9Ybfjmv8-5YUpeGoezZQgcq90&t=637290976998988531', '/WebResource.axd?d=-7V77YvSS43tdTYzAlaR2aKdzOHcwg6VU4Mo71R8czM9edMtsQMb5W_xA8i8tHm_NjmEGoUWGj5geGz1XOUm7Qpn9einQZKStMRtrLptedlrflskwdRWw2CKy5zZdVWc0&t=637290976998988531', '/WebResource.axd?d=bucvhYANILQBVaiPqzYjpoqRkmd1n9J8cOGqfXdyi7mts1K9TH4D-Tg3Oe8loUt3UPbROcAtW9BdswLbcEvRMKGKOdZIl15_0rqGEp--YRStKKyeeXU9z1fJh_lp46kH0&t=637290976998988531', '/WebResource.axd?d=lDbsU4SKy9QuYrUnoBNgxiq7Rqzv_ECBV8GU3KU8BJjmNlRFMBU752QgcnLHNCmq1LUWZFgq3qW8db11uc80rdpHXDDQGrYjoPpMSqANXQFyO2fFM_-qvh8Uv4Qic5WN0&t=637290976998988531', '/WebResource.axd?d=pAk7Y18eWqYWv6Sjkxk-F1Uby-pG3u8Z33_w4C9lHgENMGEEmqU76SIBlvW4bPMthM-nUzsWoK5DOf2-UHivjFTqu1b5KqK8nfq47N6rQ5KyNKiDw2MYsQVIKw0SgKc-0&t=637290976998988531', '/WebResource.axd?d=s0xYEVGwcNbWLDADNlhwTTa0mMkrpFbheNz3MWiC-CUYtZo_u50Iz6YcpnKO9gWk5KX0cAf3LImaXxDZv7QmYTNVGL4cqASpIvDI2-39jM9BaacmYbjeESjD9LSe8cmU0&t=637290976998988531', '/WebResource.axd?d=Al4Y7Ui-wmN9Ns5vAzGEcXw-I3ENjR8QaX1xpFWESNHvFOHn78BcB9x68u4iaBNmyPUI10MWO_gWNSHmdKmpcE2U7EkfZCmzp8AF2ZVXroCT1b7xyjdKsbzSPYzzgIKG0&t=637290976998988531', '/WebResource.axd?d=poXeCKaqn1oQznS7Z4Xp4TKJUfRko7gDOHhYcS-QOIEOOuM7NraCIjJjsk9V7ZK34_aWSWaF3yOKZtNAR2XqTdG29sAmFTg7yX0WnkbGF2hMtZ1IXlcQNPspmt6wZGo90&t=637290976998988531', '/WebResource.axd?d=lIEJM5nVvcJ_KTAPaJsH08CcmsL52cg9vFesava9XAWlTSG077F-68Ty1SRS1NbeKjaagWYD-HHK4WJOR09gyapy-46ea_F3Y2WsSem2FQS9PCzsJ3d6p-5WHzVBjlny0&t=637290976998988531', '/WebResource.axd?d=JfKP5n9AKe15xlTOz_5kEHFIZOPsNZET7fNm4lg_oD_RKdbgV7fjhpTOpfytP9_OeAveXy-PRMVdhs0EKgxvM3incArlWakIR7UhUhmjdLNQfSMm4i85GkF4LWl33Vmr0&t=637290976998988531');
         //]]>
      </script>
      <script type="text/javascript">
         //<![CDATA[
         
         WebForm_InitCallback();var ContentPlaceHolder1_treeMenu_Data = new Object();
         ContentPlaceHolder1_treeMenu_Data.images = ContentPlaceHolder1_treeMenu_ImageArray;
         ContentPlaceHolder1_treeMenu_Data.collapseToolTip = "Collapse {0}";
         ContentPlaceHolder1_treeMenu_Data.expandToolTip = "Expand {0}";
         ContentPlaceHolder1_treeMenu_Data.expandState = theForm.elements['ContentPlaceHolder1_treeMenu_ExpandState'];
         ContentPlaceHolder1_treeMenu_Data.selectedNodeID = theForm.elements['ContentPlaceHolder1_treeMenu_SelectedNode'];
         ContentPlaceHolder1_treeMenu_Data.hoverClass = 'ContentPlaceHolder1_treeMenu_12';
         ContentPlaceHolder1_treeMenu_Data.hoverHyperLinkClass = 'ContentPlaceHolder1_treeMenu_11';
         (function() {
           for (var i=0;i<19;i++) {
           var preLoad = new Image();
           if (ContentPlaceHolder1_treeMenu_ImageArray[i].length > 0)
             preLoad.src = ContentPlaceHolder1_treeMenu_ImageArray[i];
           }
         })();
         ContentPlaceHolder1_treeMenu_Data.lastIndex = 216;
         ContentPlaceHolder1_treeMenu_Data.populateLog = theForm.elements['ContentPlaceHolder1_treeMenu_PopulateLog'];
         ContentPlaceHolder1_treeMenu_Data.treeViewID = 'ctl00$ContentPlaceHolder1$treeMenu';
         ContentPlaceHolder1_treeMenu_Data.name = 'ContentPlaceHolder1_treeMenu_Data';
         //]]>
      </script>
   </form>
</body>
<!-- Dk/Admin/UserMenuAccess.aspx EDB D 09:26:52 GMT -->
</html>