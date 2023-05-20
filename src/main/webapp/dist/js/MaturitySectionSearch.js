//Search THe Policy Number
function SearchTHePolicyNumber(){
	
	var PolicyNo = document.getElementById("policyNo").value;
	
	 
	 $.ajax({
		
		
		                type:"get",
                        contentType: "application/json",
                        url: 'searchMaturityPayment',
      					data: {PolicyNo1:PolicyNo },
                        asynch: false,
    
                   success: function(data) {
	
					
	                   
                   	for (var i = 0; i < data.length; i++) {
	

						document.getElementById("policyNo1").value = data[i].policyno;
						document.getElementById("ApplicantName").value = data[i].applicantname;
						document.getElementById("planName").value = data[i].planname;
						document.getElementById("planCode").value = data[i].plancode;
						
						document.getElementById("term").value = data[i].term;
						document.getElementById("policyAmount").value = data[i].policyamount;
						document.getElementById("actualMaturity").value = data[i].actualmaturity;
						document.getElementById("MaturityDate").value = data[i].maturitydate;
						
						document.getElementById("sysPayable").value = data[i].syspayable;
						document.getElementById("deduction").value = data[i].deduction;
						document.getElementById("adjusment").value = data[i].adjustment;
						document.getElementById("netPayable").value = data[i].netpayable;
						
						document.getElementById("approvalBranch").value = data[i].approvalbranch;
						document.getElementById("approvalDate").value = data[i].approvaldate;
						document.getElementById("approveRemarks").value = data[i].approveremarks;
						document.getElementById("approveUser").value = data[i].approveuser;
						
                    
                    
                   	}
                   } ,
           	    error: function(){
           	    	alert("Device control failed");
           	    }
		
		
	});
	
}





//Update the Maturity Section 

function UpdatetheMaturitySection(){
	var PolicyNo = document.getElementById("policyNo").value;
	var PayementDate = document.getElementById("payementDate").value;
	var PayBranch = document.getElementById("payBranch").value;
	var PaymentBy = document.getElementById("paymentBy").value;
	var PayRemarks = document.getElementById("payRemarks").value;
	
	 
	 $.ajax({
		
		
		                type:"get",
                        contentType: "application/json",
                        url: 'MaturityPaymentUpdate',
      					data: {PolicyNo1:PolicyNo,PayementDate1:PayementDate,PayBranch1:PayBranch,PaymentBy1:PaymentBy,PayRemarks1:PayRemarks },
                        asynch: false,
    
                   success: function(data) {
	
					swal("Updated Sucessfully !!!!", "","success");
	                   
                   	
                   } ,
           	    error: function(){
           	    	alert("Device control failed");
           	    }
		
		
	});
	
}














//Maturity Application

//Search Through Policy Number
function SearchThroughPolicyNumber(){
	
	var PolicyNo = document.getElementById("policyNo").value;
	
	
	
	 
	 $.ajax({
		
		
		                type:"get",
                        contentType: "application/json",
                        url: 'searchMaturityApplication',
      					data: {PolicyNo1:PolicyNo },
                        asynch: false,
    
                   success: function(data) {
	
					
	                   
                   	for (var i = 0; i < data.length; i++) {
	

						document.getElementById("memberName").value = data[i].memberName;
						document.getElementById("policyDate").value = data[i].policyDate;
						
						
                   	}
                   } ,
           	    error: function(){
           	    	alert("Device control failed");
           	    }
		
		
	});
	
}












//Update the Maturity Apllication 

function UpdatetheMaturityApllication(){
	var PolicyNo = document.getElementById("policyNo").value;
	var ApplcationDate = document.getElementById("applicationDate").value;
	var Remarks = document.getElementById("remarks").value;
	
	
	 
	 $.ajax({
		
		
		                type:"get",
                        contentType: "application/json",
                        url: 'MaturityAplicationUpdate',
      					data: {PolicyNo1:PolicyNo,ApplcationDate1:ApplcationDate,Remarks1:Remarks},
                        asynch: false,
    
                   success: function(data) {
	
					swal("Updated Sucessfully !!!!", "","success");
	                   
                   	
                   } ,
           	    error: function(){
           	    	alert("Device control failed");
           	    }
		
		
	});
	
}




//Search Maturity Appplication Find All
function SearchMaturityAppplicationFindAll(){
	  
	 $.ajax({
		
		
		                type:"get",
                        contentType: "application/json",
                        url: 'MaturityAplicationFindAll',
      					
                        asynch: false,
    
                   success: function(data) {
	
					
	                   
                   	for (var i = 0; i < data.length; i++) {

						const tableData = data.map(function(value){
                 return (
                		 
                		 
                     `<tr>
                     	<td>${value.id}</td>
                         <td>${value.memberId}</td>
                         <td>${value.memberName}</td>
                          <td>${value.policyDate}</td>
                           <td>${value.applicationDate}</td>
                            <td>${value.remarks}</td>
                          
                     </tr>`
                 );
             }).join('');
         const tabelBody = document.querySelector("#tableBody");
             tableBody.innerHTML = tableData;
                    
                   	}
                   } ,
           	    error: function(){
           	    	alert("Device control failed");
           	    }
		
		
	});
	
}




