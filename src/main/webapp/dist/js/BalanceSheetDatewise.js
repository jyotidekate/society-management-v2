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

 function BalanceSheetDatewiseAjax()
{
	

 var branch= document.getElementById("selectbranch").value;
 var fromdate= document.getElementById("fromdate").value;
 var todate= document.getElementById("todate").value;
 
 document.getElementById("Fromdate").innerHTML = fromdate;
 document.getElementById("Todate").innerHTML = todate;
 document.getElementById("Branch").innerHTML = branch;
 docu
 

 
 $.ajax({
	
	 type:"get",
     contentType: "application/json",
     url: 'Balancesheet1',
     data:{Branch:branch, Fromdate: fromdate, Todate:todate},
     asynch: false,
     success: function(data) {  
	
	      for (let i = 0; i < data.length; i++)
	       {
			
			 const tableData = data.map(function(value){
                 return (
                		 
                	` <tr>
						 <td>${value.liablities}</td>     
					     <td>${value.libamount}</td>  
					     <td>${value.asset}</td>  
					     <td>${value.assetamount}</td>    
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
