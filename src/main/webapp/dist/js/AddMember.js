

function checkingTheFunction(id){
	
	var input = {
		"id":id
	}
	const myJson = JSON.stringify(input);	
alert(myJson)
	
	
	 $.ajax({
		 
	
		                type:"post",
                        contentType: "application/json",
                        url: 'addClientEdit',
      					data: myJson,
                        asynch: false,
    
                        success: function(data) {
                  
                   
                    for (var i = 0; i < data.length; i++) {
						document.getElementById("clientNo").value = data[i].clientNo;
						document.getElementById("registrationDate").value = data[i].registrationDate;
						document.getElementById("memberNamePrefix").value = data[i].memberNamePrefix;
						document.getElementById("memberName").value = data[i].memberName;
						
						document.getElementById("relativeName").value = data[i].relativeName;
						document.getElementById("relativeRelation").value = data[i].relativeRelation;
						alert(data[i].relativeRelation);
						document.getElementById("ContentPlaceHolder1_ddlGender").value = data[i].gender;
						document.getElementById("dob").value = data[i].dob;
						
						document.getElementById("ageId").value = data[i].age;
						document.getElementById("maritalStatus").value = data[i].maritalStatus;
						document.getElementById("ContentPlaceHolder1_txtAddress").value = data[i].address;
						document.getElementById("ContentPlaceHolder1_txtDistrict").value = data[i].district;
						document.getElementById("state").value = data[i].state;
	
	                    document.getElementById("branchName1").value = data[i].branchName;
						document.getElementById("loginID").value = data[i].loginID;
						document.getElementById("password").value = data[i].password;
						document.getElementById("memberIncome").value = data[i].memberIncome;
	
	                    document.getElementById("ContentPlaceHolder1_txtPin").value = data[i].pinCode;
						document.getElementById("ContentPlaceHolder1_txtAadharNo").value = data[i].aadharNo;
						document.getElementById("ContentPlaceHolder1_txtPAN").value = data[i].pan;
						document.getElementById("ContentPlaceHolder1_txtVoterNo").value = data[i].voterNo;
	
                        document.getElementById("ContentPlaceHolder1_txtPhoneno").value = data[i].phoneno;
						document.getElementById("ContentPlaceHolder1_txtEmailid").value = data[i].emailid;
						document.getElementById("ContentPlaceHolder1_txtOccupation").value = data[i].occupation;
						document.getElementById("ContentPlaceHolder1_txtEducation").value = data[i].education;
	                      
	                    document.getElementById("clientPurpose").value = data[i].clientPurpose;
						document.getElementById("passportNumber").value = data[i].passportNumber;
						document.getElementById("casteName").value = data[i].casteName;
						document.getElementById("religionName").value = data[i].religionName;
	
						 document.getElementById("categoryName").value = data[i].categoryName;
						document.getElementById("riskCategory").value = data[i].riskCategory;
						document.getElementById("nationality").value = data[i].nationality;
						
						
						document.getElementById("nomineeName").value = data[i].nomineeName;
						document.getElementById("nRelation").value = data[i].nRelation;
						document.getElementById("nomineeAddress").value = data[i].nomineeAddress;
						document.getElementById("nomineeKycNumber").value = data[i].nomineeKycNumber;
						
						document.getElementById("nomineeMobileNo").value = data[i].nomineeMobileNo;
						document.getElementById("nomineeAge").value = data[i].nomineeAge;
						document.getElementById("nomineePanNo").value = data[i].nomineePanNo;
						document.getElementById("nomineeKycType").value = data[i].nomineeKycType;
	
						document.getElementById("memberJoiningFess").value = data[i].memberJoiningFess;
						document.getElementById("shareAllotedfrm").value = data[i].shareAllotedfrm;
						document.getElementById("noOfShared").value = data[i].noOfShared;
						document.getElementById("enterShareAmount").value = data[i].enterShareAmount;
	
						document.getElementById("paymode").value = data[i].paymode;
						document.getElementById("remarks").value = data[i].remarks;
						document.getElementById("clientIDNo").value = data[i].id;
						
						var imgElement = document.getElementById("preview");
			      imgElement.src ="data:image/png;base64,"+data[i].image;
	}
                   	  
                } ,
           	    error: function(){
           	    	alert("Device control failed");
           	    }
	});

}

	


/*Add Member Ajax */
function AddMemberAjax(){

	
	$.ajax({
	
	 type:"get",
     contentType: "application/json",
     url: 'getAllClient',
     data:{ },
     asynch: false,
     success: function(data) {
	     for (let i = 0; i < data.length; i++)
	       {
		//						 addClientEdit?id=${value.id}
		
		
	        
			 const tableData = data.map(function(value){
                 return (
                		 
                    `<tr>
                         <td>${value.id}</td>
				         <td>${value.memberName}</td>
				         <td>${value.registrationDate}</td>
						 <td>${value.gender}</td>	
						 <td>${value.dob}</td>
						 <td>${value.branchName}</td>	
						 <td>${value.aadharNo}</td>
						 <td>${value.pan}</td>	
						 <td>${value.voterNo}</td>
						 <td>${value.phoneno}</td>	
						 <td>${value.emailid}</td>
						 <td onclick="checkingTheFunction(${value.id})" > <img src="dist/img/pen_paper_2-32.png"></a></td>

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

