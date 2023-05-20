
<jsp:include page="../header.jsp" />
<body class="skin-blue sidebar-mini" style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);" cz-shortcut-listen="true">
    <form method="post" action="http://admin:eqfi%23123@eqfinidhi.eadmin.in/Admin/AdvisorTree.aspx" id="form1">
<div class="aspNetHidden">
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__LASTFOCUS" id="__LASTFOCUS" value="" />
<input type="hidden" name="ContentPlaceHolder1_tvChain_ExpandState" id="ContentPlaceHolder1_tvChain_ExpandState" value="" />
<input type="hidden" name="ContentPlaceHolder1_tvChain_SelectedNode" id="ContentPlaceHolder1_tvChain_SelectedNode" value="" />
<input type="hidden" name="ContentPlaceHolder1_tvChain_PopulateLog" id="ContentPlaceHolder1_tvChain_PopulateLog" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="" />
</div>

<script type="text/javascript">
//<![CDATA[
var theForm = document.forms['form1'];
if (!theForm) {
    theForm = document.form1;
}
function __doPostBack(eventTarget, eventArgument) {
    if (!theForm.onsubmit || (theForm.onsubmit() != false)) {
        theForm.__EVENTTARGET.value = eventTarget;
        theForm.__EVENTARGUMENT.value = eventArgument;
        theForm.submit();
    }
}
//]]>
</script>


<script src="../WebResourcea077.js?d=aKrB3Wg4ktcAdLzfwHNclnzQJginAX-WDxEXiKln398ZfxSpl5en7e6-r-t6qAS--33aKUyvVcAR5D4ulS_TNNrAx-wX18laGa3-ySpD_j01&amp;t=637290976998988531" type="text/javascript"></script>


<script src="../ScriptResourcedcf3.js?d=IVQu6HihpSs-OCnoNgRVIaRcTrlnbX4a1EY3Qy8bX8eqKZOSytFB4n4tcg1roB0x0LbrwyJNICXP2D0-Tt8QwbG1I9mxMwo7DvhrcMG62fRNzg-ZaP7vgSYNeBsFYZ3FOyJ0HsgC0sb-_2sZXOXJ3w2&amp;t=5334fc78" type="text/javascript"></script>
<script type="text/javascript">
//<![CDATA[

    function TreeView_PopulateNodeDoCallBack(context,param) {
        WebForm_DoCallback(context.data.treeViewID,param,TreeView_ProcessNodeData,context,TreeView_ProcessNodeData,false);
    }
var ContentPlaceHolder1_tvChain_Data = null;//]]>
</script>

<script src="../ScriptResourced8e7.js?d=uSqqCHFE8MMix38uq8GgGybxYtpH6dYwFMSYHjhHytO5jH1yPS2uWYjdlBZZSuu9t5CBFsRRRI6lEwvTTYPraDdistIqSYPDLCP6VorXyjIpQTji_JKtdkLVZLH_mYVZvHI4YJqUtS662n__8I2atI54HJ4NkBUVIeVAPnAuCTI1&amp;t=2a797f5c" type="text/javascript"></script>
<script src="../ScriptResourceb4d6.js?d=KzKHuQVzCI25ZiHK9SA2HZdRjaymXCFpWiizBRMk8lvEiiZsQoLPz0ARKvRH6PmSA3Tt96qvSLsIOMPBDLx_VBsyISpzBQoSBrYr5izAbtKSWsBVrS0pYd7veJqhmzHYrhKgOEJXiOei6ZrcxpAdqnYxCXhjNIW9HOvs7dp7o0kgl18uTZv1SVlBuafpWq2x0&amp;t=2a797f5c" type="text/javascript"></script>
<div class="aspNetHidden">

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="469EAE75" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEdAAdifu+33RNd48fpKjXQlm9EXXhtDrRv6st/qI+x+N0hz4VNppXIEHMAIHNnY0nj1N3tvC+Dj7P0n1Q2fR8oG15q2re2SmqI2X2waV+aqZERP0IkE50Suu93Vvk2du/Z4uSOTFulzGhY80/Z1HbCJJ6L900yiKcZgorSf5ud3aOvJ4+Tq2TeEukrbxPked5UKww=" />
</div>

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
        <h1 id="ContentPlaceHolder1_IdHeader">Advisor Downline</h1>
         <ol class="breadcrumb">
        <li><a href="Home.html"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Dashboard</a></li>
        <li class="active">Tree</li>
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
                           
                            <div class="clearfix"></div>
                            <div class="col-md-3">
                                 <div class="form-group">
                                    <label>Advisor Code :</label>
                                        <input name="advisorSearchbyCode" type="text" 
                                        onchange="javascript:getByAdvisorCode()" 
                                        id="advisorSearchbyCode" class="form-control" 
                                        Placeholder="Enter Advisor Code" autocomplete="off" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                 <div class="form-group">
                                    <label>Advisor Name :</label>
                                        <input name="advisorName" type="text" readonly="readonly" 
                                        	id="advisorName" class="form-control" autocomplete="off" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                 <div class="form-group">
                                    <label>Position :</label>
                                        <input name="position" type="text" readonly="readonly" id="position"
                                        	 class="form-control" autocomplete="off" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                 <div class="form-group">
                                      <label></label>
                                    <a id="ContentPlaceHolder1_btnSearch" 
                                    	class="btn btn-success margin-20" 
                                    		href="javascript:getByAdvisorCode();gettableAdvisor()">
                                    		<span class="fa fa-search"></span> SEARCH</a>
                                </div>
                            </div>
                              <div class="clearfix margin-bottom-10"></div>

                        </div>
                    
                </div>

                <div class="box box-success" style="box-shadow:none;overflow:auto !important;">
                        <div class="box-body">
                              <div class="clearfix margin-bottom-10"></div>
                            
                             <a href="#ContentPlaceHolder1_tvChain_SkipLink"><img alt="Skip Navigation Links." src="../WebResource36b9.gif?d=n6roid9SKBH96J-M01DIwXu8AFTlJ0NKCwSCBAM-p8e2lSHer2vgGuJjw3jVuvLHAQmmzlIaZuZsC-ewAFbHN546Bjo9RqSioCmd2B2TAq01&amp;t=637290976998988531" width="0" height="0" style="border-width:0px;" /></a><div id="ContentPlaceHolder1_tvChain" style="font-size:Medium;">

						</div><a id="ContentPlaceHolder1_tvChain_SkipLink"></a>
						
						<table cellspacing="0" cellpadding="3" rules="all" 
                              class="display nowrap table table-hover table-striped table-bordered" 
                              border="1" id="ContentPlaceHolder1_gdvData" style="width:100%;border-collapse:collapse;"
                              id="shareCertificate">
                                 <caption>
                                 
                                 </caption>
                                 <tr style="color:White;background-color:#008385;">
                                    <th scope="col">SlNo</th>
                                    <th scope="col">Advisor Code</th>
                                    <th scope="col">Advisor Name</th>
                                    <th scope="col">Position</th>
                                    <th scope="col"></th>
                                    <th scope="col"></th>
                                    <th scope="col"></th>
                                    <th scope="col"></th>
                                    <th scope="col"></th>
                                    <th scope="col"></th>
                                 </tr>
                                  <tbody id="tableBodyAdvisor">
                                    
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

WebForm_InitCallback();var ContentPlaceHolder1_tvChain_Data = new Object();
ContentPlaceHolder1_tvChain_Data.images = ContentPlaceHolder1_tvChain_ImageArray;
ContentPlaceHolder1_tvChain_Data.collapseToolTip = "Collapse {0}";
ContentPlaceHolder1_tvChain_Data.expandToolTip = "Expand {0}";
ContentPlaceHolder1_tvChain_Data.expandState = theForm.elements['ContentPlaceHolder1_tvChain_ExpandState'];
ContentPlaceHolder1_tvChain_Data.selectedNodeID = theForm.elements['ContentPlaceHolder1_tvChain_SelectedNode'];
ContentPlaceHolder1_tvChain_Data.hoverClass = 'ContentPlaceHolder1_tvChain_12';
ContentPlaceHolder1_tvChain_Data.hoverHyperLinkClass = 'ContentPlaceHolder1_tvChain_11';
(function() {
  for (var i=0;i<19;i++) {
  var preLoad = new Image();
  if (ContentPlaceHolder1_tvChain_ImageArray[i].length > 0)
    preLoad.src = ContentPlaceHolder1_tvChain_ImageArray[i];
  }
})();
ContentPlaceHolder1_tvChain_Data.lastIndex = 0;
ContentPlaceHolder1_tvChain_Data.populateLog = theForm.elements['ContentPlaceHolder1_tvChain_PopulateLog'];
ContentPlaceHolder1_tvChain_Data.treeViewID = 'ctl00$ContentPlaceHolder1$tvChain';
ContentPlaceHolder1_tvChain_Data.name = 'ContentPlaceHolder1_tvChain_Data';
//]]>
</script>
</form>
</body>
</html>
