<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EQFI NIDHI LIMITED</title>
<!-- Tell the browser to be responsive to screen width -->
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport" />
<!-- Bootstrap 3.3.7 -->
<link rel="stylesheet"
	href="bower_components/bootstrap/dist/css/bootstrap.min.css" />
<!-- Font Awesome -->
<link rel="stylesheet"
	href="bower_components/font-awesome/css/font-awesome.min.css" />
<!-- Ionicons -->
<link rel="stylesheet"
	href="bower_components/Ionicons/css/ionicons.min.css" />
<!-- jvectormap -->
<link rel="stylesheet"
	href="bower_components/jvectormap/jquery-jvectormap.css" />
<!-- Theme style -->
<link rel="stylesheet" href="dist/css/AdminLTE.min.css" />

<!-- daterange picker -->
<link rel="stylesheet"
	href="bower_components/bootstrap-daterangepicker/daterangepicker.css" />
<!-- bootstrap datepicker -->
<link rel="stylesheet"
	href="bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css" />
<!-- iCheck for checkboxes and radio inputs -->
<link rel="stylesheet" href="plugins/iCheck/all.css" />

<!-- Select2 -->
<link rel="stylesheet"
	href="bower_components/select2/dist/css/select2.min.css" />
<!-- Theme style -->
<!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
<link rel="stylesheet" href="dist/css/skins/_all-skins.min.css" />
<link rel="stylesheet" href="dist/css/dashboard.css" />
<link rel="shortcut icon" type="image/x-icon"
	href="../images/favicon.html" />
<link rel="stylesheet" href="dist/css/lightbox.min.css" />
<link rel="stylesheet" href="dist/css/qr.css" />
<!-- Google Font -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic" />
</head>
<body class="skin-blue sidebar-mini"
	style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);"
	cz-shortcut-listen="true" onload="branchNameDropdown(); dropDownBranchEmployee();">
	<!--     <form method="post" action="" id="form1">
 -->
	<div class="aspNetHidden">
		<input type="hidden" name="_EVENTTARGET" id="_EVENTTARGET" value="" />
		<input type="hidden" name="_EVENTARGUMENT" id="_EVENTARGUMENT"
			value="" /> <input type="hidden" name="_VIEWSTATE" id="_VIEWSTATE"
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
			id="__VIEWSTATEGENERATOR" value="6EA8CF5C" /> <input type="hidden"
			name="_VIEWSTATEENCRYPTED" id="_VIEWSTATEENCRYPTED" value="" /> <input
			type="hidden" name="_EVENTVALIDATION" id="_EVENTVALIDATION"
			value="VWnx5s3jNHOIkGq9X0YJ+5Omyw4VNuC+Ysfcyj4qL1WwUCJlhyqin13P6dSq6sM4stUMO2uCxaPmr6IIxdYl9R7TojVyXp16uBhuKGBl/sjMsdSeCfwV4EgxEOzQq0aUu4EQfLh5UppU0lx7r6kWO5TwIR8OgGaXY+o+o71CG3LrfG8ewNS1pTcYJac6m9BD5SY8pfBTxNaFwADMPGbcZ+92M5hIG+OOqZTi0Noaq3LKIDr5dgstmW4ELY0Nn6hqLHtDVr6gxlYFYn5dkdacxjkJqYakvevXHF0TjAhglu+nQznzokYxcdZtYwBBWiYIN+r9guR2LKNNUBQD1aESE5ojlMYJWvQTGwaeusCI9aMEqPnSuF60B0K0+0jEiIovMQDsnaZnF3W5ISNximsXQtGBZkjJhTFwpCXT7EAtzCX1O3jvaQghdMAnV4PdnIu5BlpeLxsOYkBFRncdi1kjdRyZWYWDenGGAeKm433d80SPYwVqnvbmglPBS5ONXSNcFFmBpoxKu3bEpdWvQV5ltIH8Sa2sMptvOjOp+Tbt6hSJCUaKazoo28a4E7cXM63LfJc4kEAYNrOV0sF3H6f0O8HZElcGAXnXlL+Dl6GakIixe1UEP4WYtUAN2+cSSNPucBa2Lx5yH2jUpkhvknEwdMnXspGVXH9F3tvrTU2cPSasz/5WTKcGY1QsKisFGl68BbyDYTklMkReNoFRu+3ICC3r/fkfTL8I5SfHU5KyXQSMjofajvaI9GEJcRjm4GMyuaYf6DbSKk8+J3Mm9C7uKnbn6Q6RvXJwaM0GdYr3BgM9xiKr7cdugq29bQk7bognlZr7k0jRCXlPGdTkIHwo6xrcpIeLL3g+G1wigOLY6jMiT12Ud8mh+Wqlpj7oMnrSqj4RUD9mVo8t4dXvaIMCi9N9NkqzmsZwf93CLJcxrUUTPASfB6s1ZmIb9Yi8CqayxHJdTLd6PK4pa0d/+P936/0BtSt9Evk6j0pePDQAb7+hS+dKxPMyZkXntJ1UJSIi" />
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
			Sys.WebForms.PageRequestManager._initialize('ctl00$ScriptManager1',
					'form1', [], [], [], 90, 'ctl00');
			//]]>
		</script>
		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper" style="min-height: 1105.75px;">



			<section class="content-header">
				<h1 id="ContentPlaceHolder1_IdHeader">Search Employee</h1>
				<ol class="breadcrumb">
					<li><a href="Home.html"><i class="fa fa-dashboard"></i>
							Home</a></li>
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
										<label>Branch :</label> <select name="branch" id="branch"
											class="form-control select2" style="width: 100%;">
											<option value="">Select</option>
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
											<input name="fDate" type="date" id="fDate"
												class="form-control"
												data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;"
												data-mask="" />
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
											<input name="tDate" type="date" id="tDate"
												class="form-control"
												data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;"
												data-mask="" />
										</div>
									</div>
								</div>
								<div class="col-md-3">
									<div class="form-group">
										<label>Employee Name :</label> <input name="empName"
											type="text" id="empName" class="form-control" 
											Placeholder="Enter Employee Name" autocomplete="off" />
									</div>
								</div>
								<div class="clearfix"></div>
								<div class="col-md-3">
									<div class="form-group">
										<label>Employee Code :</label> <input name="empCode"
											type="text" id="empCode" class="form-control"
											Placeholder="Enter Employee Code" autocomplete="off" />
									</div>
								</div>
								<div class="col-md-3">
									<div class="form-group">
										<label>Mobile No. :</label> <input name="phoneNo" type="text"
											id="phoneNo" class="form-control"
											Placeholder="Enter Mobile No." autocomplete="off" />
									</div>
								</div>
								<div class="col-md-3">
									<div class="form-group">
										<label>Designation :</label> <select name="designation"
											id="designation" class="form-control" style="width: 100%;">
											<option value="">Select</option>
										</select>
									</div>
								</div>
								<div class="col-md-3">
									<div class="form-group">
										<label>Department :</label> <select name="department"
											id="department" class="form-control" style="width: 100%;">
											<option value="">Select</option>
										</select>
									</div>
								</div>
								<div class="clearfix margin-bottom-10"></div>

								<div class="text-center">
									<a id="ContentPlaceHolder1_btnSearch" class="btn btn-success"
										href="javascript:searchThroughEmployee();"><span
										class="fa fa-search"></span> SEARCH</a> 
									<a id="ContentPlaceHolder1_btnPrint" class="btn btn-warning"
										href=""><span class="fa fa-print"></span> PRINT</a>
								</div>
							</div>

						</div>

						<div class="box box-success"
							style="box-shadow: none; overflow: auto !important;">

							<div class="box-header with-border">
								<h3 class="box-title">Search Result</h3>
								<div class="box-tools pull-right"></div>
							</div>
							<div class="box-body">
								<div class="clearfix margin-bottom-10"></div>



								<div>
									<table cellspacing="0" cellpadding="3" rules="all"
										class="display nowrap table table-hover table-striped table-bordered"
										border="1" style="width: 100%; border-collapse: collapse;">

										<tr style="color: White; background-color: #008385;">
											<th scope="col">S/N</th>
											<th scope="col">Employee Name</th>
											<th scope="col">DOB</th>
											<th scope="col">Bank Account</th>
											<th scope="col">DOJ</th>
											<th scope="col">Phone No</th>
											<th scope="col">Email ID</th>


										</tr>
										<tbody id="searchEmployee">

										</tbody>
									</table>

								</div>



							</div>

						</div>


					</div>
				</div>

			</section>




		</div>
		<!-- /.content-wrapper -->
		<jsp:include page="../footer.jsp" />
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

		<script src="dist/js/EmpolyeeSection.js"></script>
		<!-- Select2 -->
		<script src="bower_components/select2/dist/js/select2.full.min.js"></script>
		<script>
			$(function() {
				//Initialize Select2 Elements
				$('.select2').select2();
				//Datemask dd/mm/yyyy
				$('#datemask').inputmask('dd/mm/yyyy', {
					'placeholder' : 'dd/mm/yyyy'
				})
				//Datemask2 mm/dd/yyyy
				$('#datemask2').inputmask('mm/dd/yyyy', {
					'placeholder' : 'mm/dd/yyyy'
				})
				//Date range picker
				$('#reservation').daterangepicker()
				//Date range picker with time picker
				$('#reservationtime').daterangepicker({
					timePicker : true,
					timePickerIncrement : 30,
					locale : {
						format : 'MM/DD/YYYY hh:mm A'
					}
				})
				$('#daterange-btn')
						.daterangepicker(
								{
									ranges : {
										'Today' : [ moment(), moment() ],
										'Yesterday' : [
												moment().subtract(1, 'days'),
												moment().subtract(1, 'days') ],
										'Last 7 Days' : [
												moment().subtract(6, 'days'),
												moment() ],
										'Last 30 Days' : [
												moment().subtract(29, 'days'),
												moment() ],
										'This Month' : [
												moment().startOf('month'),
												moment().endOf('month') ],
										'Last Month' : [
												moment().subtract(1, 'month')
														.startOf('month'),
												moment().subtract(1, 'month')
														.endOf('month') ]
									},
									startDate : moment().subtract(29, 'days'),
									endDate : moment()
								},
								function(start, end) {
									$('#daterange-btn span').html(
											start.format('DD/MM/YYYY') + ' - '
													+ end.format('DD/MM/YYYY'))
								})
				//Date picker
				$('#datepicker').datepicker({
					autoclose : true
				})
				//Money Euro
				$('[data-mask]').inputmask()

				//iCheck for checkbox and radio inputs
				$('span[type="checkbox"].minimal').iCheck({
					checkboxClass : 'icheckbox_minimal-blue',
					radioClass : 'iradio_minimal-blue'
				})

			})
		</script>
		<!--     </form>
 -->
</body>
</html>