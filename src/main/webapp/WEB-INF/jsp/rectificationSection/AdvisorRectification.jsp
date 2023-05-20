<jsp:include page="../header.jsp" />
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<script type="text/javascript">

function calculateAge() {
	   const dob = new Date(document.getElementById("dob").value); // get DOB from the date input field
	   const ageId = Math.floor((Date.now() - dob) / (365.25 * 24 * 60 * 60 * 1000)); // calculate age
	   document.getElementById("age").value = ageId; // set the calculated age in the age input field
	 }
 </script>

<body class="skin-blue sidebar-mini" onload="getAllIDAfterSoftDeleteOperation();"
	style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);"
	cz-shortcut-listen="true">
	<!-- <form method="post" 
		action="http://admin:eqfi%23123@eqfinidhi.eadmin.in/Admin/AddAdvisor.aspx?IsModification=true"
		onsubmit="javascript:return WebForm_OnSubmit();" id="form1"> -->

		<div
			style="height: auto; min-height: 100%; border-radius: 30px; margin: 15px; background: url(dist/img/back.jpg);">

			<!-- Header Start-->
			<jsp:include page="../menu.jsp" />
			<!-- Header End -->
			<!-- Left side column. contains the logo and sidebar -->
			<!-- Aside Menu Start-->
			<jsp:include page="../asideMenu.jsp" />
			<!-- Aside Menu end -->

			<!-- Left side column. contains the logo and sidebar -->
			<script type="text/javascript">
//<![CDATA[
Sys.WebForms.PageRequestManager._initialize('ctl00$ScriptManager1', 'form1', [], [], [], 90, 'ctl00');
//]]>
</script>

			<!-- Content Wrapper. Contains page content -->
			<div class="content-wrapper" style="min-height: 1105.75px;">



				<section class="content-header">
					<h1 id="ContentPlaceHolder1_IdHeader">Edit Advisor/Collector</h1>
					<ol class="breadcrumb">
						<li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
						<li><a href="#">Dashboard</a></li>
						<li class="active">Advisor/Collector</li>
					</ol>
				</section>
				
				
				
				<section class="content">
					<div id="ContentPlaceHolder1_idSearch" class="row">
						<div class="col-md-12">
							<div class="box box-warning">
								<div class="box-header with-border">
									<h3 class="box-title">Search Details</h3>
									<div class="box-tools pull-right">
                              			<button type="button" name="BtnEdit" 
                              			id="BtnEdit"
                              			onclick="enableDisabledFieldOfRectification();">
                              			<img src="dist/img/pen_paper_2-32.png"/>
                              			</button>
                           			</div>
								</div>
								
								<div class="form-horizontal">
									<div class="box-body">
										<div class="col-md-6">
											<div class="form-group row">
												<label class="col-sm-4 control-label">Select by Code<strong
													style="color: Red">*</strong></label>
												<div class="col-sm-8">
													<select
														name="id"
														onchange="searchById();"
														id="id"
														class="form-control select2" style="width: 100%;">
														<option  value=""></option>

													</select>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<form  id="myForm" name="myForm"   >
					
					<input id="id133" name="id133" type="hidden">
					

					<div class="row">
						<div class="col-md-10">
							<div class="box box-info">
								<div class="box-header with-border">
									<h3 class="box-title">Advisor/Collector Details</h3>
								</div>

								<div class="box-body">
									<div class="col-md-6">

										<div class="form-group row">
											<label class="col-sm-4 control-label">Joining Date <strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<div class="input-group date">
													<div class="input-group-addon">
														<i class="fa fa-calendar"></i>
													</div>

													<input name="joiningDate" type="date"
														id="joiningDate"
														class="form-control"
														data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;"
														data-mask="" />


												</div>
												<span id="ContentPlaceHolder1_RequiredFieldValidator5"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Registration Date</span>
											</div>
										</div>


										<div class="form-group row">
											<label class="col-sm-4 control-label">Select Member <strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<select name="selectMember"
													id="selectMember"
													class="form-control" style="width: 100%;">
													<option value="01/NGP/ 000001">ANKUSH GAJANANRAO
														BHELKAR - 01/NGP/ 000001</option>
													<option value="01/NGP/ 000002">SUDHIR KRISHNARAO
														BOREKAR - 01/NGP/ 000002</option>
													<option value="01/NGP/ 000003">MANGESH KRUSHNARAO
														BOREKAR - 01/NGP/ 000003</option>
													<option value="01/NGP/ 000004">RAJESH BABULAL
														BHAGAT - 01/NGP/ 000004</option>
													<option value="01/NGP/ 000005">ROSHAN SHANKARRAOJI
														RAUT - 01/NGP/ 000005</option>
													<option value="01/NGP/ 000006">REKHA GAJANAN
														BHELKAR - 01/NGP/ 000006</option>
													<option value="01/NGP/ 000007">MAYURI ANKUSH
														BHELKAR - 01/NGP/ 000007</option>
													<option value="01/NGP/ 000008">AKASH ATMARAM SHAHU
														- 01/NGP/ 000008</option>
													<option value="01/NGP/ 000009">AKSHAY SANJAYRAO
														DORLE - 01/NGP/ 000009</option>
													<option value="01/NGP/ 000010">AKASH WASUDEO
														VANGAR - 01/NGP/ 000010</option>
													<option value="01/NGP/ 000011">ANIL VIKRAM SINGH -
														01/NGP/ 000011</option>
													<option value="01/NGP/ 000012">ANIL YASHWANTRAO
														FUNDE - 01/NGP/ 000012</option>
													<option value="01/NGP/ 000013">ANITA PRAKASH PURVE
														- 01/NGP/ 000013</option>
													<option value="01/NGP/ 000014">ANKIT MANOHAR
														NIMBULKAR - 01/NGP/ 000014</option>
													<option value="01/NGP/ 000015">ARCHANA SANJAY
														THAKARE - 01/NGP/ 000015</option>
													<option value="01/NGP/ 000016">ARUNA BABULAL
														PANCHESHWAR - 01/NGP/ 000016</option>
													<option value="01/NGP/ 000017">ARVIND RAMUGRAH
														MISHRA - 01/NGP/ 000017</option>
													<option value="01/NGP/ 000018">ASHA BABLU
														RAHANGDALE - 01/NGP/ 000018</option>
													<option value="01/NGP/ 000019">ASHISH ARUNRAO
														JAWADE - 01/NGP/ 000019</option>
													<option value="01/NGP/ 000020">AVINASH ASHOKRAO
														WANKHEDE - 01/NGP/ 000020</option>
													<option value="01/NGP/ 000021">BABITA ARVIND
														MISHRA - 01/NGP/ 000021</option>
													<option value="01/NGP/ 000022">BULAL SATYALAL
														PANCHESHWAR - 01/NGP/ 000022</option>
													<option value="01/NGP/ 000023">BEBIBAI FULSINGH
														PATLE - 01/NGP/ 000023</option>
													<option value="01/NGP/ 000024">BHAVISH KISAN
														WASNIK - 01/NGP/ 000024</option>
													<option value="01/NGP/ 000025">BHUSHAN VITTHAL
														RAUT - 01/NGP/ 000025</option>
													<option value="01/NGP/ 000026">CHANDRASHEKHAR
														NAGORAO LOKHANDE - 01/NGP/ 000026</option>
													<option value="01/NGP/ 000027">CHETAN TEJSINGH
														WAGHMARE - 01/NGP/ 000027</option>
													<option value="01/NGP/ 000028">DANISH SURESH
														BHOWATE - 01/NGP/ 000028</option>
													<option value="01/NGP/ 000029">DEEPAK VASANT BHOGE
														- 01/NGP/ 000029</option>
													<option value="01/NGP/ 000030">DEEPALI ARUN TOTE -
														01/NGP/ 000030</option>
													<option value="01/NGP/ 000031">DEEPALI PRADIP
														PANDE - 01/NGP/ 000031</option>
													<option value="01/NGP/ 000032">DIPINTI ASHOK CHUTE
														- 01/NGP/ 000032</option>
													<option value="01/NGP/ 000033">DHARMENDRA KAPIL
														BASONE - 01/NGP/ 000033</option>
													<option value="01/NGP/ 000034">DHARMENDRA PRAYAG
														SHARMA - 01/NGP/ 000034</option>
													<option value="01/NGP/ 000035">DINESH BHAURAO
														GANORKAR - 01/NGP/ 000035</option>
													<option value="01/NGP/ 000036">DINESH DEVRAJ
														KOHARE - 01/NGP/ 000036</option>
													<option value="01/NGP/ 000037">FULCHAND BHARATLAL
														NAGPURE - 01/NGP/ 000037</option>
													<option value="01/NGP/ 000038">GAJENDRA RUPLAL
														DHARAMGADE - 01/NGP/ 000038</option>
													<option value="01/NGP/ 000039">GIRISH BAJRANG
														PANDEL - 01/NGP/ 000039</option>
													<option value="01/NGP/ 000040">GURUPRASAD RAMESH
														HANWAT - 01/NGP/ 000040</option>
													<option value="01/NGP/ 000041">HEMLATA KAILASH
														BALORE - 01/NGP/ 000041</option>
													<option value="01/NGP/ 000042">IMRAN SHAHBUDDIN
														KHAN - 01/NGP/ 000042</option>
													<option value="01/NGP/ 000043">IYER VIGNESH
														VENKATRAMAN - 01/NGP/ 000043</option>
													<option value="01/NGP/ 000044">JAGESHWAR CHUDAMAN
														NANDANWAR - 01/NGP/ 000044</option>
													<option value="01/NGP/ 000045">JAIDEVI NANDU
														SHARMA - 01/NGP/ 000045</option>
													<option value="01/NGP/ 000046">JAITUNISHA RAFIK
														SHAH - 01/NGP/ 000046</option>
													<option value="01/NGP/ 000047">JAYSHREE MUKESH
														DRAVEKAR - 01/NGP/ 000047</option>
													<option value="01/NGP/ 000048">JITENDRA KANHAIYA
														BHATIYA - 01/NGP/ 000048</option>
													<option value="01/NGP/ 000049">JYOTI GANESH WADIWA
														- 01/NGP/ 000049</option>
													<option value="01/NGP/ 000050">KAILASH SADHURAM
														BALORE - 01/NGP/ 000050</option>
													<option value="01/NGP/ 000051">KANHAIYALAL
														GANGARAM BHATIYA - 01/NGP/ 000051</option>
													<option value="01/NGP/ 000052">KANTABAI SAWANLAL
														BHAGAT - 01/NGP/ 000052</option>
													<option value="01/NGP/ 000053">KARTHIK K L
														VENKATRAMAN - 01/NGP/ 000053</option>
													<option value="01/NGP/ 000054">KISHOR KAWADU
														WANKHEDE - 01/NGP/ 000054</option>
													<option value="01/NGP/ 000055">KRUSHNA GAJANAN
														TIWASKAR - 01/NGP/ 000055</option>
													<option value="01/NGP/ 000056">KRUSHNA SHIVNARAYAN
														GUPTA - 01/NGP/ 000056</option>
													<option value="01/NGP/ 000057">LAKSHMI ASHOKRAO
														CHUTE - 01/NGP/ 000057</option>
													<option value="01/NGP/ 000058">LATA VITTHALRAO
														RAUT - 01/NGP/ 000058</option>
													<option value="01/NGP/ 000059">LAKSHMICHAND
														SANPATRAO BANSOD - 01/NGP/ 000059</option>
													<option value="01/NGP/ 000060">MADHURI DIPAKRAO
														BHOGE - 01/NGP/ 000060</option>
													<option value="01/NGP/ 000061">MADHURI PRAVIN
														GAIKWAD - 01/NGP/ 000061</option>
													<option value="01/NGP/ 000062">MAHAK MOHMADDIN
														ANSARI - 01/NGP/ 000062</option>
													<option value="01/NGP/ 000063">MAHENDRA KUMAR
														GUPTA - 01/NGP/ 000063</option>
													<option value="01/NGP/ 000064">MALATI MILIND PATIL
														- 01/NGP/ 000064</option>
													<option value="01/NGP/ 000065">MALLIKA MOINUDDIN
														ANSARI - 01/NGP/ 000065</option>
													<option value="01/NGP/ 000066">MANDA ANIL THAKARE
														- 01/NGP/ 000066</option>
													<option value="01/NGP/ 000067">MANGLESH PANDIT
														MESHRAM - 01/NGP/ 000067</option>
													<option value="01/NGP/ 000068">MANGESH FULSINGH
														PATLE - 01/NGP/ 000068</option>
													<option value="01/NGP/ 000069">MANISHA ANILRAO
														DONGRE - 01/NGP/ 000069</option>
													<option value="01/NGP/ 000070">MANISHA OMPRAKASH
														MOHARLE - 01/NGP/ 000070</option>
													<option value="01/NGP/ 000071">MANGLA SANJAY LAD -
														01/NGP/ 000071</option>
													<option value="01/NGP/ 000072">MANOJ MAROTI GHARAD
														- 01/NGP/ 000072</option>
													<option value="01/NGP/ 000073">MAROTI KRUSHNA
														SELOKAR - 01/NGP/ 000073</option>
													<option value="01/NGP/ 000074">MAROTI MITHILDAS
														TATHE - 01/NGP/ 000074</option>
													<option value="01/NGP/ 000075">MAYURI ROHIT KADU -
														01/NGP/ 000075</option>
													<option value="01/NGP/ 000076">MEENA SANDEEP PURI
														GOSWAMI - 01/NGP/ 000076</option>
													<option value="01/NGP/ 000077">MEENA DINDAYAL GOUR
														- 01/NGP/ 000077</option>
													<option value="01/NGP/ 000078">MILIND MANOHARRAO
														PINJARKAR - 01/NGP/ 000078</option>
													<option value="01/NGP/ 000079">MEENA KRUSHNA
														TIWASKAR - 01/NGP/ 000079</option>
													<option value="01/NGP/ 000080">MITHILESH BHIMRAO
														BHAGAT - 01/NGP/ 000080</option>
													<option value="01/NGP/ 000081">MITHUN DAMODHAR
														WANKHEDE - 01/NGP/ 000081</option>
													<option value="01/NGP/ 000082">MOHAMMAD PARWEJ
														ANSARI - 01/NGP/ 000082</option>
													<option value="01/NGP/ 000083">NALU RAJUJI BURADE
														- 01/NGP/ 000083</option>
													<option value="01/NGP/ 000084">NAMITA SHANKAR
														SHAHU - 01/NGP/ 000084</option>
													<option value="01/NGP/ 000085">NANDU SARJU SHARMA
														- 01/NGP/ 000085</option>
													<option value="01/NGP/ 000086">NARENDRA KESHWARAO
														UKANDE - 01/NGP/ 000086</option>
													<option value="01/NGP/ 000087">NEETA ABHAY
														PACHGHARE - 01/NGP/ 000087</option>
													<option value="01/NGP/ 000088">NEHAL GOUTAM BANKAR
														- 01/NGP/ 000088</option>
													<option value="01/NGP/ 000089">NILESH YASHWANTRAO
														KARSARPE - 01/NGP/ 000089</option>
													<option value="01/NGP/ 000090">NILU DHARMENDRA
														SHARMA - 01/NGP/ 000090</option>
													<option value="01/NGP/ 000091">NISHA NATTHULAL
														VARSHEKAR - 01/NGP/ 000091</option>
													<option value="01/NGP/ 000092">PANKAJ HIRALAL
														NAGPURE - 01/NGP/ 000092</option>
													<option value="01/NGP/ 000093">PAPITA JAGAN
														SONTAKKE - 01/NGP/ 000093</option>
													<option value="01/NGP/ 000094">POURNIMA MADHAV
														GHODVAIDYA - 01/NGP/ 000094</option>
													<option value="01/NGP/ 000095">PRAFUL SHEKHAR
														ROJEKAR - 01/NGP/ 000095</option>
													<option value="01/NGP/ 000096">PRAKASH SONI -
														01/NGP/ 000096</option>
													<option value="01/NGP/ 000097">PRAKASH BAISAKU
														PURVE - 01/NGP/ 000097</option>
													<option value="01/NGP/ 000098">PRAMILA
														GOURISHANKAR PAWAR - 01/NGP/ 000098</option>
													<option value="01/NGP/ 000099">PRANIL KRISHNARAO
														MENDHE - 01/NGP/ 000099</option>
													<option value="01/NGP/ 000100">PRATIK ARUN ANASANE
														- 01/NGP/ 000100</option>
													<option value="01/NGP/ 000101">PRITI PANKAJ BHAGAT
														- 01/NGP/ 000101</option>
													<option value="01/NGP/ 000102">PRIYA NEHAL WANKAR
														- 01/NGP/ 000102</option>
													<option value="01/NGP/ 000103">PRIYANKA SHASHIKANT
														SHUKLA - 01/NGP/ 000103</option>
													<option value="01/NGP/ 000104">PUSHPA SURESHRAO
														BORIKAR - 01/NGP/ 000104</option>
													<option value="01/NGP/ 000105">PYSHPA RAMCHANDRA
														BHOYAR - 01/NGP/ 000105</option>
													<option value="01/NGP/ 000106">RAFIK NAIMUDDIN
														SHAH - 01/NGP/ 000106</option>
													<option value="01/NGP/ 000107">RAHUL MANOHAR UIKEY
														- 01/NGP/ 000107</option>
													<option value="01/NGP/ 000108">RAJKUMAR RAMDAS
														TAYDE - 01/NGP/ 000108</option>
													<option value="01/NGP/ 000109">RAJU SITARAM BURADE
														- 01/NGP/ 000109</option>
													<option value="01/NGP/ 000110">RAMCHANDRA MAHADEO
														BHOYAR - 01/NGP/ 000110</option>
													<option value="01/NGP/ 000111">RAVI DHANIRAM PATLE
														- 01/NGP/ 000111</option>
													<option value="01/NGP/ 000112">RAVI SUNIL AJIT -
														01/NGP/ 000112</option>
													<option value="01/NGP/ 000113">RAVINDRA DADUJI
														DONGARE - 01/NGP/ 000113</option>
													<option value="01/NGP/ 000114">RAVINDRA DATTUJI
														SHEGAMWAR - 01/NGP/ 000114</option>
													<option value="01/NGP/ 000115">RAVINDRA DHONDBA
														DHANDE - 01/NGP/ 000115</option>
													<option value="01/NGP/ 000116">REKHA RAVI PATLE -
														01/NGP/ 000116</option>
													<option value="01/NGP/ 000117">RINA PRADEEP SONI -
														01/NGP/ 000117</option>
													<option value="01/NGP/ 000118">RINKU DEVI -
														01/NGP/ 000118</option>
													<option value="01/NGP/ 000119">ROHIT VASANTRAO
														KADU - 01/NGP/ 000119</option>
													<option value="01/NGP/ 000120">ROSHAN KRUSHNARAOJI
														GOTMARE - 01/NGP/ 000120</option>
													<option value="01/NGP/ 000121">ROSHASNI VINOD
														THAKARE - 01/NGP/ 000121</option>
													<option value="01/NGP/ 000122">RUPESH NOHARLAL
														FUNNE - 01/NGP/ 000122</option>
													<option value="01/NGP/ 000123">RUPESH RAMCHANDRA
														BHOYAR - 01/NGP/ 000123</option>
													<option value="01/NGP/ 000124">SAHIN PARWIN ANSARI
														- 01/NGP/ 000124</option>
													<option value="01/NGP/ 000125">SANDEEP PURI OMKAR
														GOSWAMI - 01/NGP/ 000125</option>
													<option value="01/NGP/ 000126">SANJAY BARKUJI LAD
														- 01/NGP/ 000126</option>
													<option value="01/NGP/ 000127">SANJAY GHANSHU
														SHAHU - 01/NGP/ 000127</option>
													<option value="01/NGP/ 000128">SANJAY MAROTRAO
														THAKRE - 01/NGP/ 000128</option>
													<option value="01/NGP/ 000129">SARIKA JAGESHWAR
														NANDANWAR - 01/NGP/ 000129</option>
													<option value="01/NGP/ 000130">SARITA SHYAMLAL
														NEWARE - 01/NGP/ 000130</option>
													<option value="01/NGP/ 000131">SATYANARAYAN
														JAGDISHPRASAD GUPTA - 01/NGP/ 000131</option>
													<option value="01/NGP/ 000132">SATYAPRAKASH
														SATYANARAYAN GUPTA - 01/NGP/ 000132</option>
													<option value="01/NGP/ 000133">SAURABH DIPAK
														NAGRARE - 01/NGP/ 000133</option>
													<option value="01/NGP/ 000134">SAURABH PRAVIN GIRI
														- 01/NGP/ 000134</option>
													<option value="01/NGP/ 000135">SAVITA UMESH PATLE
														- 01/NGP/ 000135</option>
													<option value="01/NGP/ 000136">SAWANLAL SADASHIV
														BHAGAT - 01/NGP/ 000136</option>
													<option value="01/NGP/ 000137">SHAHBUDDIN RAHIS
														KHAN - 01/NGP/ 000137</option>
													<option value="01/NGP/ 000138">SHAILESH RUPCHAND
														KUHIKE - 01/NGP/ 000138</option>
													<option value="01/NGP/ 000139">SHAMLAL SHRIRAM
														NEWARE - 01/NGP/ 000139</option>
													<option value="01/NGP/ 000140">SHANKHRAJ SHESHMANI
														KUSHWAHA - 01/NGP/ 000140</option>
													<option value="01/NGP/ 000141">SHARAD SHRIRAM
														DESHMUKH - 01/NGP/ 000141</option>
													<option value="01/NGP/ 000142">SHASHIKANT NANDLAL
														SHUKLA - 01/NGP/ 000142</option>
													<option value="01/NGP/ 000143">SHEKH RAFIK SHEKH
														CHAND - 01/NGP/ 000143</option>
													<option value="01/NGP/ 000144">SHEKH RAFIK SHEKH
														CHAND - 01/NGP/ 000144</option>
													<option value="01/NGP/ 000145">SHITAL PRAKASH
														INGLE - 01/NGP/ 000145</option>
													<option value="01/NGP/ 000146">SHITAL UMESH INGALE
														- 01/NGP/ 000146</option>
													<option value="01/NGP/ 000147">SHIVNARAYAN
														JAMUNAPRASAD GUPTA - 01/NGP/ 000147</option>
													<option value="01/NGP/ 000148">SHRADDHA SIDHARTH
														DHAWLE - 01/NGP/ 000148</option>
													<option value="01/NGP/ 000149">SHUBHAM PRALHADRAO
														DHARWALE - 01/NGP/ 000149</option>
													<option value="01/NGP/ 000150">SHUBHAM KISHOR
														TIDKE - 01/NGP/ 000150</option>
													<option value="01/NGP/ 000151">SIDHARTH ARUN
														DHAWLE - 01/NGP/ 000151</option>
													<option value="01/NGP/ 000152">SOHIT DINESH KOLARE
														- 01/NGP/ 000152</option>
													<option value="01/NGP/ 000153">SUJATA SHUBHAM
														DHAVRAL - 01/NGP/ 000153</option>
													<option value="01/NGP/ 000154">SUBHASH LAKSHMAN
														PATIL - 01/NGP/ 000154</option>
													<option value="01/NGP/ 000155">SUMIT DOSHNATH
														SATIKOSRE - 01/NGP/ 000155</option>
													<option value="01/NGP/ 000156">SUNANDA TULSIRAM
														GAIYAKWAD - 01/NGP/ 000156</option>
													<option value="01/NGP/ 000157">SUNIL SHRIRAM
														GAWANDE - 01/NGP/ 000157</option>
													<option value="01/NGP/ 000158">SUNITA UMRAO
														KHOBRAGADE - 01/NGP/ 000158</option>
													<option value="01/NGP/ 000159">SURABHI RAJU GADAGE
														- 01/NGP/ 000159</option>
													<option value="01/NGP/ 000160">SURAJ MANOHAR
														POCCHI - 01/NGP/ 000160</option>
													<option value="01/NGP/ 000161">SURAJ NANDLAL SHAHA
														- 01/NGP/ 000161</option>
													<option value="01/NGP/ 000162">SUREKHA VILAS
														SHENDRE - 01/NGP/ 000162</option>
													<option value="01/NGP/ 000163">SUSHILA ANIL
														GAJBHIYE - 01/NGP/ 000163</option>
													<option value="01/NGP/ 000164">SUSHMA NARENDRA
														UKANDE - 01/NGP/ 000164</option>
													<option value="01/NGP/ 000165">SWATI SONAL PIMPALE
														- 01/NGP/ 000165</option>
													<option value="01/NGP/ 000166">TRIVENI ANIL
														GAJBHIYE - 01/NGP/ 000166</option>
													<option value="01/NGP/ 000167">TULSIRAM MANIKRAV
														GAIYAKWAD - 01/NGP/ 000167</option>
													<option value="01/NGP/ 000168">UCHIT ASHOK DHURVE
														- 01/NGP/ 000168</option>
													<option value="01/NGP/ 000169">UMESH KISNAJI
														INGALE - 01/NGP/ 000169</option>
													<option value="01/NGP/ 000170">VANDANA NOKENDRA
														PATLE - 01/NGP/ 000170</option>
													<option value="01/NGP/ 000171">VENUBAI BHIMRAO
														BANKAR - 01/NGP/ 000171</option>
													<option value="01/NGP/ 000172">VAISHALI LOKNATH
														RAMTEKE - 01/NGP/ 000172</option>
													<option value="01/NGP/ 000173">VISHVANATH SHRIDHAR
														TARONE - 01/NGP/ 000173</option>
													<option value="01/NGP/ 000174">VASANTABAI KISAN
														WASNIK - 01/NGP/ 000174</option>
													<option value="01/NGP/ 000175">VICKY DILIP BHUJADE
														- 01/NGP/ 000175</option>
													<option value="01/NGP/ 000176">VINOD JAGAN THAKRE
														- 01/NGP/ 000176</option>
													<option value="01/NGP/ 000177">VANITA RAMDAS TAYDE
														- 01/NGP/ 000177</option>
													<option value="01/NGP/ 000178">VRUNDA KISHOR
														DARUNDE - 01/NGP/ 000178</option>
													<option value="01/NGP/ 000179">YOGESH BABANRAO
														GUNJAL - 01/NGP/ 000179</option>
													<option value="01/NGP/ 000180">VANDANA DEVENDRA
														SHENDE - 01/NGP/ 000180</option>
													<option value="01/NGP/ 000181">KAMINI DATTARAJ
														KAPSE - 01/NGP/ 000181</option>
													<option value="01/NGP/ 000182">SATISH MANIK BAHADE
														- 01/NGP/ 000182</option>
													<option value="01/NGP/ 000183">MINAKSHI SATISH
														BAHADE - 01/NGP/ 000183</option>
													<option value="01/NGP/ 000184">ARSHIYA AZAMI
														ANSARUDDIN PATEL - 01/NGP/ 000184</option>
													<option value="01/NGP/ 000185">KANCHAN SAGAR
														JINTURKAR - 01/NGP/ 000185</option>
													<option value="01/NGP/ 000186">RESHMA KRUSHNA
														KURSANGE - 01/NGP/ 000186</option>
													<option value="01/NGP/ 000187">PUJA BALIRAM SHENDE
														- 01/NGP/ 000187</option>
													<option value="01/NGP/ 000188">RAHUL NIVRUTTI
														KAMBLE - 01/NGP/ 000188</option>
													<option value="01/NGP/ 000189">RAJNI SANJAYRAO
														GAYKI - 01/NGP/ 000189</option>
													<option value="01/NGP/ 000190">MALTI VILAS GUDADHE
														- 01/NGP/ 000190</option>
													<option value="01/NGP/ 000191">JYOTIBAI MAYADAS
														MANIKPURI - 01/NGP/ 000191</option>
													<option value="01/NGP/ 000192">PUSHPA SURESH DHOLE
														- 01/NGP/ 000192</option>
													<option value="01/NGP/ 000193">ALKA JAYNTRAO
														JINTURKAR - 01/NGP/ 000193</option>
													<option value="01/NGP/ 000194">GEETA RAJU RAUT -
														01/NGP/ 000194</option>
													<option value="01/NGP/ 000195">VANITA RAMLAL
														CHAUDHARI - 01/NGP/ 000195</option>
													<option value="01/NGP/ 000196">LAKSHMI DILIP RAUT
														- 01/NGP/ 000196</option>
													<option value="01/NGP/ 000197">DILIP MOTIRAM RAUT
														- 01/NGP/ 000197</option>
													<option value="01/NGP/ 000198">RATNAKALA VINOD
														RAUT - 01/NGP/ 000198</option>
													<option value="01/NGP/ 000199">SULBHA DEEPAK
														BHOYAR - 01/NGP/ 000199</option>
													<option value="01/NGP/ 000200">GANGA SANTOSH
														SAKSENA - 01/NGP/ 000200</option>
													<option value="01/NGP/ 000201">VIDYA SANJAY
														BARANGE - 01/NGP/ 000201</option>
													<option value="01/NGP/ 000202">TAPTI SHIBAPRASAD
														DAS - 01/NGP/ 000202</option>
													<option value="01/NGP/ 000203">ARUNA DIPAK DHOLE -
														01/NGP/ 000203</option>
													<option value="01/NGP/ 000204">CHANDRAKALA HEMANTH
														NANDANWAR - 01/NGP/ 000204</option>
													<option value="01/NGP/ 000205">DURGABAI VASUDEV
														MESHRAM - 01/NGP/ 000205</option>
													<option value="01/NGP/ 000206">DURGABAI ROSHAN
														KHANDATE - 01/NGP/ 000206</option>
													<option value="01/NGP/ 000207">SIMA DEEPAK CHAVHAN
														- 01/NGP/ 000207</option>
													<option value="01/NGP/ 000208">DIPAK RAJU HATWAR -
														01/NGP/ 000208</option>

												</select> <span
													id="ContentPlaceHolder1_RequiredFieldValidatorddlMemberCode"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Select
													Member Code</span>
											</div>
										</div>
										<div class="form-group row">
											<label for="txtRelativeName" class="col-sm-4 control-label">Member
												Name <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="memberName"
													type="text"  disabled="disabled"
													id="memberName" class="form-control"
													Placeholder="Enter Member Name" />
											</div>
										</div>
										<div class="form-group row">
											<label for="txtDOB" class="col-sm-4 control-label">DOB
												<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-5">
												<div class="input-group date">
													<div class="input-group-addon">
														<i class="fa fa-calendar"></i>
													</div>

													<input name="dob" type="date" onchange="calculateAge()"
														disabled="disabled"
														id="dob" class="form-control"
														data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;"
														data-mask="" />
												</div>
											</div>
											<div class="col-sm-3">
												<input name="age" type="text"
													maxlength="2" disabled="disabled"
													id="age" class="form-control"
													Placeholder="Enter Age"
													 /> <span
													id="ContentPlaceHolder1_RequiredFieldValidator12"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Age</span>
											</div>
										</div>

										<div class="form-group row">
											<label class="col-sm-4 control-label">Relative Name</label>
											<div class="col-sm-8">
												<input name="relativeName"
													type="text" disabled="disabled"
													id="relativeName"
													class="form-control" Placeholder="Enter Relative Name" />
											</div>
										</div>

										<div class="form-group row">
											<label for="drpRelativeRelation"
												class="col-sm-4 control-label">Relative Relation</label>
											<div class="col-sm-8">

												<input name="relativeRelation"
													type="text" disabled="disabled"
													id="relativeRelation" Placeholder="Enter Relative Relation"
													class="form-control" />
											</div>
										</div>

										<div class="form-group row">
											<label for="txtPhoneno" class="col-sm-4 control-label">Mobile
												No <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="mobileNo"
													type="text" maxlength="10" disabled="disabled"
													id="mobileNo" class="form-control"
													Placeholder="Enter Mobile No" autocomplete="off"
													onkeypress="return isNumberOnlyKey(this, event);" /> <span
													id="ContentPlaceHolder1_RequiredFieldValidator8"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Phone No</span>
											</div>
										</div>


										<div class="form-group row">
											<label for="txtNomineeName" class="col-sm-4 control-label">Nominee
												Name</label>
											<div class="col-sm-8">
												<input name="nomineeName"
													type="text" id="nomineeName"
													class="form-control" />
											</div>
										</div>
										<div class="form-group row">
											<label for="drpNomineeRelation"
												class="col-sm-4 control-label">Relation</label>
											<div class="col-sm-8">

												<select name="relation"
													id="relation" class="form-control"
													style="width: 100%;">
													<option value="Brother">Brother</option>
													<option value="Daughter">Daughter</option>
													<option value="Father">Father</option>
													<option value="Friend">Friend</option>
													<option value="Husband">Husband</option>
													<option value="Mother">Mother</option>
													<option value="Sister">Sister</option>
													<option value="Son">Son</option>
													<option value="Wife">Wife</option>
													<option value="Daughter in Law">Daughter in Law</option>
													<option value="Brother in Law">Brother in Law</option>
													<option value="Grand Daughter">Grand Daughter</option>
													<option value="Grand Son">Grand Son</option>
													<option value="Other">Other</option>

												</select>
											</div>
										</div>



									</div>
									<div class="col-md-6">
										<div class="form-group row">
											<label class="col-sm-4 control-label">Branch Name <strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<select name="branchName"
													id="branchName"
													class="form-control" style="width: 100%;">
													<option value="001">Main Office - 001</option>
													<option value="002">Main Office - 002</option>
													<option value="003">Main Office - 003</option>
												</select>
											</div>
										</div>
										<div class="form-group row">
											<label for="txtNomineeName" class="col-sm-4 control-label">Nominee
												Age</label>
											<div class="col-sm-8">
												<input name="nomineeAge" type="text"
													maxlength="2" id="nomineeAge"
													class="form-control" />
											</div>
										</div>

										<div class="form-group row">
											<label for="txtAddress" class="col-sm-4 control-label">Address
												<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<textarea name="address"
													rows="2" cols="20" disabled="disabled"
													id="address" class="form-control"
													Placeholder="Enter Addess">
</textarea>
												<span id="ContentPlaceHolder1_RequiredFieldValidator3"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Address</span>
											</div>
										</div>

										<div class="form-group row">
											<label for="txtDistrict" class="col-sm-4 control-label">District
												<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="district"
													type="text" disabled="disabled"
													id="district" class="form-control"
													Placeholder="Enter District" /> <span
													id="ContentPlaceHolder1_RequiredFieldValidator1"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													District</span>
											</div>
										</div>
										<div class="form-group row">
											<label for="drpState" class="col-sm-4 control-label">State
												<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">

												<input name="state" type="text"
													disabled="disabled" Placeholder="Enter State" id="state"
													class="form-control" /> <span
													id="state"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Select
													State</span>
											</div>
										</div>
										<div class="form-group row">
											<label for="txtPin" class="col-sm-4 control-label">Pin
												Code <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="pinCode" type="text"
													maxlength="6" disabled="disabled"
													id="pinCode" class="form-control"
													Placeholder="Enter Pincode" /> <span
													id="ContentPlaceHolder1_RequiredFieldValidator4"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													PIN</span>
											</div>
										</div>
										<div class="form-group row">
											<label for="txtOccupation" class="col-sm-4 control-label">Occupation</label>
											<div class="col-sm-8">
												<input name="occupation"
													type="text" disabled="disabled"
													id="occupation" class="form-control"
													Placeholder="Enter Occupation" />
											</div>
										</div>
										<div class="form-group row">
											<label for="txtEducation" class="col-sm-4 control-label">Education</label>
											<div class="col-sm-8">
												<input name="education"
													type="text" disabled="disabled"
													id="education" class="form-control"
													Placeholder="Enter Education" />
											</div>
										</div>

									</div>
								</div>

							</div>
						</div>

						<div class="col-md-2">
                     <div class="box box-success">
                        <div class="box-header with-border">
                           <h3 class="box-title">Photo</h3>
                        </div>
                        <div class="box-body">
                           <div class="col-md-3">
                              <div class="form-group">
                                 <div class="text-center">
                                   <!--<div id ="photoAppend">  </div> -->
                                     <img id="preview"  class="profile-user-img" style="height:110px;width:110px;" /> 
                                    <input type="file"  name="filetag" id="filetag" />
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                     <div class="box box-success">
                        <div class="box-header with-border">
                           <h3 class="box-title">Signature</h3>
                        </div>
                        <div class="box-body">
                           <div class="col-md-3">
                              <div class="form-group">
                                 <div class="text-center">
                                  <!-- <div id ="signatureAppend">  </div> -->
                                     <img id="secondpreview" class="profile-user-img" style="height:110px;width:110px;" /> 
                                    <input type="file"  name="secondfiletag" id="secondfiletag" /> 
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
						
					</div>
					<div class="row">
						<div class="col-md-10">
							<div class="box box-success">
								<div class="box-header with-border">
									<h3 class="box-title">Introducer Details</h3>
								</div>

								<div class="box-body">
									<div class="col-md-6">
										<div class="form-group row">
											<label class="col-sm-4 control-label">Select Position
												<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<select name="selectPosition"
													id="selectPosition"
													class="form-control" style="width: 100%;">
													<option value="1">1 - Advisor</option>
													<option value="2">2 - Sales Officer</option>
													<option value="3">3 - Development Officer</option>
													<option value="4">4 - Sr. Development Officer</option>
													<option value="5">5 - BSM</option>
													<option value="6">6 - ASM</option>
													<option value="7">7 - RSM</option>
													<option value="8">8 - STATE HEAD</option>
													<option value="9">9 - ZONAL HEAD</option>
													<option value="10">10 - DIRECTOR SALES</option>

												</select>
											</div>
										</div>
										<div class="form-group row">
											<label for="txtRelativeName" class="col-sm-4 control-label">Introducer
												Code <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="introducerCode"
													type="text"
													onchange=""
													onkeypress="if (WebForm_TextBoxKeyHandler(event) == false) return false;"
													id="introducerCode"
													class="form-control" Placeholder="Enter Introducer Code" />
												<span id="ContentPlaceHolder1_RequiredFieldValidator6"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Introducer Code</span>
											</div>
										</div>





									</div>
									<div class="col-md-6">

										<div class="form-group row">
											<label class="col-sm-4 control-label">Introducer Name</label>
											<div class="col-sm-8">
												<input name="introducerName"
													type="text" disabled="disabled"
													id="introducerName" class="form-control"
													Placeholder="Enter Introducer Name" /> <span
													id="ContentPlaceHolder1_RequiredFieldValidator10"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Introducer Name</span>
											</div>
										</div>

										<div class="form-group row">
											<label class="col-sm-4 control-label">Position <strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<input name="position"
													type="text" disabled="disabled" Placeholder="Enter Position"
													id="position" class="form-control" />
												<span id="ContentPlaceHolder1_RequiredFieldValidator2"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Introducer Position</span>
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
									<h3 class="box-title">Payment Details</h3>
								</div>

								<div class="box-body">
									<div class="col-md-6">

										<div class="form-group row">
											<label class="col-sm-4 control-label">Fees (if any) <strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<input name="feesIfAny"
													type="text" value="0"
													id="feesIfAny"
													class="form-control"
													onkeypress="return isNumberOnlyKey(this, event);" /> <span
													id="ContentPlaceHolder1_RequiredFieldValidator7"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Advisor Fees (if any)</span>
											</div>
										</div>
										<div class="form-group row">
											<label for="drpPaymentBy" class="col-sm-4 control-label">Payment
												By <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<select name="paymentBy"
													onchange=""
													id="paymentBy" class="form-control"
													style="width: 100%;">
													<option selected="selected" value="Cash">Cash</option>
													<option value="Cheque">Cheque</option>
													<option value="Online">Online</option>
													<option value="NEFT">NEFT</option>

												</select>
											</div>
										</div>




										<div class="form-group row">
											<label class="col-sm-4 control-label">Remarks</label>
											<div class="col-sm-8">
												<textarea name="remarks"
													rows="2" cols="20" id="remarks"
													class="form-control" Placeholder="Enter Remarks if any">
</textarea>
											</div>
										</div>

									</div>
									<div class="col-md-6">

										<div class="form-group row">
											<label class="col-sm-4 control-label">Advisor Status
												<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<label class="switch"> <input
													id="advisorStatus" type="checkbox"
													name="advisorStatus"
													checked="checked" /> <span class="slider round"></span>
												</label>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label">SMS Send <strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<label class="switch"> <input
													id="smsSend" type="checkbox"
													name="smsSend" checked="checked" />
													<span class="slider round"></span>
												</label>
											</div>
										</div>
									</div>

								</div>

								<div class="box-footer">
									<div class="row col-md-12">
										<input type="button"
											name="ctl00$ContentPlaceHolder1$btnDelete" value="Delete"
											onclick="softDeleteIntegrations();"
											id="ContentPlaceHolder1_btnDelete"
											class="btn btn-danger pull-right" />
											 
											<input type="button"
											name="newbutton" value="New"
											disabled="disabled"
											id="newbutton"
											class="btn btn-info pull-right margin-r-5" /> 
											
											<input
											type="button" name="ctl00$ContentPlaceHolder1$btnSave"
											value="Update"
											onclick="javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions(&quot;ctl00$ContentPlaceHolder1$btnSave&quot;, &quot;&quot;, true, &quot;A&quot;, &quot;&quot;, false, false))"
											id="updatebutton"
											class="btn btn-success pull-right margin-r-5" />
									</div>
								</div>
							</div>



						</div>
					</div>
				</section>
				</form>



			</div>
			<!-- /.content-wrapper -->

			<div class="control-sidebar-bg"></div>

		</div>
		
<script>

      var fileTag = document.getElementById("filetag"),
          preview = document.getElementById("preview"),
          secondfiletag = document.getElementById("secondfiletag"),
          secondpreview = document.getElementById("secondpreview");
          
      fileTag.addEventListener("change", function() {
        changeImage(this);
      });
      
      secondfiletag.addEventListener("change", function() {
          changeImage2(this);
        });
      
      function changeImage(input) {
        var reader;

        if (input.files && input.files[0]) {
          reader = new FileReader();

          reader.onload = function(e) {
            preview.setAttribute('src', e.target.result);
          }

          reader.readAsDataURL(input.files[0]);
        }
      }
      
      function changeImage2(input) {
          var reader;

          if (input.files && input.files[0]) {
            reader = new FileReader();

            reader.onload = function(e) {
            	secondpreview.setAttribute('src', e.target.result);
            }

            reader.readAsDataURL(input.files[0]);
          }
        }
      
</script>

<script type="text/javascript">

function calculateAge() {
	   const dob = new Date(document.getElementById("dob").value); // get DOB from the date input field
	   const age = Math.floor((Date.now() - dob) / (365.25 * 24 * 60 * 60 * 1000)); // calculate age
	   document.getElementById("ageId").value = age; // set the calculated age in the age input field
	 }
 </script>

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
		<script src="dist/js/rectificationSection.js"></script>
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
var Page_Validators =  new Array(document.getElementById("ContentPlaceHolder1_RequiredFieldValidator5"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorddlMemberCode"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidator12"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidator8"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidator3"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidator1"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidator11"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidator4"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidator6"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidator10"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidator2"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidator7"));
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

document.getElementById('ContentPlaceHolder1_RequiredFieldValidator12').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator12'));
}

document.getElementById('ContentPlaceHolder1_RequiredFieldValidator8').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator8'));
}

document.getElementById('ContentPlaceHolder1_RequiredFieldValidator3').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator3'));
}

document.getElementById('ContentPlaceHolder1_RequiredFieldValidator1').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator1'));
}

document.getElementById('ContentPlaceHolder1_RequiredFieldValidator11').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator11'));
}

document.getElementById('ContentPlaceHolder1_RequiredFieldValidator4').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator4'));
}

document.getElementById('ContentPlaceHolder1_RequiredFieldValidator6').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator6'));
}

document.getElementById('ContentPlaceHolder1_RequiredFieldValidator10').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator10'));
}

document.getElementById('ContentPlaceHolder1_RequiredFieldValidator2').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator2'));
}

document.getElementById('ContentPlaceHolder1_RequiredFieldValidator7').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator7'));
}
//]]>
</script>
	<!-- </form> -->
</body>
</html>