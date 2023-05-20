
//Ajax Code Starts Here

 function ApprovedStatus()
{	
 var paybranch = document.getElementById("paybranch").value;
 var fromdate = document.getElementById("fromdate").value;
 var todate = document.getElementById("todate").value;
 
 $.ajax({
	 type:"get",
     contentType: "application/json",
     url: 'approvedStatus1',
     data:{BRANCH: paybranch, Fromdate: fromdate, Todate: todate},
     asynch: false,
     success: function(data) {  
	
	      for (let i = 0; i < data.length; i++)
	       {
			 const tableData = data.map(function(value){
                 return (
                		 
                		 `<tr>
                        	 <td>${value.slno}</td> 
							 <td>${value.policyno}</td>     
					     	 <td>${value.applicantname}</td>  
					     	 <td>${value.paybranch}</td>  
					     	 <td>${value.paydate}</td>  
					     	 <td>${value.approvadate}</td> 
                         	 <td>${value.appUser}</td>
                         	 <td>${value.payremark}</td>
                         	 <td>${value.netPay}</td>
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
 
 
 
 