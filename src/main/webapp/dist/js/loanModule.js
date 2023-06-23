function getListOfLoanId() {
    const searchLoanId = document.getElementById("searchLoanId");
    $.ajax({
        type: "get",
        contentType: "application/json",
        url: 'getAllLoanId',
        asynch: false,
        success: function(data) {
            data.forEach(value => {
                const option = document.createElement('option')
                option.setAttribute('value', value.id);
                option.innerHTML = value.id
                searchLoanId.appendChild(option)
            })
        },
        error: function() {
            alert("Server not responsding");
        }
    });
}

function getByLoanId() {
    var searchLoanId = document.getElementById("searchLoanId");
    var input = {
        "id": searchLoanId.value
    }
    $.ajax({
        type: "post",
        contentType: "application/json",
        data: JSON.stringify(input),
        url: 'getByLoanAppId',
        asynch: false,
        success: function(data) {
            //alert(data.loanDate);
 			document.getElementById("loanDate").value = data.loanDate;
 			document.getElementById("loanName2").value = data.loanName;
 			document.getElementById("memberRelativesName").value = data.memberRelativesName;
 			document.getElementById("phoneno").value = data.phoneno;
 			
 			document.getElementById("loanName").value = data.loanName;
 			document.getElementById("planTerm").value = data.planTerm;
 			document.getElementById("loanMode").value = data.mode;
 			document.getElementById("loanAmount").value = data.loanAmount;
 			
 			document.getElementById("ROI").value = data.loanROI;
 			document.getElementById("roiType").value = data.roiType;
 			document.getElementById("emiAmount").value = data.emiAmount;
 			
 			
 			
 			
        },
        error: function() {
            alert("Server not responsding...");
        }
    });
}

function GetPlanNameInTheDropDown(){
	
	//alert("hi")
  			$.ajax({
            type:"get",
            contentType: "application/json",
            url: 'findPlanNameForLoanSearch',
            asynch: false,
            success: function(data) {

            var appenddata1 = "";
                    //var jsonData1 = JSON.parse(data1.d);
                    for (var i = 0; i < data.length; i++) {
                         appenddata1 += "<option value ='"+data[i].loanName +"'>" +data[i].loanName +"</option>";
                    }
                    $("#loanName").append(appenddata1);    
            } ,
    	    error: function(){
    	    	alert("Device control failed");
    	    }
        });
}

function searchLoanDataInTable() {
	
	var input = {
		 branchName : document.getElementById("branch_name").value,
		 fDate : document.getElementById("fDate").value,
		 tDate : document.getElementById("tDate").value,
		 memberName : document.getElementById("memberName").value,
		 id : document.getElementById("id").value,
		 searchMemberCode : document.getElementById("searchMemberCode").value,
		 loanName : document.getElementById("loanName").value,
		 advisorCode : document.getElementById("advisorCode").value,
	}
	
	let myJson =JSON.stringify(input);
	//alert(myJson)
	
	$.ajax({
		type: "POST",
		contentType: "application/json",
		data:myJson ,
		url: 'searchLoanDataInTable',
		asynch: false,
		success: function(data) {
			
			for (let i = 0; i < 1; i++) {
				//alert(data[i].branchName)
				var j=1;
				const tableData1 = data.map(function(value) {
					return (
						`<tr>
                         <td>${j++}</td> 
						 <td>${value.memberName}</td> 
					     <td>${value.dob}</td>   
					     <td>${value.age}</td>  
					     <td>${value.phone}</td>  
					     <td>${value.address}</td>  
					     <td>${value.loanName}</td>    
                         <td>${value.loanDate}</td>
                         <td>${value.loanDate}</td>
                         <td>${value.loanPurpose}</td>  		
                         </tr>`
					);
				}).join('');
				const tableBody1 = document.querySelector("#table");
				tableBody1.innerHTML = tableData1;
			}
		},
		error: function() {
			alert("Device control failed");
		}
	});
}

function SelectByLoanId(){
	
		$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getLoanById',
		asynch: false,
		success: function(data) {
			
			 var appenddata1 = "";
                    for (var i = 0; i < data.length; i++) {
						appenddata1 += "<option value ='"+data[i].id +"'>" +data[i].id + "</option>";
					}
                    $("#id").append(appenddata1);
		},
		error: function() {
			alert("Device control failed");
		}
	});
	
}

function LoanNOCTable(){
	var id = document.getElementById("id").value;
	
	$.ajax({
	 type:"get",
     contentType: "application/json",
     url: 'fetchloanNOC',
     data:{ id:id},
     asynch: false,
     success: function(data) {
	     for (let i = 0; i < data.length; i++)
	       {  
			 const tableData = data.map(function(value){
                 return ( 
                    `<tr>
                         <td>${value.id}</td>
				         <td>${value.loanPlanName}</td>
				         <td>${value.loanName}</td>
						 <td>${value.loanPurpose}</td>	
						 <td>${value.guarantorName}</td>
						 <td>${value.branchName}</td>	
						 <td>${value.phone}</td>
						 <td>${value.address}</td>
                     </tr>`
                 );
             })
             .join('');
        	 const tabelBody = document.querySelector("#loanNOC");
             loanNOC.innerHTML = tableData;
		} 
     } ,
	    error: function(){
	    	alert("Device control failed");
	    }
 }); 
}