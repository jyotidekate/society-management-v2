/**
 * 
 */
 //by combobox and dates
 
 function getpayEntry(){
	
	var fdate = document.getElementById("fDate").value;
	var tdate = document.getElementById("todate").value;
	var branch = document.getElementById("selectbranch").value;
	
	 $.ajax({
		
		          type:"get",
                        contentType: "application/json",
                        url: 'searchPaymentEntry',
      					data: {fDate: fdate ,todate: tdate, selectbranch: branch },
                        asynch: false,
    
                   success: function(data) {
	
                    
	                 
                   	for (var i = 0; i < data.length; i++) {
						



							const tableData = data.map(function(value){
                 return (
                		
                		 
                     `<tr>
            <td>${value.id}</td>
            <td>${value.selectbranch}</td>
            <td>${value.txndate}</td>
            <td>${value.selectype}</td>
            <td>${value.dtransfer}</td>
            <td>${value.selectledger}</td>
            <td>${value.amount}</td>
            <td>${value.narration}</td>
                          
                         
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