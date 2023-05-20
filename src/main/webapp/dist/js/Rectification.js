//Code for Investment Rectification
//dropdown value for investment rectification for Policy no.
function  ForPolicynoDropdown() {
	
	$.ajax({
		type: "GET",
		contentType: "application/json",
		url: 'RetrieveDataOFSoftDeletedApis',
		asynch: false,
		success: function(data) {
			
			 var appenddata1 = "";
                    for (var i = 0; i < data.length; i++) {
                         appenddata1 += "<option value = '"+data[i].policyno +"'>" +data[i].policyno +" </option>";
                    }
                    $("#policyno").append(appenddata1);
		},
		error: function() {
			alert("Device control failed");
		}
	});
}

//retriving data on Feilds by Policy No.
function retrivigInvestmentAjax(){
	
	var policyno = document.getElementById("policyno");
		var input = {
                     "policyno": policyno.value
             }
             
        $.ajax({
                 type:"POST",
                 contentType: "application/json",
                 data: JSON.stringify(input),
                 url: 'retriveDataFromPolicyno',
                 asynch: false,
                 success: function(data) {
	
	 for (var i = 0; i < data.length; i++) {
		
		 $('#policyno').val(data[i].policyno);
	
		 document.getElementById("policyDate").value=data[i].policyDate;
			// document.getElementById("searchMemberCode").value=data[i].searchMemberCode;
			 document.getElementById("memberName").value=data[i].memberName;
			 document.getElementById("dob").value=data[i].dob;
			 document.getElementById("age").value=data[i].age;
			 document.getElementById("relativeName").value=data[i].relativeName;
			 document.getElementById("phoneno").value=data[i].phoneno;
			 document.getElementById("nomineeName").value=data[i].nomineeName;
			 document.getElementById("nomineeAge").value=data[i].nomineeAge;
			 document.getElementById("nomineeRelation").value=data[i].nomineeRelation;
			 document.getElementById("address").value=data[i].address;
			 document.getElementById("district").value=data[i].district;
			 document.getElementById("state").value=data[i].state;
			 document.getElementById("pin").value=data[i].pin;
			 document.getElementById("cspname").value=data[i].cspname;
			 document.getElementById("modeOfOp").value=data[i].modeOfOp;
			 
			 document.getElementById("jointName").value=data[i].jointName;
			 document.getElementById("jointCode").value=data[i].jointCode;
			 
			 document.getElementById("mDate").value=data[i].mDate;
			 document.getElementById("schemeType").value=data[i].schemeType;
			 document.getElementById("schemeName").value=data[i].schemeName;
			 document.getElementById("term").value=data[i].term;
			 document.getElementById("mode").value=data[i].mode;
			 document.getElementById("misMode").value=data[i].misMode;
			 document.getElementById("policyAmount").value=data[i].policyAmount;
			 document.getElementById("totalDeposit").value=data[i].totalDeposit;
			 document.getElementById("maturityAmount").value=data[i].maturityAmount;
			 document.getElementById("mISInterest").value=data[i].mISInterest;
			 document.getElementById("paymode").value=data[i].paymode;
			 document.getElementById("remarks").value=data[i].remarks;
			 document.getElementById("advisorCode").value=data[i].advisorCode;
			 document.getElementById("advisorName").value=data[i].advisorName;
			 document.getElementById("chkisSms").value=data[i].chkisSms;
			            
//			 let photoValue =data[i].photo;
          
            var img = document.getElementById('preview');
			img.src =`upload/`+data[i].photo+``;

			var img2 = document.getElementById('secondpreview');
			img2.src =`upload/`+data[i].signature+``;	
        }
       } ,
         	    error: function(){
         	    	alert("Device control failed for data retriving on feilds");
         	    }
       });
}

function softDeleteIntegration(){
	var policyno = document.getElementById("policyno").value;
	//var renewalDate = document.getElementById("renewalDate");
	//var searchbyPolicyNo = document.getElementById("searchbyPolicyNo");
	var input = {
                     "policyno": policyno,
//                      "renewalDate": renewalDate.value
     }
        
     var myJSOn = JSON.stringify(input);
//        alert(searchbyPolicyNo)
//        alert(!searchbyPolicyNo)
        
        if(!policyno){
	alert("Plz Select Policy Number!!!!!!!")
       
             }else{
	 $.ajax({
                 type:"post",
                 contentType: "application/json",
                 data: JSON.stringify(input),
                 url: 'policynoapi',
                 asynch: false,
                 success: function(data) {
                 	alert("Soft Deleted SucessFull !!!!!!!!!")
    	            window.location.href = "InvestmentRectification";
                	
                 } ,
         	    error: function(){
         	    	alert("Device control failed");
         	    }
             });
}
}

//dropdown for Share Rectification
 function ShareRectification() {


	$.ajax({
		type: "post",
		contentType: "application/json",
		url: 'RetrieveDataOfSoftDeletedApi',
		asynch: false,
		success: function(data) {

			var appenddata1 = "";
			for (var i = 0; i < data.length; i++) {
				appenddata1 += "<option value = '" + data[i].id + "'>" + data[i].id + " </option>";
			}
			$("#id").append(appenddata1);
			

		},
		error: function() {
			alert("Device control failed");
		}
	});
}


//dropdown for share Rectification payment by

function SharePayment() {


	$.ajax({
		type: "post",
		contentType: "application/json",
		url: 'sharePayment',
		asynch: false,
		success: function(data) {

			var appenddata1 = "";
			for (var i = 0; i < data.length; i++) {
				appenddata1 += "<option value = '" + data[i].name + "'>" + data[i].name + " </option>";
			}
			$("#name").append(appenddata1);
			},
		error: function() {
			alert("Device control failed");
		}
	});
}

function softDeleteSavingsTransaction(){
	var accountNo = document.getElementById("accountNo").value;
	
	var input = {
                     "accountNo": accountNo

        }
        
        var myJSOn = JSON.stringify(input);
        
        

        
        if(!accountNo){
	alert("Plz Select Code!!!!!!!")
       
             }else{
	 $.ajax({
                 type:"post",
                 contentType: "application/json",
                 data: JSON.stringify(input),
                 url: 'DeleteSavingsTransactionDelete',
                 asynch: false,
                 success: function(data) {
                 	alert("Savings Transaction Deleted SuccessFull !!!!!!!!!")
    	            window.location.href = "SavingTransactionDelete";
                	
                 } ,
         	    error: function(){
         	    	alert("Device control failed");
         	    }
             });
}
}



//Rectification Section  share rectification Module 
//3.Get Data from  Search by code
function SearchbyCode(){
	
	var id = document.getElementById("id");
	var input = {
		"id":id.value
	};
	
	//alert("id");
	$.ajax({
		type:"POST",
		contentType: "application/json",
		data: JSON.stringify(input),
		url: 'retrievedateinsharefields',
		async: false,
		success: function(data){
    //alert("hello");
	
                    for (var i = 0; i < data.length; i++){
						
	              
	               
						$('#id').val(data[i].id);
                 	 
                 	 document.getElementById("memberName").value=data[i].memberName;
                 	 document.getElementById("doj").value=data[i].doj;
                 	 document.getElementById("previousShare").value=data[i].previousShare;
                 	 document.getElementById("previousShareNo").value=data[i].previousShareNo;
                 	 document.getElementById("faceValue").value=data[i].faceValue;
                 	 document.getElementById("branchName").value=data[i].branchName;
                 	 document.getElementById("transferDate").value=data[i].transferDate;
                 	 document.getElementById("shareAllotedfrm2").value=data[i].shareAllotedfrm2;
                 	 document.getElementById("sharebalance").value=data[i].sharebalance;
                 	 document.getElementById("transferAmount").value=data[i].transferAmount;
                 	 document.getElementById("noOfShare").value=data[i].noOfShare;
                 	 document.getElementById("remarks").value=data[i].remarks;
                 	 
                      }
                   
                 } ,
         	    error: function(){
         	    	alert("Device control failed-for retriving datafeilds");
         	    }
             });

}

function softDeleteIntegration(){
	var id = document.getElementById("id").value;
	
	var input = {
                     "id": id

        }
        
        var myJSOn = JSON.stringify(input);
        
        

        
        if(!id){
	alert("Plz Select Code!!!!!!!")
       
             }else{
	 $.ajax({
                 type:"post",
                 contentType: "application/json",
                 data: JSON.stringify(input),
                 url: 'DeleteShareRectification',
                 asynch: false,
                 success: function(data) {
                 	alert("Soft Deleted SuccessFull !!!!!!!!!")
    	            window.location.href = "ShareRectification";
                	
                 } ,
         	    error: function(){
         	    	alert("Device control failed");
         	    }
             });
}
}

function  getAllPolicyNumber1InTheDailyRenewalRectification() {
	
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'RetrieveDataOFSoftDeletedApi111',
		asynch: false,
		success: function(data) {
			
			 var appenddata1 = "";
                    //var jsonData1 = JSON.parse(data1.d);
                    for (var i = 0; i < data.length; i++) {
                         appenddata1 += "<option value='"+data[i].id+"'>"+data[i].id+"</option>";
                    }
                    $("#searchbyPolicyNo").append(appenddata1);
		},
		error: function() {
			alert("Device control failed");
		}
	});
}

/*Retrieval Investment Section Daily Renewal Payment Module */
function getByAddInvesmentCode(){
	
	//alert("Hello")
	var searchbyPolicyNo = document.getElementById("searchbyPolicyNo");
		var input = {
                     "id": searchbyPolicyNo.value }
             
        $.ajax({
                 type:"post",
                 contentType: "application/json",
                 data: JSON.stringify(input),
                 url: 'getByAddInvesmentCode',
                 asynch: false,
                 success: function(data) {
                 	 
                 		
                 		var img = document.getElementById('preview');
			       		img.src =`upload/`+data.photo+``;

						var img2 = document.getElementById('secondpreview');
						img2.src =`upload/`+data.signature+``;
						
						//alert(data.policy_date)
                 	 
                      document.getElementById("policyDate1").value = data.policyDate;
                      document.getElementById("mDate").value = data.mDate;
                      document.getElementById("memberCode").value = data.searchMemberCode;
                      document.getElementById("applicantName").value = data.memberName;
                      document.getElementById("mobileNo").value = data.phoneno;
                      document.getElementById("PolicyAmount").value = data.policyAmount;
                      document.getElementById("schemeName").value = data.schemeName;
                      document.getElementById("schemeType").value = data.schemeType;
                      document.getElementById("mode").value = data.mode;
                      document.getElementById("maturityAmount").value = data.maturityAmount;
                      document.getElementById("totalDeposit").value = data.totalDeposit;
                      document.getElementById("MaturityAmountDue").value = data.amtDue;
                      document.getElementById("chkisSms").value = data.chkisSms;
                      document.getElementById("advisorCode").value = data.advisorCode;
                      document.getElementById("lastInstPaid").value = data.lastInstPaid;
                      document.getElementById("dueDate").value = data.dueDate;
                      document.getElementById("latefine").value = data.latefine;
                      document.getElementById("NoOfInstPaid").value = data.noOfInstPaid;
                      document.getElementById("paymode").value = data.paymode;
                      document.getElementById("collectorCode").value = data.collectorCode;
                      document.getElementById("advisorName").value = data.advisorName;
                      document.getElementById("remarks").value = data.remarks;
                    
                 } ,
         	    error: function(){
         	    	alert("Device control failed");
         	    }
             });
}

/*Investment Section Daily Renewal Payment Module */
//2.Get Data by Renewal Date
 function getByDateAddInvesmentCode(){
	var searchbyRenewalDate = document.getElementById("renewalDate").value;
		
        $.ajax({
                 type:"get",
                 contentType: "application/json",
                 url: 'getByRenewalDate',
                 data: {SearchbyRenewalDate:searchbyRenewalDate},
                 asynch: false,
                 success: function(data) {
	
	            for (let i=0;i<data.length;i++){
		
	                     var img = document.getElementById('preview');
			       		img.src =`upload/`+data[i].photo+``;

						var img2 = document.getElementById('secondpreview');
						img2.src =`upload/`+data[i].signature+``;
						
						//alert(data.policy_date)
                 	 
                      document.getElementById("policyDate1").value = data[i].policyDate;
                      document.getElementById("mDate").value = data[i].mDate;
                      document.getElementById("memberCode").value = data[i].searchMemberCode;
                      document.getElementById("applicantName").value = data[i].memberName;
                      document.getElementById("mobileNo").value = data[i].phoneno;
                      document.getElementById("PolicyAmount").value = data[i].policyAmount;
                      document.getElementById("schemeName").value = data[i].schemeName;
                      document.getElementById("schemeType").value = data[i].schemeType;
                      document.getElementById("mode").value = data[i].mode;
                      document.getElementById("maturityAmount").value = data[i].maturityAmount;
                      document.getElementById("totalDeposit").value = data[i].totalDeposit;
                      document.getElementById("MaturityAmountDue").value = data[i].amtDue;
                      document.getElementById("chkisSms").value = data[i].chkisSms;
                      document.getElementById("advisorCode").value = data[i].advisorCode;
                      document.getElementById("lastInstPaid").value = data[i].lastInstPaid;
                      document.getElementById("dueDate").value = data[i].dueDate;
                      document.getElementById("latefine").value = data[i].latefine;
                      document.getElementById("NoOfInstPaid").value = data[i].noOfInstPaid;
                      document.getElementById("paymode").value = data[i].paymode;
                      document.getElementById("collectorCode").value = data[i].collectorCode;
                      document.getElementById("advisorName").value = data[i].advisorName;
                      document.getElementById("remarks").value = data[i].remarks;
	}
	

                 } ,
         	    error: function(){
         	    	alert("Device control failed");
         	    }
             });

}

/*Investment Section Daily Renewal Payment Module */
/3.Get Data from Branch Name/
function getByBranchNameAddInvesmentCode(){
	var searchbybranchName = document.getElementById("branchName").value;
		
        $.ajax({
                 type:"get",
                 contentType: "application/json",
                 url: 'getAllDataByBranchName',
                 data: {SearchbybranchName:searchbybranchName},
                 asynch: false,
                 success: function(data) {
	
                      for (let i=0;i<data.length;i++){
	                  
	                 var img = document.getElementById('preview');
			       		img.src =`upload/`+data[i].photo+``;

						var img2 = document.getElementById('secondpreview');
						img2.src =`upload/`+data[i].signature+``;
						
						//alert(data.policy_date)
                 	 
                      document.getElementById("policyDate1").value = data[i].policyDate;
                      document.getElementById("mDate").value = data[i].mDate;
                      document.getElementById("memberCode").value = data[i].searchMemberCode;
                      document.getElementById("applicantName").value = data[i].memberName;
                      document.getElementById("mobileNo").value = data[i].phoneno;
                      document.getElementById("PolicyAmount").value = data[i].policyAmount;
                      document.getElementById("schemeName").value = data[i].schemeName;
                      document.getElementById("schemeType").value = data[i].schemeType;
                      document.getElementById("mode").value = data[i].mode;
                      document.getElementById("maturityAmount").value = data[i].maturityAmount;
                      document.getElementById("totalDeposit").value = data[i].totalDeposit;
                      document.getElementById("MaturityAmountDue").value = data[i].amtDue;
                      document.getElementById("chkisSms").value = data[i].chkisSms;
                      document.getElementById("advisorCode").value = data[i].advisorCode;
                      document.getElementById("lastInstPaid").value = data[i].lastInstPaid;
                      document.getElementById("dueDate").value = data[i].dueDate;
                      document.getElementById("latefine").value = data[i].latefine;
                      document.getElementById("NoOfInstPaid").value = data[i].noOfInstPaid;
                      document.getElementById("paymode").value = data[i].paymode;
                      document.getElementById("collectorCode").value = data[i].collectorCode;
                      document.getElementById("advisorName").value = data[i].advisorName;
                      document.getElementById("remarks").value = data[i].remarks;
                     
                   }
                 } ,
         	    error: function(){
         	    	alert("Device control failed");
         	    }
             });

}




/*Investment Section Daily Flexi Transaction Delete*/


function investmentSectionDailyFlexiTransactionDelete(){
	var searchbyPolicyNo = document.getElementById("searchbyPolicyNo").value;
	
	var input = {
                     "id": searchbyPolicyNo }
		
        $.ajax({
                 type:"post",
                 contentType: "application/json",
                 url: 'retrievepolicyNODropDown',
                 data: JSON.stringify(input) ,
                 asynch: false,
                 success: function(data) {
	
                      for (let i=0;i<data.length;i++){
	
	                  
	                 var img = document.getElementById('preview');
			       		img.src =`upload/`+data[i].photo+``;

						var img2 = document.getElementById('secondpreview');
						img2.src =`upload/`+data[i].signature+``;
						
						//alert(data.policy_date)
                 	 
                      document.getElementById("ContentPlaceHolder1_txtTDate").value = data[i].policyDate;
                      document.getElementById("ContentPlaceHolder1_ddlBranchName").value = data[i].branchName;
                      document.getElementById("searchbyPolicyNo").value = data[i].id;
                      document.getElementById("ContentPlaceHolder1_txtEmpCode").value = data[i].empCode;
                      document.getElementById("ContentPlaceHolder1_txtMemberCode").value = data[i].searchMemberCode;
                      document.getElementById("ContentPlaceHolder1_txtACHolderName").value = data[i].memberName;
                      document.getElementById("ContentPlaceHolder1_txtMobile").value = data[i].phoneno;
                      document.getElementById("ContentPlaceHolder1_txtPlanCode").value = data[i].planCode;
                      document.getElementById("ContentPlaceHolder1_txtBalance").value = data[i].balance;
                      document.getElementById("ContentPlaceHolder1_txtTransactionFor").value = data[i].transactionFor;
                      document.getElementById("ContentPlaceHolder1_txtRemarks").value = data[i].remarks;
                      document.getElementById("ContentPlaceHolder1_ddlTransactionType").value = data[i].transactionType;
                      document.getElementById("ContentPlaceHolder1_txtAmount").value = data[i].amount;
                      document.getElementById("ContentPlaceHolder1_ddlPaymode").value = data[i].paymode;
                   }
                 } ,
         	    error: function(){
         	    	alert("Device control failed");
         	    }
             });

}

//Soft delete integration for Flexi Transaction Delete
function softdeleteintegrationforFlexiTransactionDelete(){
	var id = document.getElementById("searchbyPolicyNo").value;
	var input = {
		"id" : id,
	}
	var myJson = JSON.stringify(input);
	//alert(id)
	if(!id){
		alert("Please select ID")
	}
	else{
		$.ajax({
			type:"post",
			contentType: "application/json",
			data: JSON.stringify(input),
			url: 'DeleteDailyRenewalPaymentbbb6',
			asynch: false,
			success: function(data){
				alert("Soft Delete Successfully...!!!")
				window.location.href = "FlexiRenewalbbb6";
			},
			error: function(){
				alert("Device control failed");
			}
		});
	}
}



//Saving Rectification MOdule 

//dropdown for  savings Transaction Delete
 function SavingsTransactionDelete() {


	$.ajax({
		type: "POST",
		contentType: "application/json",
		url: 'RetrieveDataOfSavingsTransactionSoftDelete',
		asynch: false,
		success: function(data) {

			var appenddata1 = "";
			for (var i = 0; i < data.length; i++) {
				appenddata1 += "<option value = '" + data[i].accountNo + "'>" + data[i].accountNo + " </option>";
			}
			$("#accountNo").append(appenddata1);
			

		},
		error: function() {
			alert("Device control failed");
		}
	});
}

function BranchName1() {

	$.ajax({
		type: "post",
		contentType: "application/json",
		url: 'getBranchName1',
		asynch: false,
		success: function(data) {

			
			var appenddata2 = "";
			for (var i = 0; i < data.length; i++) {
				appenddata2 += "<option value = '" + data[i].name + "'>" + data[i].name + " </option>";
			}
			$("#branchName").append(appenddata2);
			

		},
		error: function() {
			alert("Device control failed");
		}
	} );
}

//Get Loan Plan Name In Dropdown From Dp
function GetLoanPlanNameInDropdownFromDp(){
	//alert("hi")
  			$.ajax({
            type:"get",
            contentType: "application/json",
            url: 'slectLoanPlanNameFromLoanTable',
            asynch: false,
            success: function(data) {

            var appenddata1 = "";
                    //var jsonData1 = JSON.parse(data1.d);
                    for (var i = 0; i < data.length; i++) {
                         appenddata1 += "<option value ='"+data[i].loanPlanName+"'>"+data[i].loanPlanName +"</option>";
                    }
                    $("#loanPlanName").append(appenddata1);  
                    
             var appenddata2 = "";
                    //var jsonData1 = JSON.parse(data1.d);
                    for (var i = 0; i < data.length; i++) {
                         appenddata2 += "<option value ='"+data[i].planTerm+"'>"+data[i].planTerm +"</option>";
                    }
                    $("#planTerm").append(appenddata2);  
                    
            var appenddata3 = "";
                    //var jsonData1 = JSON.parse(data1.d);
                    for (var i = 0; i < data.length; i++) {
                         appenddata3 += "<option value ='"+data[i].coApplicantCode+"'>"+data[i].coApplicantCode +"</option>";
                    }
                    $("#coApplicantCode").append(appenddata3); 
                    
            var appenddata4 = "";
                    //var jsonData1 = JSON.parse(data1.d);
                    for (var i = 0; i < data.length; i++) {
                         appenddata4 += "<option value ='"+data[i].searchMemberCode+"'>"+data[i].searchMemberCode +"</option>";
                    }
                    $("#searchMemberCode").append(appenddata4);   
            } ,
    	    error: function(){
    	    	alert("Device control failed");
    	    }
        });
}



function searchbyaccountno(){
	
	var accountNo = document.getElementById("accountNo");
	var input = {
		"accountNo":accountNo.value
	};
	
	
	$.ajax({
		type:"POST",
		contentType: "application/json",
		data: JSON.stringify(input),
		url: 'retrieveDataInSavingsTransactionDelete',
		async: false,
		success: function(data){
   
	
                    for (var i = 0; i < data.length; i++){
						
					 $('#accountNo').val(data[i].accountNo);
                 	 
                 	 document.getElementById("txnDate").value=data[i].txnDate;
                 	 document.getElementById("branchName").value=data[i].branchName;
                 	 document.getElementById("memberCode").value=data[i].memberCode;
                 	 document.getElementById("accHolderName").value=data[i].accHolderName;
                 	 document.getElementById("mobileNumber").value=data[i].mobileNumber;
                 	 document.getElementById("jointHolder").value=data[i].jointHolder;
                 	 document.getElementById("sbPlanName").value=data[i].sbPlanName;
                 	 document.getElementById("avaBalance").value=data[i].avaBalance;
                 	 document.getElementById("transactionFor").value=data[i].transactionFor;
                 	 document.getElementById("transactionFor").value=data[i].transactionFor;
                 	 document.getElementById("amount").value=data[i].amount;
                 	 document.getElementById("paymentBy").value=data[i].paymentBy;
                 	 
                      }
                   
                 } ,
         	    error: function(){
         	    	alert("Device control failed-for retriving datafeilds");
         	    }
             });

}

function getTheValueInTheDropDown() {


	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'RetrieveDataOFSoftDeleteAddSavingAcoount',
		asynch: false,
		success: function(data) {

			var appenddata1 = "";
			for (var i = 0; i < data.length; i++) {
				appenddata1 += "<option value = '" +data[i].accountNo+ "'>" +data[i].accountNo+ " </option>";
			}
			$("#accountNo").append(appenddata1);
			},
		error: function() {
			alert("Device control failed");
		}
	});
	
	
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getAllPaymentMaster',
		asynch: false,
		success: function(data) {

			var appenddata1 = "";
			for (var i = 0; i < data.length; i++) {
				appenddata1 += "<option value = '" +data[i].name+ "'>" +data[i].name+ " </option>";
			}
			$("#paymode").append(appenddata1);
			},
		error: function() {
			alert("Device control failed");
		}
	});
	
	
	
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'RelativeRelation',
		asynch: false,
		success: function(data) {

			var appenddata1 = "";
			for (var i = 0; i < data.length; i++) {
				appenddata1 += "<option value = '" +data[i].name+ "'>" +data[i].name+ " </option>";
			}
			$("#nRelation").append(appenddata1);
			},
		error: function() {
			alert("Device control failed");
		}
	});
	
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'RelativeRelation',
		asynch: false,
		success: function(data) {

			var appenddata1 = "";
			for (var i = 0; i < data.length; i++) {
				appenddata1 += "<option value = '" +data[i].name+ "'>" +data[i].name+ " </option>";
			}
			$("#jointRelation").append(appenddata1);
			},
		error: function() {
			alert("Device control failed");
		}
	});
	
	
	
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getAllBranch',
		asynch: false,
		success: function(data) {

			var appenddata1 = "";
			for (var i = 0; i < data.length; i++) {
				appenddata1 += "<option value = '" +data[i].name+ "'>" +data[i].name+ " </option>";
			}
			$("#cSPName").append(appenddata1);
			},
		error: function() {
			alert("Device control failed");
		}
	});
}


//Get the value in the given input Fields fof Saving Acoount
function getthevalueinthegiveninputFieldsfofSavingAcoount(){
	var accountNo = document.getElementById("accountNo").value;
	
	var input = {
                     "accountNo": accountNo }
		
        $.ajax({
                 type:"post",
                 contentType: "application/json",
                 url: 'RetrieveDatathroughAccountNumber',
                 data: JSON.stringify(input) ,
                 asynch: false,
                 success: function(data) {
	
                      for (let i=0;i<data.length;i++){
	  
	                    var img = document.getElementById('imageApplicant');
			       		img.src =`upload/`+data[i].imageApplicant+``;

						var img2 = document.getElementById('imageSignature');
						img2.src =`upload/`+data[i].imageSignature+``;
						
						var img3 = document.getElementById('imgJointPhoto');
						img3.src =`upload/`+data[i].imgJointPhoto+``;
						
						//alert(data.policy_date)
                 	 
                      document.getElementById("accountNo").value = data[i].accountNo;
                      document.getElementById("searchMemberCode").value = data[i].searchMemberCode;
                      document.getElementById("opDate").value = data[i].opDate;
                      document.getElementById("memberName").value = data[i].memberName;
                      document.getElementById("dOB").value = data[i].dOB;
                      document.getElementById("relativeName").value = data[i].relativeName;
                      document.getElementById("phoneno").value = data[i].phoneno;
                      document.getElementById("nomineeName").value = data[i].nomineeName;
                      document.getElementById("nage").value = data[i].nage;
                      document.getElementById("nRelation").value = data[i].nRelation;
                      document.getElementById("address").value = data[i].address;
                      document.getElementById("district").value = data[i].district;
                      document.getElementById("cSPName").value = data[i].cSPName;
                      document.getElementById("state").value = data[i].state;
                      document.getElementById("pin").value = data[i].pin;
                      
                      
                      document.getElementById("modeOfOp").value = data[i].modeOfOp;
                      document.getElementById("jointCode").value = data[i].jointCode;
                      document.getElementById("jointName").value = data[i].jointName;
                      document.getElementById("jointRelation").value = data[i].jointRelation;
                      document.getElementById("sBPlan").value = data[i].sBPlan;
                      document.getElementById("openingAmount").value = data[i].openingAmount;
                      document.getElementById("advisorCode").value = data[i].advisorCode;
                      document.getElementById("advisorName").value = data[i].advisorName;
                      document.getElementById("opFees").value = data[i].opFees;
                      document.getElementById("paymode").value = data[i].paymode;
                      document.getElementById("remarks").value = data[i].remarks;
                      document.getElementById("chkisactive").value = data[i].chkisactive;
                      document.getElementById("chkisSms").value = data[i].chkisSms;
                      document.getElementById("chkdebitcard").value = data[i].chkdebitcard;
                   }
                 } ,
         	    error: function(){
         	    	alert("Device control failed");
         	    }
             });

}

