//javaScript code Starts Here
 function JournalReport()
 { 
 	
  const selectbranch= document.getElementById("selectbranch"); 
  	
   if (selectbranch.value === '') 
   { 
 	
    var span = document.getElementById("selectbranchMsg"); 
    span.textContent = "Select Branch."; 
    span.style.display = "block"; 
    status = false; 
   } 
 
   
    
    
    
    if (status === true)
     { 
     	document.form1.submit(); 
     	return true; 
    } 
    else 
    { 
    	 return false; 
    } 
 
 } 




//Ajax Code Starts Here

 function JournalReportAjax()
{
	
 var selectbranch= document.getElementById("selectbranch").value;
 

 
 $.ajax({
	
	 type:"get",
     contentType: "application/json",
     url: 'journalReport1',
     data:{Branch: selectbranch},
     asynch: false,
     success: function(data) {  
	
	      for (let i = 0; i < data.length; i++)
	       {
			
			 const tableData = data.map(function(value){
                 return (
                		 
                		 `<tr>
                		 	<td>Receipt No.</td>
                		 	<td>Date</td>
                		 	<td>Narration</td>
                		 	<td>Debit</td>
                		 	<td>Credit</td>
                		  </tr>
                		 
                		 
                		 
                		 
                     <tr>
                         <td>${value.receiptno}</td> 
						 <td>${value.date}</td>     
					     <td>${value.narration}</td>  
					     <td>${value.debit}</td>  
					     <td>${value.credit}</td>  
					        
                         
                     </tr>`
                 );
             })
             
             .join('');
        	 const tabelBody = document.querySelector("#table");
             table.innerHTML = tableData;
		} 
     } ,
	    error: function(){
	    	alert("Device control failed");
	    }
 });
 }

          


 function JournalReportAjax2()
{
	
 var fromdate= document.getElementById("fromdate").value;
 var todate= document.getElementById("todate").value;
 

 
 $.ajax({
	
	 type:"get",
     contentType: "application/json",
     url: 'journalReport2',
     data:{Fromdate: fromdate, Todate: todate},
     asynch: false,
     success: function(data) {  
	
	      for (let i = 0; i < data.length; i++)
	       {
			
			 const tableData = data.map(function(value){
                 return (
                		 
                		 `<tr>
                		 	<td>Receipt No.</td>
                		 	<td>Date</td>
                		 	<td>Narration</td>
                		 	<td>Debit</td>
                		 	<td>Credit</td>
                		  </tr>
                		 
                		 
                		 
                		 
                     <tr>
                         <td>${value.receiptno}</td> 
						 <td>${value.date}</td>     
					     <td>${value.narration}</td>  
					     <td>${value.debit}</td>  
					     <td>${value.credit}</td>  
					        
                         
                     </tr>`
                 );
             })
             
             .join('');
        	 const tabelBody = document.querySelector("#table");
             table.innerHTML = tableData;
		} 
     } ,
	    error: function(){
	    	alert("Device control failed");
	    }
 });
 }









