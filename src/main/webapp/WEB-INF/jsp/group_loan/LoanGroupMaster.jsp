<jsp:include page="../header.jsp" />
  <body onload="getAllGroupMaster();" class="skin-blue sidebar-mini" style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);" cz-shortcut-listen="true">
    <form method="post" action="saveGroupMaster" id="form1" 
    name="myFormGroupMaster" modelAttribute="saveGroupMaster"
    enctype="multipart/form-data">
      
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
            <h1 id="ContentPlaceHolder1_IdHeader">Group Master</h1>
            <ol class="breadcrumb">
              <li>
                <a href="Home.html">
                  <i class="fa fa-dashboard"></i>Home </a>
              </li>
              <li>
                <a href="#">Dashboard</a>
              </li>
              <li class="active">Group Master</li>
            </ol>
          </section>
          <section class="content">
            <div class="row">
              <div class="col-md-5">
                <div class="box box-success">
                  <div class="box-header with-border">
                    <h3 class="box-title">Group Details</h3>
                  </div>
                  <div class="box-body">
                    <div class="col-md-12">
                      <div class="form-group row">
                        <label for="txtRelativeName" class="col-sm-5 control-label">Group Name <strong style="color: Red">*</strong>
                        </label>
                        <div class="col-sm-7">
                          <input name="groupName" type="text" id="groupName" class="form-control" Placeholder="Enter Group Name" />
                          <span id="groupNameMsg" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Group Name</span>
                        </div>
                      </div>
                      <div class="form-group row">
                        <label class="col-sm-5 control-label">Op. Date <strong style="color: Red">*</strong>
                        </label>
                        <div class="col-sm-7">
                          <div class="input-group date">
                            <div class="input-group-addon">
                              <i class="fa fa-calendar"></i>
                            </div>
                            <input name="opDate" type="text" value="01/08/2022" id="opDate" class="form-control" data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;" data-mask="" />
                         	<span id="opDateMsg" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Group Name</span>
                        
                          </div>
                        </div>
                      </div>
                      <div class="form-group row">
                        <label class="col-sm-5 control-label">Group Branch <strong style="color: Red">*</strong>
                        </label>
                        <div class="col-sm-7">
                          <select name="csp" id="csp" class="form-control" style="width: 100%;">
                            <option value="001">Main Office - 001</option>
                          </select>
                          <span id="cspMsg" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Group Name</span>
                        
                        </div>
                      </div>
                      <div class="form-group row">
                        <label class="col-sm-5 control-label">Group Leader Name <strong style="color: Red">*</strong>
                        </label>
                        <div class="col-sm-7">
                          <input name="grLeaderName" type="text" id="grLeaderName" class="form-control" />
                          <span id="grLeaderNameMsg" style="color:Red;font-size:X-Small;font-weight:bold;display:none;"></span>
                        </div>
                      </div>
                      <div class="form-group row">
                        <label class="col-sm-5 control-label">Mobile No. <strong style="color: Red">*</strong>
                        </label>
                        <div class="col-sm-7">
                          <input name="mobile" type="text" maxlength="10" id="mobile" class="form-control" />
                          <span id="mobileMsg" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Mobile No.</span>
                        </div>
                      </div>
                      <div class="form-group row">
                        <label class="col-sm-5 control-label">Group Address <strong style="color: Red">*</strong>
                        </label>
                        <div class="col-sm-7">
                          <input name="grAddr" type="text" id="grAddr" class="form-control" />
                          <span id="grAddrMsg" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Group Address</span>
                        </div>
                      </div>
                      <div class="form-group row">
                        <label class="col-sm-5 control-label">Assign Employee <strong style="color: Red">*</strong>
                        </label>
                        <div class="col-sm-7">
                          <select name="employee" id="employee" class="form-control" style="width: 100%;">
                            <option value="1001">1001</option>
                          </select>
                          <span id="employeeMsg" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Group Address</span>
                        
                        </div>
                      </div>
                      <div class="form-group row">
                        <label class="col-sm-5 control-label">Collection Day <strong style="color: Red">*</strong>
                        </label>
                        <div class="col-sm-7">
                          <select name="cDay" id="cDay" class="form-control" style="width: 100%;">
                            <option value="Monday">Monday</option>
                            <option value="Tuesday">Tuesday</option>
                            <option value="Wednesday">Wednesday</option>
                            <option value="Thursday">Thursday</option>
                            <option value="Friday">Friday</option>
                            <option value="Saturday">Saturday</option>
                            <option value="Sunday">Sunday</option>
                          </select>
                          <span id="cDayMsg" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Group Address</span>
                        
                        </div>
                      </div>
                      <div class="form-group row">
                        <label class="col-sm-5 control-label">Collection Time <strong style="color: Red">*</strong>
                        </label>
                        <div class="col-sm-7">
                          <select name="cTime" id="cTime" class="form-control" style="width: 100%;">
                            <option value="12:00 AM">12:00 AM</option>
                            <option value="12:10 AM">12:10 AM</option>
                            <option value="12:20 AM">12:20 AM</option>
                            <option value="12:30 AM">12:30 AM</option>
                            <option value="12:40 AM">12:40 AM</option>
                            <option value="12:50 AM">12:50 AM</option>
                            <option value="1:00 AM">1:00 AM</option>
                            <option value="1:10 AM">1:10 AM</option>
                            <option value="1:20 AM">1:20 AM</option>
                            <option value="1:30 AM">1:30 AM</option>
                            <option value="1:40 AM">1:40 AM</option>
                            <option value="1:50 AM">1:50 AM</option>
                            <option value="2:00 AM">2:00 AM</option>
                            <option value="2:10 AM">2:10 AM</option>
                            <option value="2:20 AM">2:20 AM</option>
                            <option value="2:30 AM">2:30 AM</option>
                            <option value="2:40 AM">2:40 AM</option>
                            <option value="2:50 AM">2:50 AM</option>
                            <option value="3:00 AM">3:00 AM</option>
                            <option value="3:10 AM">3:10 AM</option>
                            <option value="3:20 AM">3:20 AM</option>
                            <option value="3:30 AM">3:30 AM</option>
                            <option value="3:40 AM">3:40 AM</option>
                            <option value="3:50 AM">3:50 AM</option>
                            <option value="4:00 AM">4:00 AM</option>
                            <option value="4:10 AM">4:10 AM</option>
                            <option value="4:20 AM">4:20 AM</option>
                            <option value="4:30 AM">4:30 AM</option>
                            <option value="4:40 AM">4:40 AM</option>
                            <option value="4:50 AM">4:50 AM</option>
                            <option value="5:00 AM">5:00 AM</option>
                            <option value="5:10 AM">5:10 AM</option>
                            <option value="5:20 AM">5:20 AM</option>
                            <option value="5:30 AM">5:30 AM</option>
                            <option value="5:40 AM">5:40 AM</option>
                            <option value="5:50 AM">5:50 AM</option>
                            <option value="6:00 AM">6:00 AM</option>
                            <option value="6:10 AM">6:10 AM</option>
                            <option value="6:20 AM">6:20 AM</option>
                            <option value="6:30 AM">6:30 AM</option>
                            <option value="6:40 AM">6:40 AM</option>
                            <option value="6:50 AM">6:50 AM</option>
                            <option value="7:00 AM">7:00 AM</option>
                            <option value="7:10 AM">7:10 AM</option>
                            <option value="7:20 AM">7:20 AM</option>
                            <option value="7:30 AM">7:30 AM</option>
                            <option value="7:40 AM">7:40 AM</option>
                            <option value="7:50 AM">7:50 AM</option>
                            <option value="8:00 AM">8:00 AM</option>
                            <option value="8:10 AM">8:10 AM</option>
                            <option value="8:20 AM">8:20 AM</option>
                            <option value="8:30 AM">8:30 AM</option>
                            <option value="8:40 AM">8:40 AM</option>
                            <option value="8:50 AM">8:50 AM</option>
                            <option value="9:00 AM">9:00 AM</option>
                            <option value="9:10 AM">9:10 AM</option>
                            <option value="9:20 AM">9:20 AM</option>
                            <option value="9:30 AM">9:30 AM</option>
                            <option value="9:40 AM">9:40 AM</option>
                            <option value="9:50 AM">9:50 AM</option>
                            <option value="10:00 AM">10:00 AM</option>
                            <option value="10:10 AM">10:10 AM</option>
                            <option value="10:20 AM">10:20 AM</option>
                            <option value="10:30 AM">10:30 AM</option>
                            <option value="10:40 AM">10:40 AM</option>
                            <option value="10:50 AM">10:50 AM</option>
                            <option value="11:00 AM">11:00 AM</option>
                            <option value="11:10 AM">11:10 AM</option>
                            <option value="11:20 AM">11:20 AM</option>
                            <option value="11:30 AM">11:30 AM</option>
                            <option value="11:40 AM">11:40 AM</option>
                            <option value="11:50 AM">11:50 AM</option>
                            <option value="12:00 PM">12:00 PM</option>
                            <option value="12:10 PM">12:10 PM</option>
                            <option value="12:20 PM">12:20 PM</option>
                            <option value="12:30 PM">12:30 PM</option>
                            <option value="12:40 PM">12:40 PM</option>
                            <option value="12:50 PM">12:50 PM</option>
                            <option value="1:00 PM">1:00 PM</option>
                            <option value="1:10 PM">1:10 PM</option>
                            <option value="1:20 PM">1:20 PM</option>
                            <option value="1:30 PM">1:30 PM</option>
                            <option value="1:40 PM">1:40 PM</option>
                            <option value="1:50 PM">1:50 PM</option>
                            <option value="2:00 PM">2:00 PM</option>
                            <option value="2:10 PM">2:10 PM</option>
                            <option value="2:20 PM">2:20 PM</option>
                            <option value="2:30 PM">2:30 PM</option>
                            <option value="2:40 PM">2:40 PM</option>
                            <option value="2:50 PM">2:50 PM</option>
                            <option value="3:00 PM">3:00 PM</option>
                            <option value="3:10 PM">3:10 PM</option>
                            <option value="3:20 PM">3:20 PM</option>
                            <option value="3:30 PM">3:30 PM</option>
                            <option value="3:40 PM">3:40 PM</option>
                            <option value="3:50 PM">3:50 PM</option>
                            <option value="4:00 PM">4:00 PM</option>
                            <option value="4:10 PM">4:10 PM</option>
                            <option value="4:20 PM">4:20 PM</option>
                            <option value="4:30 PM">4:30 PM</option>
                            <option value="4:40 PM">4:40 PM</option>
                            <option value="4:50 PM">4:50 PM</option>
                            <option value="5:00 PM">5:00 PM</option>
                            <option value="5:10 PM">5:10 PM</option>
                            <option value="5:20 PM">5:20 PM</option>
                            <option value="5:30 PM">5:30 PM</option>
                            <option value="5:40 PM">5:40 PM</option>
                            <option value="5:50 PM">5:50 PM</option>
                            <option value="6:00 PM">6:00 PM</option>
                            <option value="6:10 PM">6:10 PM</option>
                            <option value="6:20 PM">6:20 PM</option>
                            <option value="6:30 PM">6:30 PM</option>
                            <option value="6:40 PM">6:40 PM</option>
                            <option value="6:50 PM">6:50 PM</option>
                            <option value="7:00 PM">7:00 PM</option>
                            <option value="7:10 PM">7:10 PM</option>
                            <option value="7:20 PM">7:20 PM</option>
                            <option value="7:30 PM">7:30 PM</option>
                            <option value="7:40 PM">7:40 PM</option>
                            <option value="7:50 PM">7:50 PM</option>
                            <option value="8:00 PM">8:00 PM</option>
                            <option value="8:10 PM">8:10 PM</option>
                            <option value="8:20 PM">8:20 PM</option>
                            <option value="8:30 PM">8:30 PM</option>
                            <option value="8:40 PM">8:40 PM</option>
                            <option value="8:50 PM">8:50 PM</option>
                            <option value="9:00 PM">9:00 PM</option>
                            <option value="9:10 PM">9:10 PM</option>
                            <option value="9:20 PM">9:20 PM</option>
                            <option value="9:30 PM">9:30 PM</option>
                            <option value="9:40 PM">9:40 PM</option>
                            <option value="9:50 PM">9:50 PM</option>
                            <option value="10:00 PM">10:00 PM</option>
                            <option value="10:10 PM">10:10 PM</option>
                            <option value="10:20 PM">10:20 PM</option>
                            <option value="10:30 PM">10:30 PM</option>
                            <option value="10:40 PM">10:40 PM</option>
                            <option value="10:50 PM">10:50 PM</option>
                            <option value="11:00 PM">11:00 PM</option>
                            <option value="11:10 PM">11:10 PM</option>
                            <option value="11:20 PM">11:20 PM</option>
                            <option value="11:30 PM">11:30 PM</option>
                            <option value="11:40 PM">11:40 PM</option>
                            <option value="11:50 PM">11:50 PM</option>
                          </select>
                           <span id="cTimeMsg" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Group Address</span>
                        
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="box-footer">
                    <div class="row col-md-12">
                      <button type="button" name="save" 
                      onclick="return validateGroupMaster()"
                      value="Save" id="save" 
                      class="btn btn-success pull-right margin-r-5" >Save</button>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-md-5">
                <div id="ContentPlaceHolder1_UpdatePanel1">
                  <div class="box box-success">
                    <div class="box-header with-border">
                      <h3 class="box-title">Group Member Link</h3>
                    </div>
                    <div class="box-body">
                      <div class="col-md-12">
                        <div class="form-group row">
                          <label class="col-sm-5 control-label">Search By Member <strong style="color: Red">*</strong>
                          </label>
                          <div class="col-sm-7">
                            <select name="memberCode" id="memberCode" class="form-control" style="width: 100%;">
                              <option selected="selected" value=""></option>
                              <option value="01/NGP/ 000001">01/NGP/ 000001</option>
                              <option value="01/NGP/ 000002">01/NGP/ 000002</option>
                              <option value="01/NGP/ 000003">01/NGP/ 000003</option>
                              <option value="01/NGP/ 000004">01/NGP/ 000004</option>
                              <option value="01/NGP/ 000005">01/NGP/ 000005</option>
                              <option value="01/NGP/ 000006">01/NGP/ 000006</option>
                              <option value="01/NGP/ 000007">01/NGP/ 000007</option>
                              <option value="01/NGP/ 000008">01/NGP/ 000008</option>
                              <option value="01/NGP/ 000009">01/NGP/ 000009</option>
                              <option value="01/NGP/ 000010">01/NGP/ 000010</option>
                              <option value="01/NGP/ 000011">01/NGP/ 000011</option>
                              <option value="01/NGP/ 000012">01/NGP/ 000012</option>
                              <option value="01/NGP/ 000013">01/NGP/ 000013</option>
                              <option value="01/NGP/ 000014">01/NGP/ 000014</option>
                              <option value="01/NGP/ 000015">01/NGP/ 000015</option>
                              <option value="01/NGP/ 000016">01/NGP/ 000016</option>
                              <option value="01/NGP/ 000017">01/NGP/ 000017</option>
                              <option value="01/NGP/ 000018">01/NGP/ 000018</option>
                              <option value="01/NGP/ 000019">01/NGP/ 000019</option>
                              <option value="01/NGP/ 000020">01/NGP/ 000020</option>
                              <option value="01/NGP/ 000021">01/NGP/ 000021</option>
                              <option value="01/NGP/ 000022">01/NGP/ 000022</option>
                              <option value="01/NGP/ 000023">01/NGP/ 000023</option>
                              <option value="01/NGP/ 000024">01/NGP/ 000024</option>
                              <option value="01/NGP/ 000025">01/NGP/ 000025</option>
                              <option value="01/NGP/ 000026">01/NGP/ 000026</option>
                              <option value="01/NGP/ 000027">01/NGP/ 000027</option>
                              <option value="01/NGP/ 000028">01/NGP/ 000028</option>
                              <option value="01/NGP/ 000029">01/NGP/ 000029</option>
                              <option value="01/NGP/ 000030">01/NGP/ 000030</option>
                              <option value="01/NGP/ 000031">01/NGP/ 000031</option>
                              <option value="01/NGP/ 000032">01/NGP/ 000032</option>
                              <option value="01/NGP/ 000033">01/NGP/ 000033</option>
                              <option value="01/NGP/ 000034">01/NGP/ 000034</option>
                              <option value="01/NGP/ 000035">01/NGP/ 000035</option>
                              <option value="01/NGP/ 000036">01/NGP/ 000036</option>
                              <option value="01/NGP/ 000037">01/NGP/ 000037</option>
                              <option value="01/NGP/ 000038">01/NGP/ 000038</option>
                              <option value="01/NGP/ 000039">01/NGP/ 000039</option>
                              <option value="01/NGP/ 000040">01/NGP/ 000040</option>
                              <option value="01/NGP/ 000041">01/NGP/ 000041</option>
                              <option value="01/NGP/ 000042">01/NGP/ 000042</option>
                              <option value="01/NGP/ 000043">01/NGP/ 000043</option>
                              <option value="01/NGP/ 000044">01/NGP/ 000044</option>
                              <option value="01/NGP/ 000045">01/NGP/ 000045</option>
                              <option value="01/NGP/ 000046">01/NGP/ 000046</option>
                              <option value="01/NGP/ 000047">01/NGP/ 000047</option>
                              <option value="01/NGP/ 000048">01/NGP/ 000048</option>
                              <option value="01/NGP/ 000049">01/NGP/ 000049</option>
                              <option value="01/NGP/ 000050">01/NGP/ 000050</option>
                              <option value="01/NGP/ 000051">01/NGP/ 000051</option>
                              <option value="01/NGP/ 000052">01/NGP/ 000052</option>
                              <option value="01/NGP/ 000053">01/NGP/ 000053</option>
                              <option value="01/NGP/ 000054">01/NGP/ 000054</option>
                              <option value="01/NGP/ 000055">01/NGP/ 000055</option>
                              <option value="01/NGP/ 000056">01/NGP/ 000056</option>
                              <option value="01/NGP/ 000057">01/NGP/ 000057</option>
                              <option value="01/NGP/ 000058">01/NGP/ 000058</option>
                              <option value="01/NGP/ 000059">01/NGP/ 000059</option>
                              <option value="01/NGP/ 000060">01/NGP/ 000060</option>
                              <option value="01/NGP/ 000061">01/NGP/ 000061</option>
                              <option value="01/NGP/ 000062">01/NGP/ 000062</option>
                              <option value="01/NGP/ 000063">01/NGP/ 000063</option>
                              <option value="01/NGP/ 000064">01/NGP/ 000064</option>
                              <option value="01/NGP/ 000065">01/NGP/ 000065</option>
                              <option value="01/NGP/ 000066">01/NGP/ 000066</option>
                              <option value="01/NGP/ 000067">01/NGP/ 000067</option>
                              <option value="01/NGP/ 000068">01/NGP/ 000068</option>
                              <option value="01/NGP/ 000069">01/NGP/ 000069</option>
                              <option value="01/NGP/ 000070">01/NGP/ 000070</option>
                              <option value="01/NGP/ 000071">01/NGP/ 000071</option>
                              <option value="01/NGP/ 000072">01/NGP/ 000072</option>
                              <option value="01/NGP/ 000073">01/NGP/ 000073</option>
                              <option value="01/NGP/ 000074">01/NGP/ 000074</option>
                              <option value="01/NGP/ 000075">01/NGP/ 000075</option>
                              <option value="01/NGP/ 000076">01/NGP/ 000076</option>
                              <option value="01/NGP/ 000077">01/NGP/ 000077</option>
                              <option value="01/NGP/ 000078">01/NGP/ 000078</option>
                              <option value="01/NGP/ 000079">01/NGP/ 000079</option>
                              <option value="01/NGP/ 000080">01/NGP/ 000080</option>
                              <option value="01/NGP/ 000081">01/NGP/ 000081</option>
                              <option value="01/NGP/ 000082">01/NGP/ 000082</option>
                              <option value="01/NGP/ 000083">01/NGP/ 000083</option>
                              <option value="01/NGP/ 000084">01/NGP/ 000084</option>
                              <option value="01/NGP/ 000085">01/NGP/ 000085</option>
                              <option value="01/NGP/ 000086">01/NGP/ 000086</option>
                              <option value="01/NGP/ 000087">01/NGP/ 000087</option>
                              <option value="01/NGP/ 000088">01/NGP/ 000088</option>
                              <option value="01/NGP/ 000089">01/NGP/ 000089</option>
                              <option value="01/NGP/ 000090">01/NGP/ 000090</option>
                              <option value="01/NGP/ 000091">01/NGP/ 000091</option>
                              <option value="01/NGP/ 000092">01/NGP/ 000092</option>
                              <option value="01/NGP/ 000093">01/NGP/ 000093</option>
                              <option value="01/NGP/ 000094">01/NGP/ 000094</option>
                              <option value="01/NGP/ 000095">01/NGP/ 000095</option>
                              <option value="01/NGP/ 000096">01/NGP/ 000096</option>
                              <option value="01/NGP/ 000097">01/NGP/ 000097</option>
                              <option value="01/NGP/ 000098">01/NGP/ 000098</option>
                              <option value="01/NGP/ 000099">01/NGP/ 000099</option>
                              <option value="01/NGP/ 000100">01/NGP/ 000100</option>
                              <option value="01/NGP/ 000101">01/NGP/ 000101</option>
                              <option value="01/NGP/ 000102">01/NGP/ 000102</option>
                              <option value="01/NGP/ 000103">01/NGP/ 000103</option>
                              <option value="01/NGP/ 000104">01/NGP/ 000104</option>
                              <option value="01/NGP/ 000105">01/NGP/ 000105</option>
                              <option value="01/NGP/ 000106">01/NGP/ 000106</option>
                              <option value="01/NGP/ 000107">01/NGP/ 000107</option>
                              <option value="01/NGP/ 000108">01/NGP/ 000108</option>
                              <option value="01/NGP/ 000109">01/NGP/ 000109</option>
                              <option value="01/NGP/ 000110">01/NGP/ 000110</option>
                              <option value="01/NGP/ 000111">01/NGP/ 000111</option>
                              <option value="01/NGP/ 000112">01/NGP/ 000112</option>
                              <option value="01/NGP/ 000113">01/NGP/ 000113</option>
                              <option value="01/NGP/ 000114">01/NGP/ 000114</option>
                              <option value="01/NGP/ 000115">01/NGP/ 000115</option>
                              <option value="01/NGP/ 000116">01/NGP/ 000116</option>
                              <option value="01/NGP/ 000117">01/NGP/ 000117</option>
                              <option value="01/NGP/ 000118">01/NGP/ 000118</option>
                              <option value="01/NGP/ 000119">01/NGP/ 000119</option>
                              <option value="01/NGP/ 000120">01/NGP/ 000120</option>
                              <option value="01/NGP/ 000121">01/NGP/ 000121</option>
                              <option value="01/NGP/ 000122">01/NGP/ 000122</option>
                              <option value="01/NGP/ 000123">01/NGP/ 000123</option>
                              <option value="01/NGP/ 000124">01/NGP/ 000124</option>
                              <option value="01/NGP/ 000125">01/NGP/ 000125</option>
                              <option value="01/NGP/ 000126">01/NGP/ 000126</option>
                              <option value="01/NGP/ 000127">01/NGP/ 000127</option>
                              <option value="01/NGP/ 000128">01/NGP/ 000128</option>
                              <option value="01/NGP/ 000129">01/NGP/ 000129</option>
                              <option value="01/NGP/ 000130">01/NGP/ 000130</option>
                              <option value="01/NGP/ 000131">01/NGP/ 000131</option>
                              <option value="01/NGP/ 000132">01/NGP/ 000132</option>
                              <option value="01/NGP/ 000133">01/NGP/ 000133</option>
                              <option value="01/NGP/ 000134">01/NGP/ 000134</option>
                              <option value="01/NGP/ 000135">01/NGP/ 000135</option>
                              <option value="01/NGP/ 000136">01/NGP/ 000136</option>
                              <option value="01/NGP/ 000137">01/NGP/ 000137</option>
                              <option value="01/NGP/ 000138">01/NGP/ 000138</option>
                              <option value="01/NGP/ 000139">01/NGP/ 000139</option>
                              <option value="01/NGP/ 000140">01/NGP/ 000140</option>
                              <option value="01/NGP/ 000141">01/NGP/ 000141</option>
                              <option value="01/NGP/ 000142">01/NGP/ 000142</option>
                              <option value="01/NGP/ 000143">01/NGP/ 000143</option>
                              <option value="01/NGP/ 000144">01/NGP/ 000144</option>
                              <option value="01/NGP/ 000145">01/NGP/ 000145</option>
                              <option value="01/NGP/ 000146">01/NGP/ 000146</option>
                              <option value="01/NGP/ 000147">01/NGP/ 000147</option>
                              <option value="01/NGP/ 000148">01/NGP/ 000148</option>
                              <option value="01/NGP/ 000149">01/NGP/ 000149</option>
                              <option value="01/NGP/ 000150">01/NGP/ 000150</option>
                              <option value="01/NGP/ 000151">01/NGP/ 000151</option>
                              <option value="01/NGP/ 000152">01/NGP/ 000152</option>
                              <option value="01/NGP/ 000153">01/NGP/ 000153</option>
                              <option value="01/NGP/ 000154">01/NGP/ 000154</option>
                              <option value="01/NGP/ 000155">01/NGP/ 000155</option>
                              <option value="01/NGP/ 000156">01/NGP/ 000156</option>
                              <option value="01/NGP/ 000157">01/NGP/ 000157</option>
                              <option value="01/NGP/ 000158">01/NGP/ 000158</option>
                              <option value="01/NGP/ 000159">01/NGP/ 000159</option>
                              <option value="01/NGP/ 000160">01/NGP/ 000160</option>
                              <option value="01/NGP/ 000161">01/NGP/ 000161</option>
                              <option value="01/NGP/ 000162">01/NGP/ 000162</option>
                              <option value="01/NGP/ 000163">01/NGP/ 000163</option>
                              <option value="01/NGP/ 000164">01/NGP/ 000164</option>
                              <option value="01/NGP/ 000165">01/NGP/ 000165</option>
                              <option value="01/NGP/ 000166">01/NGP/ 000166</option>
                              <option value="01/NGP/ 000167">01/NGP/ 000167</option>
                              <option value="01/NGP/ 000168">01/NGP/ 000168</option>
                              <option value="01/NGP/ 000169">01/NGP/ 000169</option>
                              <option value="01/NGP/ 000170">01/NGP/ 000170</option>
                              <option value="01/NGP/ 000171">01/NGP/ 000171</option>
                              <option value="01/NGP/ 000172">01/NGP/ 000172</option>
                              <option value="01/NGP/ 000173">01/NGP/ 000173</option>
                              <option value="01/NGP/ 000174">01/NGP/ 000174</option>
                              <option value="01/NGP/ 000175">01/NGP/ 000175</option>
                              <option value="01/NGP/ 000176">01/NGP/ 000176</option>
                              <option value="01/NGP/ 000177">01/NGP/ 000177</option>
                              <option value="01/NGP/ 000178">01/NGP/ 000178</option>
                              <option value="01/NGP/ 000179">01/NGP/ 000179</option>
                              <option value="01/NGP/ 000180">01/NGP/ 000180</option>
                              <option value="01/NGP/ 000181">01/NGP/ 000181</option>
                              <option value="01/NGP/ 000182">01/NGP/ 000182</option>
                              <option value="01/NGP/ 000183">01/NGP/ 000183</option>
                              <option value="01/NGP/ 000184">01/NGP/ 000184</option>
                              <option value="01/NGP/ 000185">01/NGP/ 000185</option>
                              <option value="01/NGP/ 000186">01/NGP/ 000186</option>
                              <option value="01/NGP/ 000187">01/NGP/ 000187</option>
                              <option value="01/NGP/ 000188">01/NGP/ 000188</option>
                              <option value="01/NGP/ 000189">01/NGP/ 000189</option>
                              <option value="01/NGP/ 000190">01/NGP/ 000190</option>
                              <option value="01/NGP/ 000191">01/NGP/ 000191</option>
                              <option value="01/NGP/ 000192">01/NGP/ 000192</option>
                              <option value="01/NGP/ 000193">01/NGP/ 000193</option>
                              <option value="01/NGP/ 000194">01/NGP/ 000194</option>
                              <option value="01/NGP/ 000195">01/NGP/ 000195</option>
                              <option value="01/NGP/ 000196">01/NGP/ 000196</option>
                              <option value="01/NGP/ 000197">01/NGP/ 000197</option>
                              <option value="01/NGP/ 000198">01/NGP/ 000198</option>
                              <option value="01/NGP/ 000199">01/NGP/ 000199</option>
                              <option value="01/NGP/ 000200">01/NGP/ 000200</option>
                              <option value="01/NGP/ 000201">01/NGP/ 000201</option>
                              <option value="01/NGP/ 000202">01/NGP/ 000202</option>
                              <option value="01/NGP/ 000203">01/NGP/ 000203</option>
                              <option value="01/NGP/ 000204">01/NGP/ 000204</option>
                              <option value="01/NGP/ 000205">01/NGP/ 000205</option>
                              <option value="01/NGP/ 000206">01/NGP/ 000206</option>
                              <option value="01/NGP/ 000207">01/NGP/ 000207</option>
                              <option value="01/NGP/ 000208">01/NGP/ 000208</option>
                            </select>
                          </div>
                        </div>
                        <div class="form-group row">
                          <label class="col-sm-5 control-label">Member Name <strong style="color: Red">*</strong>
                          </label>
                          <div class="col-sm-7">
                            <input name="membername" type="text" readonly="readonly" id="membername" class="form-control" />
                          </div>
                        </div>
                        <div class="form-group row">
                          <label class="col-sm-5 control-label">Relative Details <strong style="color: Red">*</strong>
                          </label>
                          <div class="col-sm-7">
                            <input name="relative" type="text" readonly="readonly" id="relative" class="form-control" />
                          </div>
                        </div>
                        <div class="form-group row">
                          <label class="col-sm-5 control-label">Mobile <strong style="color: Red">*</strong>
                          </label>
                          <div class="col-sm-7">
                            <input name="mob" type="text" readonly="readonly" id="mob" class="form-control" />
                          </div>
                        </div>
                        <div class="form-group row">
                          <label class="col-sm-5 control-label">Previous Loan <strong style="color: Red">*</strong>
                          </label>
                          <div class="col-sm-7">
                            <input name="previousLoan" type="text" readonly="readonly" id="previousLoan" class="form-control" />
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="box-footer">
                      <div class="row col-md-12">
                        <button type="button" name="ctl00$ContentPlaceHolder1$btnAdd" value="Add to Queue" id="ContentPlaceHolder1_btnAdd" class="btn btn-warning pull-right">Add to Queue</button>
                      </div>
                    </div>
                  </div>
                  <div class="box box-success" style="box-shadow: none; overflow: auto !important;">
                    <div class="box-body">
                      <div class="clearfix margin-bottom-10"></div>
                      <div></div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-md-2">
                <div class="box box-success">
                  <div class="box-header with-border">
                    <h3 class="box-title">Group Photo </h3>
                  </div>
                  <div class="box-body">
                    <div class="col-md-3">
                      <div class="form-group">
                        <div class="text-center">
                          <img id="ContentPlaceHolder1_imgGroupPhoto" class="profile-user-img" src="dist/img/photo.jpg" style="width:110px;" />
                        </div>
                      </div>
                      <div class="form-group">
                        <div class="text-center">
                          <input type="file" name="ctl00$ContentPlaceHolder1$fileGroupPhoto" id="ContentPlaceHolder1_fileGroupPhoto" accept="camera" />
                          <script type="text/javascript">
                            function readURL(input) {
                              if (input.files && input.files[0]) {
                                var reader = new FileReader();
                                reader.onload = function(e) {
                                  $('#ContentPlaceHolder1_imgGroupPhoto').attr('src', e.target.result);
                                }
                                reader.readAsDataURL(input.files[0]);
                              }
                            }
                            $("#ContentPlaceHolder1_fileGroupPhoto").change(function() {
                              readURL(this);
                            });
                          </script>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="box box-success">
                  <div class="box-header with-border">
                    <h3 class="box-title">Leader Photo </h3>
                  </div>
                  <div class="box-body">
                    <div class="col-md-3">
                      <div class="form-group">
                        <div class="text-center">
                          <img id="ContentPlaceHolder1_ImageLeader" class="profile-user-img" src="dist/img/photo.jpg" style="width:110px;" />
                        </div>
                      </div>
                      <div class="form-group">
                        <div class="text-center">
                          <input type="file" name="ctl00$ContentPlaceHolder1$fileLeader" id="ContentPlaceHolder1_fileLeader" accept="camera" />
                          <script type="text/javascript">
                            function readURL1(input) {
                              if (input.files && input.files[0]) {
                                var reader = new FileReader();
                                reader.onload = function(e) {
                                  $('#ContentPlaceHolder1_ImageLeader').attr('src', e.target.result);
                                }
                                reader.readAsDataURL(input.files[0]);
                              }
                            }
                            $("#ContentPlaceHolder1_fileLeader").change(function() {
                              readURL1(this);
                            });
                          </script>
                        </div>
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
                    <h3 class="box-title">Detail Search List</h3>
                  </div>
                  <div class="box-body">
                    <div>
                      <table cellspacing="0" cellpadding="3" rules="all" 
                      class="display nowrap table table-hover table-striped table-bordered" border="1" 
                      id="ContentPlaceHolder1_gdvDataR" style="width:100%;border-collapse:collapse;">
                        <tr>
                          <td>No Receord Found</td>
                        </tr>
                      </table>
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
              <span id="lblCompanyName1">EQFI NIDHI LIMITED</span>
            </a>. </strong> All rights reserved.
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
    </form>
  </body>
  <!-- Dk/Admin/LoanGroupMaster.aspx EDB D 09:27:12 GMT -->
</html>