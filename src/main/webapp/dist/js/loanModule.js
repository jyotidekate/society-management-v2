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