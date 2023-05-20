<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
   <!-- Dk/Admin/LoanApplication.aspx?Type=Approval EDB D 09:27:09 GMT -->
   <!-----DKB------>
   <meta http-equiv="content-type" content="text/html;charset=utf-8" />
   <!-----DKB------>
   <head>
      <meta http-equiv="content-type" content="text/html;charset=utf-8" />
      <meta charset="utf-8" />
      <meta http-equiv="X-UA-Compatible" content="IE=edge" />
      <title>
         EQFI NIDHI LIMITED
      </title>
      <!-- Tell the browser to be responsive to screen width -->
      <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport" />
      <!-- Bootstrap 3.3.7 -->
      <link rel="stylesheet" href="bower_components/bootstrap/dist/css/bootstrap.min.css" />
      <!-- Font Awesome -->
      <link rel="stylesheet" href="bower_components/font-awesome/css/font-awesome.min.css" />
      <!-- Ionicons -->
      <link rel="stylesheet" href="bower_components/Ionicons/css/ionicons.min.css" />
      <!-- jvectormap -->
      <link rel="stylesheet" href="bower_components/jvectormap/jquery-jvectormap.css" />
      <!-- Theme style -->
      <link rel="stylesheet" href="dist/css/AdminLTE.min.css" />
      <!-- daterange picker -->
      <link rel="stylesheet" href="bower_components/bootstrap-daterangepicker/daterangepicker.css" />
      <!-- bootstrap datepicker -->
      <link rel="stylesheet" href="bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css" />
      <!-- iCheck for checkboxes and radio inputs -->
      <link rel="stylesheet" href="plugins/iCheck/all.css" />
      <!-- Select2 -->
      <link rel="stylesheet" href="bower_components/select2/dist/css/select2.min.css" />
      <!-- Theme style -->
      <!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
      <link rel="stylesheet" href="dist/css/skins/_all-skins.min.css" />
      <link rel="stylesheet" href="dist/css/dashboard.css" />
      <link rel="shortcut icon" type="image/x-icon" href="../images/favicon.html" />
      <link rel="stylesheet" href="dist/css/lightbox.min.css" />
      <link rel="stylesheet" href="dist/css/qr.css" />
      <script src="dist/js/loanModule.js"></script>
      <!-- Google Font -->
      <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic" />
      <style type="text/css">
         .switch {
         position: relative;
         display: inline-block;
         width: 78px;
         height: 36px;
         }
         .switch input {
         opacity: 0;
         }
         .slider {
         position: absolute;
         cursor: pointer;
         top: 0;
         left: 0;
         right: 0;
         bottom: 0;
         background-color: #ccc;
         -webkit-transition: .4s;
         transition: .4s;
         }
         .slider:before {
         position: absolute;
         content: "";
         height: 30px;
         width: 33px;
         left: 16px;
         bottom: 3px;
         background-color: white;
         -webkit-transition: .4s;
         transition: .4s;
         }
         input:checked + .slider {
         background-color: #08c;
         }
         input:focus + .slider {
         box-shadow: 0 0 1px #2196F3;
         }
         input:checked + .slider:before {
         -webkit-transform: translateX(26px);
         -ms-transform: translateX(26px);
         transform: translateX(26px);
         }
         /* Rounded sliders */
         .slider.round {
         border-radius: 34px;
         }
         .slider.round:before {
         border-radius: 50%;
         }
      </style>
      <script type="text/javascript">
         function isNumberOnlyKey(txt, evt) {
             var charCode = (evt.which) ? evt.which : evt.keyCode;
             if (charCode > 31 && (charCode < 48 || charCode > 57)) {
                 alert("Allow Only Numbers");
                 return false;
             }
         }
      </script>
      <script type="text/javascript">
         function isNumberKey(txt, evt) {
             var charCode = (evt.which) ? evt.which : evt.keyCode;
             if (charCode == 46) {
                 //Check if the text already contains the . character
                 if (txt.value.indexOf('.') === -1) {
                     return true;
                 } else {
                     return false;
                 }
             } else {
                 if (charCode > 31
         && (charCode < 48 || charCode > 57)) {
                     alert("Allow Only Numbers & Decimal");
                     return false;
                 }
             }
             return true;
         }
      </script>
   </head>
   <body onload="getListOfLoanId()" class="skin-blue sidebar-mini" style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);" cz-shortcut-listen="true">
      <%
         String status = (String)request.getAttribute("status");
         if(status!=null && "success".equals(status)){
        	 %>
        	 <script>
        	   alert("Saved Successfully");
        	</script>
         <%
         }else{
        	 
         }
         %>
      <form method="post" action="updateLoan"  id="form1"
      modelAttribute="updateLoan">
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
               Sys.WebForms.PageRequestManager._initialize('ctl00$ScriptManager1', 'form1', ['tctl00$ContentPlaceHolder1$updtpnl','ContentPlaceHolder1_updtpnl','tctl00$ContentPlaceHolder1$upnlLAD','ContentPlaceHolder1_upnlLAD','tctl00$ContentPlaceHolder1$upguardian','ContentPlaceHolder1_upguardian','tctl00$ContentPlaceHolder1$upcoap','ContentPlaceHolder1_upcoap','tctl00$ContentPlaceHolder1$uppnlde','ContentPlaceHolder1_uppnlde','tctl00$ContentPlaceHolder1$uppnkad','ContentPlaceHolder1_uppnkad','tctl00$ContentPlaceHolder1$upduc','ContentPlaceHolder1_upduc','tctl00$ContentPlaceHolder1$uppnladname','ContentPlaceHolder1_uppnladname'], [], [], 90, 'ctl00');
               //]]>
            </script>
            <!-- Content Wrapper. Contains page content -->
            <div class="content-wrapper" style="min-height: 1105.75px;">
               <section class="content-header">
                  <h1 id="ContentPlaceHolder1_IdHeader">Loan Approval</h1>
                  <ol class="breadcrumb">
                     <li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
                     <li><a href="#">Dashboard</a></li>
                     <li class="active">Loan Details</li>
                  </ol>
               </section>
               <section class="content">
                  <div id="ContentPlaceHolder1_idSearch" class="row">
                     <div class="col-md-12">
                        <div class="box box-warning">
                           <div class="box-header with-border">
                              <h3 class="box-title">Search Details</h3>
                           </div>
                           <div class="form-horizontal">
                              <div class="box-body">
                                 <div class="col-md-6">
                                    <div class="form-group row">
                                       <label class="col-sm-4 control-label">Select by LoanID <strong style="color: Red">*</strong></label>
                                       <div class="col-sm-8">
                                          <select name="searchLoanId"  
                                          	onchange="javascript:getByLoanId()"
                                          id="searchLoanId" class="form-control select2" style="width: 100%;">
                                             <option selected="selected" value=""></option>
                                          </select>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-10">
                        <div class="box box-info">
                           <div class="box-header with-border">
                              <h3 class="box-title">Loan Details </h3>
                           </div>
                           <div class="box-body">
                              <div class="col-md-6">
                                 <div class="form-group row">
                                    <label class="col-sm-4 control-label">Loan Date <strong style="color: Red">*</strong></label>
                                    <div class="col-sm-8">
                                       <div class="input-group date">
                                          <div class="input-group-addon">
                                             <i class="fa fa-calendar"></i>
                                          </div>
                                          <input name="loanDate" type="text" value="01/08/2022" id="loanDate" class="form-control" data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;" data-mask="" />
                                       </div>
                                       <span id="loanDate" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Loan Date</span>
                                    </div>
                                 </div>
                                 <div class="form-group row">
                                    <label class="col-sm-4 control-label">Search Member <strong style="color: Red">*</strong></label>
                                    <div class="col-sm-8">
                                       <select name="searchMemberCode"  id="searchMemberCode" class="form-control select2" style="width: 100%;">
                                          <option selected="selected" value=""></option>
                                          <option value="01/NGP/ 000001">ANKUSH GAJANANRAO BHELKAR - 01/NGP/ 000001</option>
                                          <option value="01/NGP/ 000002">SUDHIR KRISHNARAO BOREKAR - 01/NGP/ 000002</option>
                                          <option value="01/NGP/ 000003">MANGESH KRUSHNARAO BOREKAR - 01/NGP/ 000003</option>
                                          <option value="01/NGP/ 000004">RAJESH BABULAL BHAGAT - 01/NGP/ 000004</option>
                                          <option value="01/NGP/ 000005">ROSHAN SHANKARRAOJI RAUT - 01/NGP/ 000005</option>
                                          <option value="01/NGP/ 000006">REKHA GAJANAN BHELKAR - 01/NGP/ 000006</option>
                                          <option value="01/NGP/ 000007">MAYURI ANKUSH BHELKAR - 01/NGP/ 000007</option>
                                          <option value="01/NGP/ 000008">AKASH ATMARAM SHAHU - 01/NGP/ 000008</option>
                                          <option value="01/NGP/ 000009">AKSHAY SANJAYRAO DORLE - 01/NGP/ 000009</option>
                                          <option value="01/NGP/ 000010">AKASH WASUDEO VANGAR - 01/NGP/ 000010</option>
                                          <option value="01/NGP/ 000011">ANIL VIKRAM SINGH - 01/NGP/ 000011</option>
                                          <option value="01/NGP/ 000012">ANIL YASHWANTRAO FUNDE - 01/NGP/ 000012</option>
                                          <option value="01/NGP/ 000013">ANITA PRAKASH PURVE - 01/NGP/ 000013</option>
                                          <option value="01/NGP/ 000014">ANKIT MANOHAR NIMBULKAR - 01/NGP/ 000014</option>
                                          <option value="01/NGP/ 000015">ARCHANA SANJAY THAKARE - 01/NGP/ 000015</option>
                                          <option value="01/NGP/ 000016">ARUNA BABULAL PANCHESHWAR - 01/NGP/ 000016</option>
                                          <option value="01/NGP/ 000017">ARVIND RAMUGRAH MISHRA - 01/NGP/ 000017</option>
                                          <option value="01/NGP/ 000018">ASHA BABLU RAHANGDALE - 01/NGP/ 000018</option>
                                          <option value="01/NGP/ 000019">ASHISH ARUNRAO JAWADE - 01/NGP/ 000019</option>
                                          <option value="01/NGP/ 000020">AVINASH ASHOKRAO WANKHEDE - 01/NGP/ 000020</option>
                                          <option value="01/NGP/ 000021">BABITA ARVIND MISHRA - 01/NGP/ 000021</option>
                                          <option value="01/NGP/ 000022">BULAL SATYALAL PANCHESHWAR - 01/NGP/ 000022</option>
                                          <option value="01/NGP/ 000023">BEBIBAI FULSINGH PATLE - 01/NGP/ 000023</option>
                                          <option value="01/NGP/ 000024">BHAVISH KISAN WASNIK - 01/NGP/ 000024</option>
                                          <option value="01/NGP/ 000025">BHUSHAN VITTHAL RAUT - 01/NGP/ 000025</option>
                                          <option value="01/NGP/ 000026">CHANDRASHEKHAR NAGORAO LOKHANDE - 01/NGP/ 000026</option>
                                          <option value="01/NGP/ 000027">CHETAN TEJSINGH WAGHMARE - 01/NGP/ 000027</option>
                                          <option value="01/NGP/ 000028">DANISH SURESH BHOWATE - 01/NGP/ 000028</option>
                                          <option value="01/NGP/ 000029">DEEPAK VASANT BHOGE - 01/NGP/ 000029</option>
                                          <option value="01/NGP/ 000030">DEEPALI ARUN TOTE - 01/NGP/ 000030</option>
                                          <option value="01/NGP/ 000031">DEEPALI PRADIP PANDE - 01/NGP/ 000031</option>
                                          <option value="01/NGP/ 000032">DIPINTI ASHOK CHUTE - 01/NGP/ 000032</option>
                                          <option value="01/NGP/ 000033">DHARMENDRA KAPIL BASONE - 01/NGP/ 000033</option>
                                          <option value="01/NGP/ 000034">DHARMENDRA PRAYAG SHARMA - 01/NGP/ 000034</option>
                                          <option value="01/NGP/ 000035">DINESH BHAURAO GANORKAR - 01/NGP/ 000035</option>
                                          <option value="01/NGP/ 000036">DINESH DEVRAJ KOHARE - 01/NGP/ 000036</option>
                                          <option value="01/NGP/ 000037">FULCHAND BHARATLAL NAGPURE - 01/NGP/ 000037</option>
                                          <option value="01/NGP/ 000038">GAJENDRA RUPLAL DHARAMGADE - 01/NGP/ 000038</option>
                                          <option value="01/NGP/ 000039">GIRISH BAJRANG PANDEL - 01/NGP/ 000039</option>
                                          <option value="01/NGP/ 000040">GURUPRASAD RAMESH HANWAT - 01/NGP/ 000040</option>
                                          <option value="01/NGP/ 000041">HEMLATA KAILASH BALORE - 01/NGP/ 000041</option>
                                          <option value="01/NGP/ 000042">IMRAN SHAHBUDDIN KHAN - 01/NGP/ 000042</option>
                                          <option value="01/NGP/ 000043">IYER VIGNESH VENKATRAMAN - 01/NGP/ 000043</option>
                                          <option value="01/NGP/ 000044">JAGESHWAR CHUDAMAN NANDANWAR - 01/NGP/ 000044</option>
                                          <option value="01/NGP/ 000045">JAIDEVI NANDU SHARMA - 01/NGP/ 000045</option>
                                          <option value="01/NGP/ 000046">JAITUNISHA RAFIK SHAH - 01/NGP/ 000046</option>
                                          <option value="01/NGP/ 000047">JAYSHREE MUKESH DRAVEKAR - 01/NGP/ 000047</option>
                                          <option value="01/NGP/ 000048">JITENDRA KANHAIYA BHATIYA - 01/NGP/ 000048</option>
                                          <option value="01/NGP/ 000049">JYOTI GANESH WADIWA - 01/NGP/ 000049</option>
                                          <option value="01/NGP/ 000050">KAILASH SADHURAM BALORE - 01/NGP/ 000050</option>
                                          <option value="01/NGP/ 000051">KANHAIYALAL GANGARAM BHATIYA - 01/NGP/ 000051</option>
                                          <option value="01/NGP/ 000052">KANTABAI SAWANLAL BHAGAT - 01/NGP/ 000052</option>
                                          <option value="01/NGP/ 000053">KARTHIK K L VENKATRAMAN - 01/NGP/ 000053</option>
                                          <option value="01/NGP/ 000054">KISHOR KAWADU WANKHEDE - 01/NGP/ 000054</option>
                                          <option value="01/NGP/ 000055">KRUSHNA GAJANAN TIWASKAR - 01/NGP/ 000055</option>
                                          <option value="01/NGP/ 000056">KRUSHNA SHIVNARAYAN GUPTA - 01/NGP/ 000056</option>
                                          <option value="01/NGP/ 000057">LAKSHMI ASHOKRAO CHUTE - 01/NGP/ 000057</option>
                                          <option value="01/NGP/ 000058">LATA VITTHALRAO RAUT - 01/NGP/ 000058</option>
                                          <option value="01/NGP/ 000059">LAKSHMICHAND SANPATRAO BANSOD - 01/NGP/ 000059</option>
                                          <option value="01/NGP/ 000060">MADHURI DIPAKRAO BHOGE - 01/NGP/ 000060</option>
                                          <option value="01/NGP/ 000061">MADHURI PRAVIN GAIKWAD - 01/NGP/ 000061</option>
                                          <option value="01/NGP/ 000062">MAHAK MOHMADDIN ANSARI - 01/NGP/ 000062</option>
                                          <option value="01/NGP/ 000063">MAHENDRA KUMAR GUPTA - 01/NGP/ 000063</option>
                                          <option value="01/NGP/ 000064">MALATI MILIND PATIL - 01/NGP/ 000064</option>
                                          <option value="01/NGP/ 000065">MALLIKA MOINUDDIN ANSARI - 01/NGP/ 000065</option>
                                          <option value="01/NGP/ 000066">MANDA ANIL THAKARE - 01/NGP/ 000066</option>
                                          <option value="01/NGP/ 000067">MANGLESH PANDIT MESHRAM - 01/NGP/ 000067</option>
                                          <option value="01/NGP/ 000068">MANGESH FULSINGH PATLE - 01/NGP/ 000068</option>
                                          <option value="01/NGP/ 000069">MANISHA ANILRAO DONGRE - 01/NGP/ 000069</option>
                                          <option value="01/NGP/ 000070">MANISHA OMPRAKASH MOHARLE - 01/NGP/ 000070</option>
                                          <option value="01/NGP/ 000071">MANGLA SANJAY LAD - 01/NGP/ 000071</option>
                                          <option value="01/NGP/ 000072">MANOJ MAROTI GHARAD - 01/NGP/ 000072</option>
                                          <option value="01/NGP/ 000073">MAROTI KRUSHNA SELOKAR - 01/NGP/ 000073</option>
                                          <option value="01/NGP/ 000074">MAROTI MITHILDAS TATHE - 01/NGP/ 000074</option>
                                          <option value="01/NGP/ 000075">MAYURI ROHIT KADU - 01/NGP/ 000075</option>
                                          <option value="01/NGP/ 000076">MEENA SANDEEP PURI GOSWAMI - 01/NGP/ 000076</option>
                                          <option value="01/NGP/ 000077">MEENA DINDAYAL GOUR - 01/NGP/ 000077</option>
                                          <option value="01/NGP/ 000078">MILIND MANOHARRAO PINJARKAR - 01/NGP/ 000078</option>
                                          <option value="01/NGP/ 000079">MEENA KRUSHNA TIWASKAR - 01/NGP/ 000079</option>
                                          <option value="01/NGP/ 000080">MITHILESH BHIMRAO BHAGAT - 01/NGP/ 000080</option>
                                          <option value="01/NGP/ 000081">MITHUN DAMODHAR WANKHEDE - 01/NGP/ 000081</option>
                                          <option value="01/NGP/ 000082">MOHAMMAD PARWEJ ANSARI - 01/NGP/ 000082</option>
                                          <option value="01/NGP/ 000083">NALU RAJUJI BURADE - 01/NGP/ 000083</option>
                                          <option value="01/NGP/ 000084">NAMITA SHANKAR SHAHU - 01/NGP/ 000084</option>
                                          <option value="01/NGP/ 000085">NANDU SARJU SHARMA - 01/NGP/ 000085</option>
                                          <option value="01/NGP/ 000086">NARENDRA KESHWARAO UKANDE - 01/NGP/ 000086</option>
                                          <option value="01/NGP/ 000087">NEETA ABHAY PACHGHARE - 01/NGP/ 000087</option>
                                          <option value="01/NGP/ 000088">NEHAL GOUTAM BANKAR - 01/NGP/ 000088</option>
                                          <option value="01/NGP/ 000089">NILESH YASHWANTRAO KARSARPE - 01/NGP/ 000089</option>
                                          <option value="01/NGP/ 000090">NILU DHARMENDRA SHARMA - 01/NGP/ 000090</option>
                                          <option value="01/NGP/ 000091">NISHA NATTHULAL VARSHEKAR - 01/NGP/ 000091</option>
                                          <option value="01/NGP/ 000092">PANKAJ HIRALAL NAGPURE - 01/NGP/ 000092</option>
                                          <option value="01/NGP/ 000093">PAPITA JAGAN SONTAKKE - 01/NGP/ 000093</option>
                                          <option value="01/NGP/ 000094">POURNIMA MADHAV GHODVAIDYA - 01/NGP/ 000094</option>
                                          <option value="01/NGP/ 000095">PRAFUL SHEKHAR ROJEKAR - 01/NGP/ 000095</option>
                                          <option value="01/NGP/ 000096">PRAKASH  SONI - 01/NGP/ 000096</option>
                                          <option value="01/NGP/ 000097">PRAKASH BAISAKU PURVE - 01/NGP/ 000097</option>
                                          <option value="01/NGP/ 000098">PRAMILA GOURISHANKAR PAWAR - 01/NGP/ 000098</option>
                                          <option value="01/NGP/ 000099">PRANIL KRISHNARAO MENDHE - 01/NGP/ 000099</option>
                                          <option value="01/NGP/ 000100">PRATIK ARUN ANASANE - 01/NGP/ 000100</option>
                                          <option value="01/NGP/ 000101">PRITI PANKAJ BHAGAT - 01/NGP/ 000101</option>
                                          <option value="01/NGP/ 000102">PRIYA NEHAL WANKAR - 01/NGP/ 000102</option>
                                          <option value="01/NGP/ 000103">PRIYANKA SHASHIKANT SHUKLA - 01/NGP/ 000103</option>
                                          <option value="01/NGP/ 000104">PUSHPA SURESHRAO BORIKAR - 01/NGP/ 000104</option>
                                          <option value="01/NGP/ 000105">PYSHPA RAMCHANDRA BHOYAR - 01/NGP/ 000105</option>
                                          <option value="01/NGP/ 000106">RAFIK NAIMUDDIN SHAH - 01/NGP/ 000106</option>
                                          <option value="01/NGP/ 000107">RAHUL MANOHAR UIKEY - 01/NGP/ 000107</option>
                                          <option value="01/NGP/ 000108">RAJKUMAR RAMDAS TAYDE - 01/NGP/ 000108</option>
                                          <option value="01/NGP/ 000109">RAJU SITARAM BURADE - 01/NGP/ 000109</option>
                                          <option value="01/NGP/ 000110">RAMCHANDRA MAHADEO BHOYAR - 01/NGP/ 000110</option>
                                          <option value="01/NGP/ 000111">RAVI DHANIRAM PATLE - 01/NGP/ 000111</option>
                                          <option value="01/NGP/ 000112">RAVI SUNIL AJIT - 01/NGP/ 000112</option>
                                          <option value="01/NGP/ 000113">RAVINDRA DADUJI DONGARE - 01/NGP/ 000113</option>
                                          <option value="01/NGP/ 000114">RAVINDRA DATTUJI SHEGAMWAR - 01/NGP/ 000114</option>
                                          <option value="01/NGP/ 000115">RAVINDRA DHONDBA DHANDE - 01/NGP/ 000115</option>
                                          <option value="01/NGP/ 000116">REKHA RAVI PATLE - 01/NGP/ 000116</option>
                                          <option value="01/NGP/ 000117">RINA PRADEEP SONI - 01/NGP/ 000117</option>
                                          <option value="01/NGP/ 000118">RINKU DEVI - 01/NGP/ 000118</option>
                                          <option value="01/NGP/ 000119">ROHIT VASANTRAO KADU - 01/NGP/ 000119</option>
                                          <option value="01/NGP/ 000120">ROSHAN KRUSHNARAOJI GOTMARE - 01/NGP/ 000120</option>
                                          <option value="01/NGP/ 000121">ROSHASNI VINOD THAKARE - 01/NGP/ 000121</option>
                                          <option value="01/NGP/ 000122">RUPESH NOHARLAL FUNNE - 01/NGP/ 000122</option>
                                          <option value="01/NGP/ 000123">RUPESH RAMCHANDRA BHOYAR - 01/NGP/ 000123</option>
                                          <option value="01/NGP/ 000124">SAHIN PARWIN ANSARI - 01/NGP/ 000124</option>
                                          <option value="01/NGP/ 000125">SANDEEP PURI OMKAR GOSWAMI - 01/NGP/ 000125</option>
                                          <option value="01/NGP/ 000126">SANJAY BARKUJI LAD - 01/NGP/ 000126</option>
                                          <option value="01/NGP/ 000127">SANJAY GHANSHU SHAHU - 01/NGP/ 000127</option>
                                          <option value="01/NGP/ 000128">SANJAY MAROTRAO THAKRE - 01/NGP/ 000128</option>
                                          <option value="01/NGP/ 000129">SARIKA JAGESHWAR NANDANWAR - 01/NGP/ 000129</option>
                                          <option value="01/NGP/ 000130">SARITA SHYAMLAL NEWARE - 01/NGP/ 000130</option>
                                          <option value="01/NGP/ 000131">SATYANARAYAN JAGDISHPRASAD GUPTA - 01/NGP/ 000131</option>
                                          <option value="01/NGP/ 000132">SATYAPRAKASH SATYANARAYAN GUPTA - 01/NGP/ 000132</option>
                                          <option value="01/NGP/ 000133">SAURABH DIPAK NAGRARE - 01/NGP/ 000133</option>
                                          <option value="01/NGP/ 000134">SAURABH PRAVIN GIRI - 01/NGP/ 000134</option>
                                          <option value="01/NGP/ 000135">SAVITA UMESH PATLE - 01/NGP/ 000135</option>
                                          <option value="01/NGP/ 000136">SAWANLAL SADASHIV BHAGAT - 01/NGP/ 000136</option>
                                          <option value="01/NGP/ 000137">SHAHBUDDIN RAHIS KHAN - 01/NGP/ 000137</option>
                                          <option value="01/NGP/ 000138">SHAILESH RUPCHAND KUHIKE - 01/NGP/ 000138</option>
                                          <option value="01/NGP/ 000139">SHAMLAL SHRIRAM NEWARE - 01/NGP/ 000139</option>
                                          <option value="01/NGP/ 000140">SHANKHRAJ SHESHMANI KUSHWAHA - 01/NGP/ 000140</option>
                                          <option value="01/NGP/ 000141">SHARAD SHRIRAM DESHMUKH - 01/NGP/ 000141</option>
                                          <option value="01/NGP/ 000142">SHASHIKANT NANDLAL SHUKLA - 01/NGP/ 000142</option>
                                          <option value="01/NGP/ 000143">SHEKH RAFIK SHEKH CHAND - 01/NGP/ 000143</option>
                                          <option value="01/NGP/ 000144">SHEKH RAFIK SHEKH CHAND - 01/NGP/ 000144</option>
                                          <option value="01/NGP/ 000145">SHITAL PRAKASH INGLE - 01/NGP/ 000145</option>
                                          <option value="01/NGP/ 000146">SHITAL UMESH INGALE - 01/NGP/ 000146</option>
                                          <option value="01/NGP/ 000147">SHIVNARAYAN JAMUNAPRASAD GUPTA - 01/NGP/ 000147</option>
                                          <option value="01/NGP/ 000148">SHRADDHA SIDHARTH DHAWLE - 01/NGP/ 000148</option>
                                          <option value="01/NGP/ 000149">SHUBHAM PRALHADRAO DHARWALE - 01/NGP/ 000149</option>
                                          <option value="01/NGP/ 000150">SHUBHAM KISHOR TIDKE - 01/NGP/ 000150</option>
                                          <option value="01/NGP/ 000151">SIDHARTH ARUN DHAWLE - 01/NGP/ 000151</option>
                                          <option value="01/NGP/ 000152">SOHIT DINESH KOLARE - 01/NGP/ 000152</option>
                                          <option value="01/NGP/ 000153">SUJATA SHUBHAM DHAVRAL - 01/NGP/ 000153</option>
                                          <option value="01/NGP/ 000154">SUBHASH LAKSHMAN PATIL - 01/NGP/ 000154</option>
                                          <option value="01/NGP/ 000155">SUMIT DOSHNATH SATIKOSRE - 01/NGP/ 000155</option>
                                          <option value="01/NGP/ 000156">SUNANDA TULSIRAM GAIYAKWAD - 01/NGP/ 000156</option>
                                          <option value="01/NGP/ 000157">SUNIL SHRIRAM GAWANDE - 01/NGP/ 000157</option>
                                          <option value="01/NGP/ 000158">SUNITA UMRAO KHOBRAGADE - 01/NGP/ 000158</option>
                                          <option value="01/NGP/ 000159">SURABHI RAJU GADAGE - 01/NGP/ 000159</option>
                                          <option value="01/NGP/ 000160">SURAJ MANOHAR POCCHI - 01/NGP/ 000160</option>
                                          <option value="01/NGP/ 000161">SURAJ NANDLAL SHAHA - 01/NGP/ 000161</option>
                                          <option value="01/NGP/ 000162">SUREKHA VILAS SHENDRE - 01/NGP/ 000162</option>
                                          <option value="01/NGP/ 000163">SUSHILA ANIL GAJBHIYE - 01/NGP/ 000163</option>
                                          <option value="01/NGP/ 000164">SUSHMA NARENDRA UKANDE - 01/NGP/ 000164</option>
                                          <option value="01/NGP/ 000165">SWATI SONAL PIMPALE - 01/NGP/ 000165</option>
                                          <option value="01/NGP/ 000166">TRIVENI ANIL GAJBHIYE - 01/NGP/ 000166</option>
                                          <option value="01/NGP/ 000167">TULSIRAM MANIKRAV GAIYAKWAD - 01/NGP/ 000167</option>
                                          <option value="01/NGP/ 000168">UCHIT ASHOK DHURVE - 01/NGP/ 000168</option>
                                          <option value="01/NGP/ 000169">UMESH KISNAJI INGALE - 01/NGP/ 000169</option>
                                          <option value="01/NGP/ 000170">VANDANA NOKENDRA PATLE - 01/NGP/ 000170</option>
                                          <option value="01/NGP/ 000171">VENUBAI BHIMRAO BANKAR - 01/NGP/ 000171</option>
                                          <option value="01/NGP/ 000172">VAISHALI LOKNATH RAMTEKE - 01/NGP/ 000172</option>
                                          <option value="01/NGP/ 000173">VISHVANATH SHRIDHAR TARONE - 01/NGP/ 000173</option>
                                          <option value="01/NGP/ 000174">VASANTABAI KISAN WASNIK - 01/NGP/ 000174</option>
                                          <option value="01/NGP/ 000175">VICKY DILIP BHUJADE - 01/NGP/ 000175</option>
                                          <option value="01/NGP/ 000176">VINOD JAGAN THAKRE - 01/NGP/ 000176</option>
                                          <option value="01/NGP/ 000177">VANITA RAMDAS TAYDE - 01/NGP/ 000177</option>
                                          <option value="01/NGP/ 000178">VRUNDA KISHOR DARUNDE - 01/NGP/ 000178</option>
                                          <option value="01/NGP/ 000179">YOGESH BABANRAO GUNJAL - 01/NGP/ 000179</option>
                                          <option value="01/NGP/ 000180">VANDANA DEVENDRA SHENDE - 01/NGP/ 000180</option>
                                          <option value="01/NGP/ 000181">KAMINI DATTARAJ KAPSE - 01/NGP/ 000181</option>
                                          <option value="01/NGP/ 000182">SATISH MANIK BAHADE - 01/NGP/ 000182</option>
                                          <option value="01/NGP/ 000183">MINAKSHI SATISH BAHADE - 01/NGP/ 000183</option>
                                          <option value="01/NGP/ 000184">ARSHIYA AZAMI ANSARUDDIN PATEL - 01/NGP/ 000184</option>
                                          <option value="01/NGP/ 000185">KANCHAN SAGAR JINTURKAR - 01/NGP/ 000185</option>
                                          <option value="01/NGP/ 000186">RESHMA KRUSHNA KURSANGE - 01/NGP/ 000186</option>
                                          <option value="01/NGP/ 000187">PUJA BALIRAM SHENDE - 01/NGP/ 000187</option>
                                          <option value="01/NGP/ 000188">RAHUL NIVRUTTI KAMBLE - 01/NGP/ 000188</option>
                                          <option value="01/NGP/ 000189">RAJNI SANJAYRAO GAYKI - 01/NGP/ 000189</option>
                                          <option value="01/NGP/ 000190">MALTI VILAS GUDADHE - 01/NGP/ 000190</option>
                                          <option value="01/NGP/ 000191">JYOTIBAI MAYADAS MANIKPURI - 01/NGP/ 000191</option>
                                          <option value="01/NGP/ 000192">PUSHPA SURESH DHOLE - 01/NGP/ 000192</option>
                                          <option value="01/NGP/ 000193">ALKA JAYNTRAO JINTURKAR - 01/NGP/ 000193</option>
                                          <option value="01/NGP/ 000194">GEETA RAJU RAUT - 01/NGP/ 000194</option>
                                          <option value="01/NGP/ 000195">VANITA RAMLAL CHAUDHARI - 01/NGP/ 000195</option>
                                          <option value="01/NGP/ 000196">LAKSHMI DILIP RAUT - 01/NGP/ 000196</option>
                                          <option value="01/NGP/ 000197">DILIP  MOTIRAM RAUT - 01/NGP/ 000197</option>
                                          <option value="01/NGP/ 000198">RATNAKALA VINOD RAUT - 01/NGP/ 000198</option>
                                          <option value="01/NGP/ 000199">SULBHA DEEPAK BHOYAR - 01/NGP/ 000199</option>
                                          <option value="01/NGP/ 000200">GANGA SANTOSH SAKSENA - 01/NGP/ 000200</option>
                                          <option value="01/NGP/ 000201">VIDYA SANJAY BARANGE - 01/NGP/ 000201</option>
                                          <option value="01/NGP/ 000202">TAPTI SHIBAPRASAD DAS - 01/NGP/ 000202</option>
                                          <option value="01/NGP/ 000203">ARUNA DIPAK DHOLE - 01/NGP/ 000203</option>
                                          <option value="01/NGP/ 000204">CHANDRAKALA HEMANTH NANDANWAR - 01/NGP/ 000204</option>
                                          <option value="01/NGP/ 000205">DURGABAI VASUDEV MESHRAM - 01/NGP/ 000205</option>
                                          <option value="01/NGP/ 000206">DURGABAI ROSHAN KHANDATE - 01/NGP/ 000206</option>
                                          <option value="01/NGP/ 000207">SIMA DEEPAK CHAVHAN - 01/NGP/ 000207</option>
                                          <option value="01/NGP/ 000208">DIPAK RAJU HATWAR - 01/NGP/ 000208</option>
                                       </select>
                                       <span id="ContentPlaceHolder1_RequiredFieldValidatorddlMemberCode" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Select Member Code</span>
                                    </div>
                                 </div>
                                 <div class="form-group row">
                                    <label class="col-sm-4 control-label">Relative Details <strong style="color: Red">*</strong></label>
                                    <div class="col-sm-8">
                                       <input name="relativeDetails" type="text" readonly="readonly" id="relativeDetails" class="form-control" PlaceHolder="Enter Relative Name &amp; Relation" />
                                       <span id="ContentPlaceHolder1_RequiredFieldValidatorBranchCode" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Relative Name & Relation</span>
                                    </div>
                                 </div>
                                 <div class="form-group row">
                                    <label for="txtDOB" class="col-sm-4 control-label">DOB <strong style="color: Red">*</strong></label>
                                    <div class="col-sm-5">
                                       <div class="input-group date">
                                          <div class="input-group-addon">
                                             <i class="fa fa-calendar"></i>
                                          </div>
                                          <input name="DOB" type="text" value="01/08/2022" readonly="readonly" id="DOB" class="form-control" data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;" data-mask="" />
                                       </div>
                                    </div>
                                    <div class="col-sm-3">
                                       <input name="age" type="text" value="0" maxlength="2" readonly="readonly" id="age" class="form-control" Placeholder="Enter Age" onkeypress="return isNumberOnlyKey(this, event);" autocomplete="off" />
                                       <span id="ContentPlaceHolder1_RequiredFieldValidator12" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Age</span>
                                    </div>
                                 </div>
                                 <div class="form-group row">
                                    <label for="txtPhoneno" class="col-sm-4 control-label">Mobile No <strong style="color: Red">*</strong></label>
                                    <div class="col-sm-8">
                                       <input name="phoneno" type="text" maxlength="10" readonly="readonly" id="phoneno" class="form-control" Placeholder="Enter Mobile No" autocomplete="off" onkeypress="return isNumberOnlyKey(this, event);" />
                                       <span id="ContentPlaceHolder1_RequiredFieldValidator8" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Phone No</span>
                                    </div>
                                 </div>
                                 <div class="form-group row">
                                    <label for="txtSMSStatus" class="col-sm-4 control-label">SMS Status </label>
                                    <div class="col-sm-8">
                                       <input name="smsStatus" type="text" readonly="readonly" id="smsStatus" class="form-control" PlaceHolder="Enter SMS Status" />
                                    </div>
                                 </div>
                                 <div class="form-group row">
                                    <label for="txtAddress" class="col-sm-4 control-label">Address <strong style="color: Red">*</strong></label>
                                    <div class="col-sm-8">
                                       <textarea name="address" rows="2" cols="20" readonly="readonly" id="address" class="form-control" Placeholder="Enter Addess">
                                       </textarea>
                                       <span id="ContentPlaceHolder1_RequiredFieldValidator3" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Address</span>
                                    </div>
                                 </div>
                                 <div class="form-group row">
                                    <label for="txtPin" class="col-sm-4 control-label">Pin Code <strong style="color: Red">*</strong></label>
                                    <div class="col-sm-8">
                                       <input name="pin" type="text" maxlength="6" readonly="readonly" id="pin" class="form-control" Placeholder="Enter Pincode" />
                                       <span id="ContentPlaceHolder1_RequiredFieldValidator4" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter PIN</span>
                                    </div>
                                 </div>
                              </div>
                              <div class="col-md-6">
                                 <div class="form-group row">
                                    <label class="col-sm-4 control-label">Branch Name <strong style="color: Red">*</strong></label>
                                    <div class="col-sm-8">
                                       <select name="cspName" id="cspName" class="form-control" style="width: 100%;">
                                          <option value="001">Main Office - 001</option>
                                       </select>
                                    </div>
                                 </div>
                                 <div id="ContentPlaceHolder1_updtpnl">
                                    <div class="form-group row">
                                       <label class="col-sm-4 control-label">Loan Plan Name <strong style="color: Red">*</strong></label>
                                       <div class="col-sm-8">
                                          <select name="loanName"  id="loanPlanName" class="form-control" style="width: 100%;">
                                          </select>
                                       </div>
                                    </div>
                                    <div class="form-group row">
                                       <label for="txtLoanROI" class="col-sm-4 control-label">Loan Type <strong style="color: Red">*</strong></label>
                                       <div class="col-sm-8">
                                          <input name="loanType" type="text" readonly="readonly" id="loanType" class="form-control" PlaceHolder="Loan Type" />
                                       </div>
                                    </div>
                                    <div class="form-group row">
                                       <label for="ddlPlanTerm" class="col-sm-4 control-label">Plan Term <strong style="color: Red">*</strong></label>
                                       <div class="col-sm-8">
                                          <select name="planTerm"  id="planTerm" class="form-control" style="width: 100%;">
                                          </select>
                                       </div>
                                    </div>
                                    <div class="form-group row">
                                       <label for="ddlLoanMode" class="col-sm-4 control-label">Loan Mode <strong style="color: Red">*</strong></label>
                                       <div class="col-sm-3">
                                          <input name="mode" type="text" readonly="readonly" id="mode" class="form-control" PlaceHolder="Enter Mode" />
                                          <span id="ContentPlaceHolder1_RequiredFieldValidator1" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Mode</span>
                                       </div>
                                       <label  class="col-sm-2 control-label">ROI(%)</label>
                                       <div class="col-sm-3">
                                          <input name="loanROI" type="text" readonly="readonly" id="loanROI" class="form-control" PlaceHolder="Enter Loan ROI" />
                                          <span id="ContentPlaceHolder1_RequiredFieldValidatorLoanROI" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Loan ROI</span>
                                       </div>
                                    </div>
                                    <div class="form-group row">
                                       <label class="col-sm-4 control-label">Loan Amount <strong style="color: Red">*</strong></label>
                                       <div class="col-sm-8">
                                          <input name="loanAmount" type="text"  id="loanAmount" class="form-control" PlaceHolder="Enter Loan Amount" onpaste="return false" autocomplete="off" />
                                          <span id="ContentPlaceHolder1_RequiredFieldValidatorLoanAmount" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Loan Amount</span>
                                       </div>
                                    </div>
                                    <div class="form-group row">
                                       <label for="txtROIType" class="col-sm-4 control-label">ROI Type <strong style="color: Red">*</strong></label>
                                       <div class="col-sm-8">
                                          <input name="roiType" type="text" readonly="readonly" id="roiType" class="form-control" PlaceHolder="Enter ROI Type" />
                                          <span id="ContentPlaceHolder1_RequiredFieldValidatortxtROIType" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter ROI Type</span>
                                       </div>
                                    </div>
                                    <div class="form-group row">
                                       <label for="txtEMIAmount" class="col-sm-4 control-label">EMI Amount <strong style="color: Red">*</strong></label>
                                       <div class="col-sm-8">
                                          <input name="emiAmount" type="text" readonly="readonly" id="emiAmount" class="form-control" PlaceHolder="Enter EMI Amount" />
                                          <span id="ContentPlaceHolder1_RequiredFieldValidatortxtEMIAmount" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter EMI Amount</span>
                                       </div>
                                    </div>
                                 </div>
                                 <div class="form-group row">
                                    <label for="txtLoanPurpose" class="col-sm-4 control-label">Loan Purpose <strong style="color: Red">*</strong></label>
                                    <div class="col-sm-8">
                                       <input name="loanPurpose" type="text" id="loanPurpose" class="form-control" PlaceHolder="Enter Loan Purpose" />
                                       <span id="ContentPlaceHolder1_RequiredFieldValidatorLoanPurpose" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Loan Purpose</span>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                     <div class="col-md-2">
                        <div class="box box-success">
                           <div class="box-header with-border">
                              <h3 class="box-title">Photo </h3>
                           </div>
                           <div class="box-body">
                              <div class="col-md-3">
                                 <div class="form-group">
                                    <div class="text-center">
                                       <img id="ContentPlaceHolder1_ImageApplicant" class="profile-user-img" src="dist/img/photo.jpg" style="width:110px;" />
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="box box-success">
                           <div class="box-header with-border">
                              <h3 class="box-title">Signature </h3>
                           </div>
                           <div class="box-body">
                              <div class="col-md-3">
                                 <div class="form-group">
                                    <div class="text-center">
                                       <img id="ContentPlaceHolder1_ImageSignature" class="profile-user-img" src="dist/img/sign.jpg" style="height:70px;width:115px;" />
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div id="ContentPlaceHolder1_upnlLAD">
                  </div>
                  <div class="row">
                     <div class="col-md-10">
                        <div class="box box-success">
                           <div class="box-body">
                              <div id="ContentPlaceHolder1_upguardian">
                                 <div class="col-md-6">
                                    <div class="form-group row text-center">
                                       <div class="box-header with-border">
                                          <h3 class="box-title">Guarantor Details</h3>
                                       </div>
                                    </div>
                                    <div class="form-group row">
                                       <label for="txtGuarantorMember2" class="col-sm-4 control-label">Member Code </label>
                                       <div class="col-sm-8">
                                          <input name="guarantorCode" type="text"  id="guarantorCode" class="form-control" Placeholder="Enter Guarantor Member 2" />
                                       </div>
                                    </div>
                                    <div class="form-group row">
                                       <label for="txtMembersRelativesNameRelationGu" class="col-sm-4 control-label">Guarantor Name </label>
                                       <div class="col-sm-8">
                                          <input name="guarantorName" type="text" readonly="readonly" id="guarantorName" class="form-control" />
                                       </div>
                                    </div>
                                    <div class="form-group row">
                                       <label for="txtAddressGuarantor" class="col-sm-4 control-label">Address </label>
                                       <div class="col-sm-8">
                                          <input name="addressGuarantor" type="text" readonly="readonly" id="addressGuarantor" class="form-control" Placeholder="Enter Address" />
                                       </div>
                                    </div>
                                    <div class="form-group row">
                                       <label for="txtPincodeGuarantor" class="col-sm-4 control-label">Pin Code </label>
                                       <div class="col-sm-8">
                                          <input name="pincodeGuarantor" type="text" readonly="readonly" id="pincodeGuarantor" class="form-control" PlaceHolder="Enter Pin Code" />
                                       </div>
                                    </div>
                                    <div class="form-group row">
                                       <label for="txtphone" class="col-sm-4 control-label">Phone </label>
                                       <div class="col-sm-8">
                                          <input name="guarantorphone" type="text" readonly="readonly" id="guarantorphone" class="form-control" Placeholder="Enter Phone" />
                                       </div>
                                    </div>
                                    <div class="form-group row">
                                       <label class="col-sm-4 control-label">Security Type </label>
                                       <div class="col-sm-8">
                                          <select name="securityType" id="securityType" class="form-control" style="width: 100%;">
                                             <option value="Select">Select</option>
                                             <option value="Loan Against Cheque">Loan Against Cheque</option>
                                             <option value="Loan Against Gold">Loan Against Gold</option>
                                             <option value="Loan Against Silver">Loan Against Silver</option>
                                             <option value="Loan Against Deposit">Loan Against Deposit</option>
                                             <option value="Any Others">Any Others</option>
                                          </select>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                              <div id="ContentPlaceHolder1_upcoap">
                                 <div class="col-md-6">
                                    <div class="form-group row text-center">
                                       <div class="box-header with-border">
                                          <h3 class="box-title">Co-Applicant Details</h3>
                                       </div>
                                    </div>
                                    <div class="form-group row">
                                       <label for="txtCoApplicantName" class="col-sm-4 control-label">Member Code </label>
                                       <div class="col-sm-8">
                                          <input name="coApplicantCode" type="text"  id="coApplicantCode" class="form-control" Placeholder="Enter Co-Applicant Member Code" />
                                       </div>
                                    </div>
                                    <div class="form-group row">
                                       <label for="txtMemberRelativesName" class="col-sm-4 control-label">Name</label>
                                       <div class="col-sm-8">
                                          <input name="memberRelativesName" type="text" readonly="readonly" id="memberRelativesName" class="form-control" Placeholder="Enter Co-Applicant Name" />
                                       </div>
                                    </div>
                                    <div class="form-group row">
                                       <label for="txtAddressco" class="col-sm-4 control-label">Address </label>
                                       <div class="col-sm-8">
                                          <input name="addressco" type="text" readonly="readonly" id="addressco" class="form-control" Placeholder="Enter Address" />
                                       </div>
                                    </div>
                                    <div class="form-group row">
                                       <label for="txtPincodeco" class="col-sm-4 control-label">Pincode </label>
                                       <div class="col-sm-8">
                                          <input name="pincodeco" type="text" readonly="readonly" id="pincodeco" class="form-control" Placeholder="Enter Pincode" />
                                       </div>
                                    </div>
                                    <div class="form-group row">
                                       <label for="txtPhoneco" class="col-sm-4 control-label">Phone</label>
                                       <div class="col-sm-8">
                                          <input name="phoneco" type="text" readonly="readonly" id="phoneco" class="form-control" Placeholder="Enter Phone" />
                                       </div>
                                    </div>
                                    <div class="form-group row">
                                       <label for="txtSecurityDetails" class="col-sm-4 control-label">Security Details</label>
                                       <div class="col-sm-8">
                                          <input name="securityDetails" type="text" id="securityDetails" class="form-control" Placeholder="Enter Security Details" />
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-10">
                        <div class="box box-danger">
                           <div class="box-header with-border">
                              <h3 class="box-title">Deduction Details </h3>
                           </div>
                           <div class="box-body">
                              <div class="col-md-6">
                                 <div id="ContentPlaceHolder1_uppnlde">
                                    <div class="form-group row">
                                       <label for="txtProcessingFee" class="col-sm-4 control-label">Processing Fee<strong style="color: Red">*</strong></label>
                                       <div class="col-sm-8">
                                          <input name="processingFee" type="text" readonly="readonly" id="processingFee" class="form-control" />
                                       </div>
                                    </div>
                                    <div class="form-group row">
                                       <label for="txtLegalAmt" class="col-sm-4 control-label">Legal Amt<strong style="color: Red">*</strong></label>
                                       <div class="col-sm-8">
                                          <input name="legalAmt" type="text" readonly="readonly" id="legalAmt" class="form-control" />
                                       </div>
                                    </div>
                                 </div>
                                 <div id="ContentPlaceHolder1_uppnkad">
                                    <div class="form-group row">
                                       <label class="col-sm-4 control-label">Advisor/Collector Code <strong style="color: Red">*</strong></label>
                                       <div class="col-sm-8">
                                          <input name="advisorCode" type="text" id="advisorCode" class="form-control" placeholder="Enter Advisor/Collector Code" />
                                          <span id="ContentPlaceHolder1_RequiredFieldValidator6" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Advisor/Collector Code</span>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                              <div class="col-md-6">
                                 <div id="ContentPlaceHolder1_upduc">
                                    <!-- <div class="form-group row">
                                       <label for="txtGST" class="col-sm-4 control-label">GST<strong style="color: Red">*</strong></label>
                                       <div class="col-sm-8">
                                          <input name="GST" type="text" readonly="readonly" id="GST" class="form-control" />
                                       </div>
                                    </div> -->
                                    <div class="form-group row">
                                       <label for="txtInsuranceAmt" class="col-sm-4 control-label">Insurance Amt<strong style="color: Red">*</strong></label>
                                       <div class="col-sm-8">
                                          <input name="insuranceAmt" type="text" readonly="readonly" id="insuranceAmt" class="form-control" />
                                       </div>
                                    </div>
                                 </div>
                                 <div id="ContentPlaceHolder1_uppnladname">
                                    <div class="form-group row">
                                       <label class="col-sm-4 control-label">Advisor/Collector Name <strong style="color: Red">*</strong></label>
                                       <div class="col-sm-8">
                                          <input name="advisorName" type="text" readonly="readonly" id="advisorName" class="form-control" placeholder="Enter Advisor/Collector Name" />
                                          <span id="ContentPlaceHolder1_RequiredFieldValidator7" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Advisor/Collector Name</span>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                           <div class="box-footer">
                              <div class="row col-md-12">
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div id="ContentPlaceHolder1_idApproval" class="row">
                     <div class="col-md-10">
                        <div class="box box-danger">
                           <div class="box-header with-border">
                              <h3 class="box-title">Approval Details </h3>
                           </div>
                           <div class="box-body">
                              <div class="col-md-6">
                                 <div class="form-group row">
                                    <label class="col-sm-4 control-label">Approval Date <strong style="color: Red">*</strong></label>
                                    <div class="col-sm-8">
                                       <div class="input-group date">
                                          <div class="input-group-addon">
                                             <i class="fa fa-calendar"></i>
                                          </div>
                                          <input name="approvalDate" type="text" value="01/08/2022" id="approvalDate" class="form-control" data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;" data-mask="" />
                                       </div>
                                    </div>
                                 </div>
                              </div>
                              <div class="col-md-6">
                                 <div class="form-group row">
                                    <label for="txtProcessingFee" class="col-sm-4 control-label">Approval Status</label>
                                    <div class="col-sm-8">
                                       <input name="approvalStatus" type="text" readonly="readonly" id="approvalStatus" class="form-control" style="font-weight:bold;" />
                                    </div>
                                 </div>
                              </div>
                           </div>
                           <div class="box-footer">
									<div class="row col-md-12">

										<input type="submit" name="ctl00$ContentPlaceHolder1$btnNew"
											value="New" id="ContentPlaceHolder1_btnNew"
											class="btn btn-info pull-right margin-r-5" 
											onclick="this.disabled = true"/> 
											
											<input
											type="submit" name="ctl00$ContentPlaceHolder1$btnSave"
											value="Save"
											id="ContentPlaceHolder1_btnSave"
											class="btn btn-success pull-right margin-r-5" />
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
            var Page_Validators =  new Array(document.getElementById("ContentPlaceHolder1_RequiredFieldValidator5"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorddlMemberCode"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorBranchCode"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidator12"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidator8"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidator3"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidator4"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidator1"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorLoanROI"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorLoanAmount"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidatortxtROIType"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidatortxtEMIAmount"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorLoanPurpose"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidator6"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidator7"));
            //]]>
         </script>
         <script type="text/javascript">
            //<![CDATA[
            var ContentPlaceHolder1_RequiredFieldValidator5 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator5"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidator5");
            ContentPlaceHolder1_RequiredFieldValidator5.controltovalidate = "ContentPlaceHolder1_txtLoanDate";
            ContentPlaceHolder1_RequiredFieldValidator5.focusOnError = "t";
            ContentPlaceHolder1_RequiredFieldValidator5.errormessage = "Enter Loan Date";
            ContentPlaceHolder1_RequiredFieldValidator5.display = "Dynamic";
            ContentPlaceHolder1_RequiredFieldValidator5.validationGroup = "A";
            ContentPlaceHolder1_RequiredFieldValidator5.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
            ContentPlaceHolder1_RequiredFieldValidator5.initialvalue = "";
            var ContentPlaceHolder1_RequiredFieldValidatorddlMemberCode = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorddlMemberCode"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorddlMemberCode");
            ContentPlaceHolder1_RequiredFieldValidatorddlMemberCode.controltovalidate = "ContentPlaceHolder1_ddlSearchMemberCode";
            ContentPlaceHolder1_RequiredFieldValidatorddlMemberCode.focusOnError = "t";
            ContentPlaceHolder1_RequiredFieldValidatorddlMemberCode.errormessage = "Select Member Code";
            ContentPlaceHolder1_RequiredFieldValidatorddlMemberCode.display = "Dynamic";
            ContentPlaceHolder1_RequiredFieldValidatorddlMemberCode.validationGroup = "A";
            ContentPlaceHolder1_RequiredFieldValidatorddlMemberCode.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
            ContentPlaceHolder1_RequiredFieldValidatorddlMemberCode.initialvalue = "";
            var ContentPlaceHolder1_RequiredFieldValidatorBranchCode = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorBranchCode"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorBranchCode");
            ContentPlaceHolder1_RequiredFieldValidatorBranchCode.controltovalidate = "ContentPlaceHolder1_txtRelativeDetails";
            ContentPlaceHolder1_RequiredFieldValidatorBranchCode.focusOnError = "t";
            ContentPlaceHolder1_RequiredFieldValidatorBranchCode.errormessage = "Enter Relative Name & Relation";
            ContentPlaceHolder1_RequiredFieldValidatorBranchCode.display = "Dynamic";
            ContentPlaceHolder1_RequiredFieldValidatorBranchCode.validationGroup = "A";
            ContentPlaceHolder1_RequiredFieldValidatorBranchCode.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
            ContentPlaceHolder1_RequiredFieldValidatorBranchCode.initialvalue = "";
            var ContentPlaceHolder1_RequiredFieldValidator12 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator12"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidator12");
            ContentPlaceHolder1_RequiredFieldValidator12.controltovalidate = "ContentPlaceHolder1_txtAge";
            ContentPlaceHolder1_RequiredFieldValidator12.focusOnError = "t";
            ContentPlaceHolder1_RequiredFieldValidator12.errormessage = "Enter Age";
            ContentPlaceHolder1_RequiredFieldValidator12.display = "Dynamic";
            ContentPlaceHolder1_RequiredFieldValidator12.validationGroup = "A";
            ContentPlaceHolder1_RequiredFieldValidator12.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
            ContentPlaceHolder1_RequiredFieldValidator12.initialvalue = "";
            var ContentPlaceHolder1_RequiredFieldValidator8 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator8"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidator8");
            ContentPlaceHolder1_RequiredFieldValidator8.controltovalidate = "ContentPlaceHolder1_txtPhoneno";
            ContentPlaceHolder1_RequiredFieldValidator8.focusOnError = "t";
            ContentPlaceHolder1_RequiredFieldValidator8.errormessage = "Enter Phone No";
            ContentPlaceHolder1_RequiredFieldValidator8.display = "Dynamic";
            ContentPlaceHolder1_RequiredFieldValidator8.validationGroup = "A";
            ContentPlaceHolder1_RequiredFieldValidator8.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
            ContentPlaceHolder1_RequiredFieldValidator8.initialvalue = "";
            var ContentPlaceHolder1_RequiredFieldValidator3 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator3"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidator3");
            ContentPlaceHolder1_RequiredFieldValidator3.controltovalidate = "ContentPlaceHolder1_txtAddress";
            ContentPlaceHolder1_RequiredFieldValidator3.focusOnError = "t";
            ContentPlaceHolder1_RequiredFieldValidator3.errormessage = "Enter Address";
            ContentPlaceHolder1_RequiredFieldValidator3.display = "Dynamic";
            ContentPlaceHolder1_RequiredFieldValidator3.validationGroup = "A";
            ContentPlaceHolder1_RequiredFieldValidator3.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
            ContentPlaceHolder1_RequiredFieldValidator3.initialvalue = "";
            var ContentPlaceHolder1_RequiredFieldValidator4 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator4"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidator4");
            ContentPlaceHolder1_RequiredFieldValidator4.controltovalidate = "ContentPlaceHolder1_txtPin";
            ContentPlaceHolder1_RequiredFieldValidator4.focusOnError = "t";
            ContentPlaceHolder1_RequiredFieldValidator4.errormessage = "Enter PIN";
            ContentPlaceHolder1_RequiredFieldValidator4.display = "Dynamic";
            ContentPlaceHolder1_RequiredFieldValidator4.validationGroup = "A";
            ContentPlaceHolder1_RequiredFieldValidator4.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
            ContentPlaceHolder1_RequiredFieldValidator4.initialvalue = "";
            var ContentPlaceHolder1_RequiredFieldValidator1 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator1"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidator1");
            ContentPlaceHolder1_RequiredFieldValidator1.controltovalidate = "ContentPlaceHolder1_txtMode";
            ContentPlaceHolder1_RequiredFieldValidator1.focusOnError = "t";
            ContentPlaceHolder1_RequiredFieldValidator1.errormessage = "Enter Mode";
            ContentPlaceHolder1_RequiredFieldValidator1.display = "Dynamic";
            ContentPlaceHolder1_RequiredFieldValidator1.validationGroup = "A";
            ContentPlaceHolder1_RequiredFieldValidator1.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
            ContentPlaceHolder1_RequiredFieldValidator1.initialvalue = "";
            var ContentPlaceHolder1_RequiredFieldValidatorLoanROI = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorLoanROI"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorLoanROI");
            ContentPlaceHolder1_RequiredFieldValidatorLoanROI.controltovalidate = "ContentPlaceHolder1_txtLoanROI";
            ContentPlaceHolder1_RequiredFieldValidatorLoanROI.focusOnError = "t";
            ContentPlaceHolder1_RequiredFieldValidatorLoanROI.errormessage = "Enter Loan ROI";
            ContentPlaceHolder1_RequiredFieldValidatorLoanROI.display = "Dynamic";
            ContentPlaceHolder1_RequiredFieldValidatorLoanROI.validationGroup = "A";
            ContentPlaceHolder1_RequiredFieldValidatorLoanROI.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
            ContentPlaceHolder1_RequiredFieldValidatorLoanROI.initialvalue = "";
            var ContentPlaceHolder1_RequiredFieldValidatorLoanAmount = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorLoanAmount"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorLoanAmount");
            ContentPlaceHolder1_RequiredFieldValidatorLoanAmount.controltovalidate = "ContentPlaceHolder1_txtLoanAmount";
            ContentPlaceHolder1_RequiredFieldValidatorLoanAmount.focusOnError = "t";
            ContentPlaceHolder1_RequiredFieldValidatorLoanAmount.errormessage = "Enter Loan Amount";
            ContentPlaceHolder1_RequiredFieldValidatorLoanAmount.display = "Dynamic";
            ContentPlaceHolder1_RequiredFieldValidatorLoanAmount.validationGroup = "A";
            ContentPlaceHolder1_RequiredFieldValidatorLoanAmount.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
            ContentPlaceHolder1_RequiredFieldValidatorLoanAmount.initialvalue = "";
            var ContentPlaceHolder1_RequiredFieldValidatortxtROIType = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatortxtROIType"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatortxtROIType");
            ContentPlaceHolder1_RequiredFieldValidatortxtROIType.controltovalidate = "ContentPlaceHolder1_txtROIType";
            ContentPlaceHolder1_RequiredFieldValidatortxtROIType.focusOnError = "t";
            ContentPlaceHolder1_RequiredFieldValidatortxtROIType.errormessage = "Enter ROI Type";
            ContentPlaceHolder1_RequiredFieldValidatortxtROIType.display = "Dynamic";
            ContentPlaceHolder1_RequiredFieldValidatortxtROIType.validationGroup = "A";
            ContentPlaceHolder1_RequiredFieldValidatortxtROIType.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
            ContentPlaceHolder1_RequiredFieldValidatortxtROIType.initialvalue = "";
            var ContentPlaceHolder1_RequiredFieldValidatortxtEMIAmount = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatortxtEMIAmount"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatortxtEMIAmount");
            ContentPlaceHolder1_RequiredFieldValidatortxtEMIAmount.controltovalidate = "ContentPlaceHolder1_txtEMIAmount";
            ContentPlaceHolder1_RequiredFieldValidatortxtEMIAmount.focusOnError = "t";
            ContentPlaceHolder1_RequiredFieldValidatortxtEMIAmount.errormessage = "Enter EMI Amount";
            ContentPlaceHolder1_RequiredFieldValidatortxtEMIAmount.display = "Dynamic";
            ContentPlaceHolder1_RequiredFieldValidatortxtEMIAmount.validationGroup = "A";
            ContentPlaceHolder1_RequiredFieldValidatortxtEMIAmount.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
            ContentPlaceHolder1_RequiredFieldValidatortxtEMIAmount.initialvalue = "";
            var ContentPlaceHolder1_RequiredFieldValidatorLoanPurpose = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorLoanPurpose"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorLoanPurpose");
            ContentPlaceHolder1_RequiredFieldValidatorLoanPurpose.controltovalidate = "ContentPlaceHolder1_txtLoanPurpose";
            ContentPlaceHolder1_RequiredFieldValidatorLoanPurpose.focusOnError = "t";
            ContentPlaceHolder1_RequiredFieldValidatorLoanPurpose.errormessage = "Enter Loan Purpose";
            ContentPlaceHolder1_RequiredFieldValidatorLoanPurpose.display = "Dynamic";
            ContentPlaceHolder1_RequiredFieldValidatorLoanPurpose.validationGroup = "A";
            ContentPlaceHolder1_RequiredFieldValidatorLoanPurpose.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
            ContentPlaceHolder1_RequiredFieldValidatorLoanPurpose.initialvalue = "";
            var ContentPlaceHolder1_RequiredFieldValidator6 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator6"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidator6");
            ContentPlaceHolder1_RequiredFieldValidator6.controltovalidate = "ContentPlaceHolder1_txtAdvisorCode";
            ContentPlaceHolder1_RequiredFieldValidator6.focusOnError = "t";
            ContentPlaceHolder1_RequiredFieldValidator6.errormessage = "Enter Advisor/Collector Code";
            ContentPlaceHolder1_RequiredFieldValidator6.display = "Dynamic";
            ContentPlaceHolder1_RequiredFieldValidator6.validationGroup = "A";
            ContentPlaceHolder1_RequiredFieldValidator6.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
            ContentPlaceHolder1_RequiredFieldValidator6.initialvalue = "";
            var ContentPlaceHolder1_RequiredFieldValidator7 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator7"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidator7");
            ContentPlaceHolder1_RequiredFieldValidator7.controltovalidate = "ContentPlaceHolder1_txtAdvisorName";
            ContentPlaceHolder1_RequiredFieldValidator7.focusOnError = "t";
            ContentPlaceHolder1_RequiredFieldValidator7.errormessage = "Enter Advisor/Collector Name";
            ContentPlaceHolder1_RequiredFieldValidator7.display = "Dynamic";
            ContentPlaceHolder1_RequiredFieldValidator7.validationGroup = "A";
            ContentPlaceHolder1_RequiredFieldValidator7.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
            ContentPlaceHolder1_RequiredFieldValidator7.initialvalue = "";
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
                    
            document.getElementById('ContentPlaceHolder1_RequiredFieldValidator5').dispose = function() {
                Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator5'));
            }
            
            document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorddlMemberCode').dispose = function() {
                Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorddlMemberCode'));
            }
            
            document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorBranchCode').dispose = function() {
                Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorBranchCode'));
            }
            
            document.getElementById('ContentPlaceHolder1_RequiredFieldValidator12').dispose = function() {
                Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator12'));
            }
            
            document.getElementById('ContentPlaceHolder1_RequiredFieldValidator8').dispose = function() {
                Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator8'));
            }
            
            document.getElementById('ContentPlaceHolder1_RequiredFieldValidator3').dispose = function() {
                Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator3'));
            }
            
            document.getElementById('ContentPlaceHolder1_RequiredFieldValidator4').dispose = function() {
                Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator4'));
            }
            
            document.getElementById('ContentPlaceHolder1_RequiredFieldValidator1').dispose = function() {
                Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator1'));
            }
            
            document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorLoanROI').dispose = function() {
                Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorLoanROI'));
            }
            
            document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorLoanAmount').dispose = function() {
                Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorLoanAmount'));
            }
            
            document.getElementById('ContentPlaceHolder1_RequiredFieldValidatortxtROIType').dispose = function() {
                Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatortxtROIType'));
            }
            
            document.getElementById('ContentPlaceHolder1_RequiredFieldValidatortxtEMIAmount').dispose = function() {
                Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatortxtEMIAmount'));
            }
            
            document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorLoanPurpose').dispose = function() {
                Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorLoanPurpose'));
            }
            
            document.getElementById('ContentPlaceHolder1_RequiredFieldValidator6').dispose = function() {
                Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator6'));
            }
            
            document.getElementById('ContentPlaceHolder1_RequiredFieldValidator7').dispose = function() {
                Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator7'));
            }
            //]]>
         </script>
      </form>
   </body>
   <!-- Dk/Admin/LoanApplication.aspx?Type=Approval EDB D 09:27:09 GMT -->
</html>