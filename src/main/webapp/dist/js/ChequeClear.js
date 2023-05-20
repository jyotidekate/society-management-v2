//javaScript code Starts Here
 function ChequeClear()
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

//1Ajax Code Starts Here

 function ChequeClearAjax1()
{
	
 var type= document.getElementById("type").value;
 var branch= document.getElementById("branch").value;
 var fromdate= document.getElementById("fromdate").value;
 var todate= document.getElementById("todate").value;
 var chequeno= document.getElementById("chequeno").value;
 
 $.ajax({
	
	 type:"get",
     contentType: "application/json",
     url: 'Chequeclearancestatus1',
     data:{Type:type, Branch:branch, Fromdate: fromdate, Todate:todate, Chequeno:chequeno},
     asynch: false,
     success: function(data) {  
	
	      for (let i = 0; i < data.length; i++)
	       {
			
			 const tableData = data.map(function(value){
                 return (
                		 
                		` <tr>
                         <td>${value.type}</td> 
						 <td>${value.branch}</td>     
					     <td>${value.txndate}</td>  
					     <td>${value.cheque}</td>      
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

          

