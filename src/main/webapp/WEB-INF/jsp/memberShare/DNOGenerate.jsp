
<jsp:include page="../header.jsp" />
<body class="skin-blue sidebar-mini"
	style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);"
	cz-shortcut-listen="true" onload="fetchDatainDNoGenerateOfDirector()">
	<form method="post"
		action=""
		id="form1">
		<div class="aspNetHidden">
			<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
			<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT"
				value="" /> <input type="hidden" name="__VIEWSTATE"
				id="__VIEWSTATE"
				value="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" />
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


		<script
			src="../WebResourcea077.js?d=aKrB3Wg4ktcAdLzfwHNclnzQJginAX-WDxEXiKln398ZfxSpl5en7e6-r-t6qAS--33aKUyvVcAR5D4ulS_TNNrAx-wX18laGa3-ySpD_j01&amp;t=637290976998988531"
			type="text/javascript"></script>


		<script
			src="../ScriptResourced8e7.js?d=uSqqCHFE8MMix38uq8GgGybxYtpH6dYwFMSYHjhHytO5jH1yPS2uWYjdlBZZSuu9t5CBFsRRRI6lEwvTTYPraDdistIqSYPDLCP6VorXyjIpQTji_JKtdkLVZLH_mYVZvHI4YJqUtS662n__8I2atI54HJ4NkBUVIeVAPnAuCTI1&amp;t=2a797f5c"
			type="text/javascript"></script>
		<script
			src="../ScriptResourceb4d6.js?d=KzKHuQVzCI25ZiHK9SA2HZdRjaymXCFpWiizBRMk8lvEiiZsQoLPz0ARKvRH6PmSA3Tt96qvSLsIOMPBDLx_VBsyISpzBQoSBrYr5izAbtKSWsBVrS0pYd7veJqhmzHYrhKgOEJXiOei6ZrcxpAdqnYxCXhjNIW9HOvs7dp7o0kgl18uTZv1SVlBuafpWq2x0&amp;t=2a797f5c"
			type="text/javascript"></script>
		<div class="aspNetHidden">

			<input type="hidden" name="__VIEWSTATEGENERATOR"
				id="__VIEWSTATEGENERATOR" value="3E4C33E6" /> <input type="hidden"
				name="__VIEWSTATEENCRYPTED" id="__VIEWSTATEENCRYPTED" value="" /> <input
				type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION"
				value="E9dXqgXIBwx8Z3tmu+2S2fWV1v4Bhr5tZ1tONEFf7rtZFIFZC/y0uwBszqDQZdFKq4pibD9WxWTTtC8dV3UqO213ufmPuBvDqIVsF8fpTfsIm8sijqTW193CJBPUL+5KFcPQ4GxvsjxxglZVyzfpac+rvPyfzbczWzRuG4ERYsoj+1bXSwHiO+X3uv+CVyt7j8PEdF9F5cbroh/cJeeW9UnaNxaunj3aHxBDTwt/FvF+tGf7cnh7DZXZRHRSLBewQSt+Csm6QDtwpvq4qdsIlzANBgIsGZBT59SBxv2+6yxsbZCZMoq3dsIpX9xCjhizDMIbmGsPYS6iv5BvFcsmAg==" />
		</div>

		<div
			style="height: auto; min-height: 100%; border-radius: 30px; margin: 15px; background: url(dist/img/back.jpg);">

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
					<h1 id="ContentPlaceHolder1_IdHeader">DNO Generate</h1>
					<ol class="breadcrumb">
						<li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
						<li><a href="#">Dashboard</a></li>
						<li class="active">DNO</li>
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
									<div class="col-md-6">
										<div class="form-group">
											<label>Select Director/Promoter :</label> <select
												name="memberData"
												id="memberData"
												class="form-control select2" style="width: 100%;">
												<option value=""></option>
												

											</select>
										</div>

									</div>

									<div class="col-md-3">
										<div class="form-group">
											<label></label> <a id="ContentPlaceHolder1_btnSearch"
												class="btn btn-success margin-20"
												href="javascript:fetchDatainDNoGenerateOfDirectorinTable()"><span
												class="fa fa-search"></span> SEARCH</a>
										</div>

									</div>
									<div class="clearfix margin-bottom-10"></div>
								</div>

							</div>



							<div class="box box-success"
								style="box-shadow: none; overflow: auto !important;">
								<div class="box-body">
									<div class="clearfix margin-bottom-10"></div>
<table cellspacing="0" cellpadding="3" rules="all" 
                              class="display nowrap table table-hover table-striped table-bordered" 
                              border="1" id="ContentPlaceHolder1_gdvData" style="width:100%;border-collapse:collapse;"
                              id="shareCertificate">
                                 <caption>
                                 Share Data List
                                 </caption>
                                 <tr style="color:White;background-color:#008385;">
                                    <th scope="col">SlNo</th>
                                    <th scope="col">M.CODE</th>
                                    <th scope="col">M.NAME</th>
                                    <th scope="col">SHARE DATE</th>
                                    <th scope="col">DNO FROM</th>
                                    <th scope="col">DNO To</th>
                                    <th scope="col">NoOfShare</th>
                                    <th scope="col">Share Amt</th>
                                    <th scope="col">TxnID</th>
                                    <th scope="col"></th>
                                 </tr>
                                  <tbody id="tableBody">
                                    
      							  </tbody>
                              </table>



									<div></div>



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
				<strong>Copyright © 2020-2021 <a> <span
						id="lblCompanyName1">EQFI NIDHI LIMITED</span></a>.
				</strong> All rights reserved.

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
		<script
			src="bower_components/bootstrap-daterangepicker/daterangepicker.js"></script>
		<!-- bootstrap datepicker -->
		<script
			src="bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
		<!-- bootstrap color picker -->
		<script
			src="bower_components/bootstrap-colorpicker/dist/js/bootstrap-colorpicker.min.js"></script>
		<!-- bootstrap time picker -->
		<script src="plugins/timepicker/bootstrap-timepicker.min.js"></script>
		<!-- SlimScroll -->
		<script
			src="bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
		<!-- iCheck 1.0.1 -->
		<script src="plugins/iCheck/icheck.min.js"></script>
		<!-- FastClick -->
		<script src="bower_components/fastclick/lib/fastclick.js"></script>
		<!-- AdminLTE App -->
		<script src="dist/js/adminlte.min.js"></script>
		<!-- AdminLTE for demo purposes -->
		<script src="dist/js/demo.js"></script>
		<script src="dist/js/memberShare.js"></script>
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
</html>
