function fetchMemberData(){
 
 $.ajax({
     type:"get",
     contentType: "application/json",
     url: 'searchDayBook',
     asynch: false,
     success: function(data) {  
	      for (let i = 0; i < data.length; i++) {
			//alert(data[i].id)
			 const tableData = data.map(function(value){
                 return (
                		   		 
                     `<tr>
                         <td>${value.selectBranch}</td>
                         <td>${value.selectLedger}</td>
                         <td>${value.date}</td>
                         
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
 
 
 function getSelectedDayBook(){
	
	//var selectBranch = document.getElementById("selectBranch").value;
	var selectLedger = document.getElementById("selectLedger").value;
	var selectBranch = document.getElementById("selectBranch").value;
	var fDate = document.getElementById("fDate").value;
	var tDate = document.getElementById("tDate").value;
             
	 $.ajax({
		
		                type:"get",
                        contentType: "application/json",
                        url: 'searchDayBook',
      					data: {Ledger : selectLedger,Branch : selectBranch,fDate : fDate ,tDate : tDate },
                        asynch: false,
    
                   success: function(data) {
	
					//alert(data.length);
	                   
                   	for (var i = 0; i < data.length; i++) {
						const tableData = data.map(function(value){
                        return (
                		 	 
                     `<tr>
                     	<td>${value.id}</td>
                         <td>${value.selectBranch}</td>
                         <td>${value.selectLedger}</td>
                         <td>${value.date}</td>
                         
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



// Balance Sheet (Fy)

//Button 1

function getBalanceSheetFy(){
	
	var Branch = document.getElementById("branch").value;
	var FromDate = document.getElementById("fromDate").value;
	var ToDate = document.getElementById("toDate").value;
    
	 $.ajax({
		
		                type:"get",
                        contentType: "application/json",
                        url: 'searchFirstButton',
      					data: {Branch1:Branch,FromDate1:FromDate,ToDate1:ToDate},
                        asynch: false,
    
                    success: function(data) {
	
					//alert(data.length);
	                   
                   	for (var i = 0; i < data.length; i++) {
						
							const tableData = data.map(function(value){
                           return (
                		 
                     `<tr>
                         <td>${value.id}</td>
                         <td>${value.name}</td>
                         <td>${value.opening_date}</td>
                         
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


//Button 2

function getBalanceSheetFy1(){
	
	var Branch = document.getElementById("branch1").value;
	var Fyear = document.getElementById("fyear").value;
	var FromDate = document.getElementById("fromDate1").value;
	var ToDate = document.getElementById("toDate1").value;

                
	 $.ajax({
		
		
		                type:"get",
                        contentType: "application/json",
                        url: 'searchSecondButton',
      					data: {Branch1:Branch,FromDate1:FromDate,ToDate1:ToDate,Fyear1:Fyear},
                        asynch: false,
    
                   success: function(data) {
	
					//alert(data.length);
	                   
                   	for (var i = 0; i < data.length; i++) {
						
						
							const tableData = data.map(function(value){
                 return (
                		 
                		 
                     `<tr>
                         <td>${value.id}</td>
                         <td>${value.branch}</td>
                         <td>${value.date}</td>
                      </tr>`
                 );
             }).join('');
         const tabelBody = document.querySelector("#tableBody01");
             tableBody01.innerHTML = tableData;
                    
                   	}
                   } ,
           	    error: function(){
           	    	alert("Device control failed");
           	    }
		
		
	});
	
}


//Report Section

//Advisor Collection or Employee Collection
function getBusinessType(){
	
	var BusinessType = document.getElementById("businessType").value;
	var AdvisorCode = document.getElementById("advisorCode").value;
	var fDate = document.getElementById("fDate").value;
	var tDate = document.getElementById("tDate").value;
              
	 $.ajax({
		
		                type:"get",
                        contentType: "application/json",
                        url: 'searchBusinessType',
      					data: {BusinessType:BusinessType,AdvisorCode:AdvisorCode, FDate : fDate ,TDate : tDate},
                        asynch: false,
    
                   success: function(data) {
	   
                   	for (var i = 0; i < data.length; i++) {
				
							const tableData = data.map(function(value){
                 return (
                		 
                		 
                     `<tr>
                         <td>${value.id}</td>
                         <td>${value.businessType}</td>
                         <td>${value.advisorCode}</td>
                         <td>${value.date}</td>
                         
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

//Loan Not Approve Report 
function getLoanNotApprove(){
	
	var Branch = document.getElementById("branch").value;
	var fDate = document.getElementById("fdate").value;
	var tDate = document.getElementById("tdate").value;
	         
	 $.ajax({
		
		
		                type:"get",
                        contentType: "application/json",
                        url: 'searchLoanNotApproveReport',
      					data: {Branch1:Branch ,FDate : fDate ,TDate : tDate},
                        asynch: false,
    
                   success: function(data) {

                   	for (var i = 0; i < data.length; i++) {
						
							const tableData = data.map(function(value){
                    return (
                		 	 
                     `<tr>
                         <td>${value.id}</td>
                         <td>${value.branch}</td>
                         <td>${value.date}</td>
                         
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

//LoanEMIOutstandingReport
function getLoanEMIOutstandingReport(){
	
	var Branch = document.getElementById("branch").value;
	var Plan = document.getElementById("plan").value;
	var AdvisorCode = document.getElementById("advisorCode").value;
	var Datee = document.getElementById("datee").value;
	           
	 $.ajax({
		
		
		                type:"get",
                        contentType: "application/json",
                        url: 'searchLoanEMIOutstandingReport',
      					data: {Branch1:Branch,Plan:Plan ,AdvisorCode:AdvisorCode,Datee:Datee},
                        asynch: false,
    
                   success: function(data) {
	
					//alert(data.length);
	                   
                   	for (var i = 0; i < data.length; i++) {
						
							const tableData = data.map(function(value){
                 return (
                		 
                		 
                     `<tr>
                         <td>${value.id}</td>
                         <td>${value.branch}</td>
                         <td>${value.plan}</td>
                         <td>${value.advisorCode}</td>
                         <td>${value.datee}</td>
                         
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

//Projection Report
function getProjectionREport(){
	
	var Branch = document.getElementById("branch").value;
	var PlanName = document.getElementById("planeName").value;
	var Fdate = document.getElementById("fdate").value;
	var Tdate = document.getElementById("tdate").value;
                
	 $.ajax({
		
		                type:"get",
                        contentType: "application/json",
                        url: 'searchProjectionReport',
      					data: {Branch1:Branch,PlanName1:PlanName,Fdate1:Fdate,Tdate1:Tdate},
                        asynch: false,
    
                   success: function(data) {
	  
                   	for (var i = 0; i < data.length; i++) {
					
							const tableData = data.map(function(value){
                    return (
                		 		 
                     `<tr>
                         <td>${value.id}</td>
                         <td>${value.branch}</td>
                         <td>${value.planeName}</td>
                         <td>${value.date}</td>
                         
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









