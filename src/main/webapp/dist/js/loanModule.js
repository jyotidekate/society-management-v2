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
        url: 'getByLoanId',
        asynch: false,
        success: function(data) {
            //alert(data.loanDate);
 			document.getElementById("loanDate").value = data.loanDate;
 			
 			document.getElementById("searchMemberCode").value = data.searchMemberCode;
 			
 			document.getElementById("relativeDetails").value = data.relativeDetails;
 			
 			document.getElementById("DOB").value = data.DOB;
 			
 			document.getElementById("age").value = data.age;
 			
 			document.getElementById("phoneno").value = data.phoneno;
 			
 			document.getElementById("smsStatus").value = data.smsStatus;
 			
 			document.getElementById("address").value = data.address;
 			
 			document.getElementById("pin").value = data.pin;
 			
 			document.getElementById("cspName").value = data.cspName;
 			
 			document.getElementById("loanName").value = data.loanName;
 			
 			document.getElementById("planTerm").value = data.planTerm;
 			
 			document.getElementById("mode").value = data.mode;
 			
 			document.getElementById("loanAmount").value = data.loanAmount;
 			
 			document.getElementById("roiType").value = data.roiType;
 			
 			document.getElementById("emiAmount").value = data.emiAmount;
 			
 			document.getElementById("loanPurpose").value = data.loanPurpose;
 			
 			document.getElementById("guarantorCode").value = data.guarantorCode;
 			
 			document.getElementById("guarantorName").value = data.guarantorName;
 			
 			document.getElementById("addressGuarantor").value = data.addressGuarantor;
 			
 			document.getElementById("pincodeGuarantor").value = data.pincodeGuarantor;
 			
 			document.getElementById("guarantorphone").value = data.guarantorphone;
 			
 			document.getElementById("securityType").value = data.securityType;
 			
 			document.getElementById("coApplicantCode").value = data.coApplicantCode;
 			
 			document.getElementById("memberRelativesName").value = data.memberRelativesName;
 			
 			document.getElementById("addressco").value = data.addressco;
 			
 			document.getElementById("pincodeco").value = data.pincodeco;
 			
 			document.getElementById("phoneco").value = data.phoneco;
 			
 			document.getElementById("securityDetails").value = data.securityDetails;
 			
 			document.getElementById("processingFee").value = data.processingFee;
 			
 			document.getElementById("legalAmt").value = data.legalAmt;
 			
 			document.getElementById("advisorCode").value = data.advisorCode;
 			
 			document.getElementById("GST").value = data.GST;
 			
 			document.getElementById("insuranceAmt").value = data.insuranceAmt;
 			
 			document.getElementById("advisorName").value = data.advisorName;
 			
 			document.getElementById("approvalDate").value = data.approvalDate;
 			
 			document.getElementById("approvalStatus").value = data.approvalStatus;
 			
        },
        error: function() {
            alert("Server not responsding...");
        }
    });
}