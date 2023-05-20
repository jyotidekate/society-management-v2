function validateGoldLoanMaster() {
	var status = true;
	const loanName = document.getElementById("loanName");
	if (loanName.value === '') {
		var span = document.getElementById("loanNameMsg");
		span.textContent = "Loan Name cannot be empty.";
		span.style.display = "block";
		status = false;
	}
	const loanType = document.getElementById("loanType");
	if (loanType.value === '') {
		var span = document.getElementById("loanTypeMsg");
		span.textContent = "Loan Type  cannot be empty.";
		span.style.display = "block";
		status = false;
	}
	const emiCollection = document.getElementById("emiCollection");
	if (emiCollection.value === '') {
		var span = document.getElementById("emiCollectionMsg");
		span.style.display = "block";
		span.textContent = "Emi mode cannot be empty.";
		status = false;
	}
	const roiType = document.getElementById("roiType");
	if (roiType.value === '') {
		var span = document.getElementById("roiTypeMsg");
		span.style.display = "block";
		span.textContent = "ROI type cannot be empty.";
		status = false;
	}
	const emiType = document.getElementById("emiType");
	if (emiType.value === '') {
		var span = document.getElementById("emiTypeMsg");
		span.style.display = "block";
		span.textContent = "EMI type cannot be empty.";
		status = false;
	}
	const minAge = document.getElementById("minAge");
	if (minAge.value === '') {
		var span = document.getElementById("minAgeMsg");
		span.style.display = "block";
		span.textContent = "Min Age cannot be empty.";
		status = false;
	}
	const maxAge = document.getElementById("maxAge");
	if (maxAge.value === '') {
		var span = document.getElementById("maxAgeMsg");
		span.style.display = "block";
		span.textContent = "Max Age cannot be empty.";
		status = false;
	}
	const minAmount = document.getElementById("minAmount");
	if (minAmount.value === '') {
		var span = document.getElementById("minAmountMsg");
		span.style.display = "block";
		span.textContent = "Min Amount  cannot be empty.";
		status = false;
	}
	const maxAmount = document.getElementById("maxAmount");
	if (maxAmount.value === '') {
		var span = document.getElementById("maxAmountMsg");
		span.style.display = "block";
		span.textContent = "Max Amount  cannot be empty.";
		status = false;
	}
	const minTerm = document.getElementById("minTerm");
	if (minTerm.value === '') {
		var span = document.getElementById("minTermMsg");
		span.style.display = "block";
		span.textContent = "Min Term  cannot be empty.";
		status = false;
	}
	const maxTerm = document.getElementById("maxTerm");
	if (maxTerm.value === '') {
		var span = document.getElementById("maxTermMsg");
		span.style.display = "block";
		span.textContent = "Max Term  cannot be empty.";
		status = false;
	}
	const roi = document.getElementById("roi");
	if (roi.value === '') {
		var span = document.getElementById("roiMsg");
		span.style.display = "block";
		span.textContent = "ROI cannot be empty.";
		status = false;
	}
	const securityType = document.getElementById("securityType");
	if (securityType.value === '') {
		var span = document.getElementById("securityTypeMsg");
		span.style.display = "block";
		span.textContent = "Security cannot be empty.";
		status = false;
	}
	const processingFee = document.getElementById("processingFee");
	if (processingFee.value === '') {
		var span = document.getElementById("processingFeeMsg");
		span.style.display = "block";
		span.textContent = "Processing Fee cannot be empty.";
		status = false;
	}
	const legalAmt = document.getElementById("legalAmt");
	if (legalAmt.value === '') {
		var span = document.getElementById("legalAmtMsg");
		span.style.display = "block";
		span.textContent = "Legal Amt cannot be empty.";
		status = false;
	}
	const gst = document.getElementById("gst");
	if (gst.value === '') {
		var span = document.getElementById("gstMsg");
		span.textContent = "GST Amt cannot be empty.";
		span.style.display = "block";
		status = false;
	}
	const insuranceAmt = document.getElementById("insuranceAmt");
	if (insuranceAmt.value === '') {
		var span = document.getElementById("insuranceAmtMsg");
		span.textContent = "Insurance Amt Amt cannot be empty.";
		span.style.display = "block";
		status = false;
	}
	const valuerFees = document.getElementById("valuerFees");
	if (valuerFees.value === '') {
		var span = document.getElementById("valuerFeesMsg");
		span.textContent = "valuer Fees Amt Amt cannot be empty.";
		span.style.display = "block";
		status = false;
	}
	const gracePeriodDays = document.getElementById("gracePeriodDays");
	if (gracePeriodDays.value === '') {
		var span = document.getElementById("gracePeriodDaysMsg");
		span.textContent = "Grace Period Days Fees Amt cannot be empty.";
		span.style.display = "block";
		status = false;
	}
	const penaltyType = document.getElementById("penaltyType");
	if (penaltyType.value === '') {
		var span = document.getElementById("penaltyTypeMsg");
		span.textContent = "Penalty Type Amt cannot be empty.";
		span.style.display = "block";
		status = false;
	}
	const penalty = document.getElementById("penalty");
	if (penalty.value === '') {
		var span = document.getElementById("penaltyMsg");
		span.style.display = "block";
		span.textContent = "Penalty cannot be empty.";
		status = false;
	}
	if (status === true) {
		document.myForm.submit();
		return true;
	} else {
		return false;
	}

}

function getAllGoldLoan() {
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getAllGoldLoan',
		asynch: false,
		success: function(data) {
			//alert(data)
			for (let i = 0; i < 1; i++) {
				const tableData1 = data.map(function(value) {
					return (
						`<tr>
                           		 <td>${value.id}</td>
                                <td>${value.loanName}</td>
                                <td>${value.loanType}</td>
                                <td>${value.emiCollection}</td>
                            </tr>`
					);
				}).join('');
				const tableBody1 = document.querySelector("#ContentPlaceHolder1_gdvData");
				tableBody1.innerHTML = tableData1;
			}
		},
		error: function() {
			alert("Device control failed");
		}
	});
}

function goldLoanTodaysDate() {
	var status = true;
	const goldRateType = document.getElementById("goldRateType");
	const goldRate = document.getElementById("goldRate");
	const silverRate = document.getElementById("silverRate");
	if (goldRateType.value === '') {
		var span = document.getElementById("goldRateTypeMsg");
		span.style.display = "block";
		span.textContent = "Gold Rate Type cannot be empty.";
		status = false;
	}
	if (goldRate.value === '') {
		var span = document.getElementById("goldRateMsg");
		span.style.display = "block";
		span.textContent = "Gold Rate cannot be empty.";
		status = false;
	}
	if (silverRate.value === '') {
		var span = document.getElementById("silverRateMsg");
		span.style.display = "block";
		span.textContent = "Silver Rate cannot be empty.";
		status = false;
	}
	if (status === true) {
		document.myFormRateMaster.submit();
		return true;
	} else {
		return false;
	}

}

function validateItemMaster() {
	var status = true;
	const itemName = document.getElementById("itemName");
	const itemType = document.getElementById("itemType");
	if (itemName.value === '') {
		var span = document.getElementById("itemNameMsg");
		span.style.display = "block";
		span.textContent = "Item Name cannot be empty.";
		status = false;
	}
	if (itemType.value === '') {
		var span = document.getElementById("itemTypeMsg");
		span.style.display = "block";
		span.textContent = "Item Type cannot be empty.";
		status = false;
	}
	if (status === true) {
		document.myFormItemMaster.submit();
		return true;
	} else {
		return false;
	}
}



function validateLockerMaster() {
	var status = true;
	const lockerLocation = document.getElementById("lockerLocation");
	const lockerAddress = document.getElementById("lockerAddress");
	if (lockerLocation.value === '') {
		var span = document.getElementById("lockerLocationMsg");
		span.style.display = "block";
		span.textContent = "Locker Location cannot be empty.";
		status = false;
	}
	if (lockerAddress.value === '') {
		var span = document.getElementById("lockerAddressMsg");
		span.style.display = "block";
		span.textContent = "Locker Address cannot be empty.";
		status = false;
	}
	if (status === true) {
		document.myFormItemMaster.submit();
		return true;
	} else {
		return false;
	}
}


//getAllRates
function getAllRates() {
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getAllRates',
		asynch: false,
		success: function(data) {
			//alert(data)
			for (let i = 0; i < 1; i++) {
				const tableData2 = data.map(function(value) {
					return (
						`<tr>
                           		
                                <td>${value.goldRateType}</td>
                                <td>${value.goldRate}</td>
                                <td>${value.silverRate}</td>
                            </tr>`
					);
				}).join('');
				const tableBody2 = document.querySelector("#ContentPlaceHolder1_gdvGoldRate");
				tableBody2.innerHTML = tableData2;
			}
		},
		error: function() {
			alert("Device control failed");
		}
	});
}


//getAllItemMaster
function getAllItemMaster() {
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getAllItemMaster',
		asynch: false,
		success: function(data) {
			//alert(data)
			for (let i = 0; i < 1; i++) {
				const tableData2 = data.map(function(value) {
					return (
						`<tr>
                           		
                                <td>${value.id}</td>
                                <td>${value.itemType}</td>
                                <td>${value.itemName}</td>
                            </tr>`
					);
				}).join('');
				const tableBody2 = document.querySelector("#ContentPlaceHolder1_gdvItem");
				tableBody2.innerHTML = tableData2;
			}
		},
		error: function() {
			alert("Device control failed");
		}
	});
}


//getAllLockerMaster
function getAllLockerMaster() {
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getAllLockerMaster',
		asynch: false,
		success: function(data) {
			//alert(data)
			for (let i = 0; i < 1; i++) {
				const tableData3 = data.map(function(value) {
					return (
						`<tr>
                                <td>${value.id}</td>
                                <td>${value.lockerLocation}</td>
                                <td>${value.lockerAddress}</td>
                            </tr>`
					);
				}).join('');
				const tableBody3 = document.querySelector("#ContentPlaceHolder1_gdvLocker");
				tableBody3.innerHTML = tableData3;
			}
		},
		error: function() {
			alert("Device control failed");
		}
	});
}

function validatePurityMaster() {
	var status = true;
	const purityName = document.getElementById("purityName");
	const purityType = document.getElementById("purityType");
	const maxLoanPerGram = document.getElementById("maxLoanPerGram");
	if (purityName.value === '') {
		var span = document.getElementById("purityNameMsg");
		span.style.display = "block";
		span.textContent = "Purity Name cannot be empty.";
		status = false;
	}
	if (purityType.value === '') {
		var span = document.getElementById("purityTypeMsg");
		span.style.display = "block";
		span.textContent = "Purity Type cannot be empty.";
		status = false;
	}
	if (maxLoanPerGram.value === '') {
		var span = document.getElementById("maxLoanPerGramMsg");
		span.style.display = "block";
		span.textContent = "Purity % cannot be empty.";
		status = false;
	}
	if (status === true) {
		document.myFormPurityMaster.submit();
		return true;
	} else {
		return false;
	}
}


//getAllLockerMaster
function getAllPurityMaster() {
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getAllPurityMaster',
		asynch: false,
		success: function(data) {
			//alert(data)
			for (let i = 0; i < 1; i++) {
				const tableData3 = data.map(function(value) {
					return (
						`<tr>
                                <td>${value.id}</td>
                                <td>${value.purityName}</td>
                                <td>${value.purityType}</td>
                            </tr>`
					);
				}).join('');
				const tableBody3 = document.querySelector("#ContentPlaceHolder1_gdvPurity");
				tableBody3.innerHTML = tableData3;
			}
		},
		error: function() {
			alert("Device control failed");
		}
	});
}

function validateGoldLoanApplciation() {
	var status = true;
	const loanDate = document.getElementById("loanDate");
	if (loanDate.value === '') {
		var span = document.getElementById("loanDateMsg");
		span.style.display = "block";
		span.textContent = "loan Date cannot be empty.";
		status = false;
	}

	const searchMemberCode = document.getElementById("searchMemberCode");
	if (searchMemberCode.value === '') {
		var span = document.getElementById("searchMemberCodeMsg");
		span.style.display = "block";
		span.textContent = "search Member Code cannot be empty.";
		status = false;
	}

	/*const relativeDetails = document.getElementById("relativeDetails");
	if (relativeDetails.value === '') {
		var span = document.getElementById("relativeDetailsMsg");
		span.style.display = "block";
		span.textContent = "relative Details cannot be empty.";
		//status = false;
	}*/

	/*const dob = document.getElementById("dob");
	if (dob.value === '') {
		var span = document.getElementById("dobMsg");
		span.style.display = "block";
		span.textContent = "dob cannot be empty.";
		//status = false;
	}

	const age = document.getElementById("age");
	if (age.value === '') {
		var span = document.getElementById("ageMsg");
		span.style.display = "block";
		span.textContent = "age cannot be empty.";
		//status = false;
	}

	const phoneno = document.getElementById("phoneno");
	if (phoneno.value === '') {
		var span = document.getElementById("phonenoMsg");
		span.style.display = "block";
		span.textContent = "phone no cannot be empty.";
		//status = false;
	}

	const smsStatus = document.getElementById("smsStatus");
	if (smsStatus.value === '') {
		var span = document.getElementById("smsStatusMsg");
		span.style.display = "block";
		span.textContent = "sms Status cannot be empty.";
		//status = false;
	}


	const address = document.getElementById("address");
	if (address.value === '') {
		var span = document.getElementById("addressMsg");
		span.style.display = "block";
		span.textContent = "address cannot be empty.";
		//status = false;
	}

	const pin = document.getElementById("pin");
	if (pin.value === '') {
		var span = document.getElementById("pinMsg");
		span.style.display = "block";
		span.textContent = "relative Details cannot be empty.";
		//status = false;
	}*/

	const cspName = document.getElementById("cspName");
	if (cspName.value === '') {
		var span = document.getElementById("cspNameMsg");
		span.style.display = "block";
		span.textContent = "csp Name cannot be empty.";
		status = false;
	}

	const loanPlanName = document.getElementById("loanPlanName");
	if (loanPlanName.value === '') {
		var span = document.getElementById("loanPlanNameMsg");
		span.style.display = "block";
		span.textContent = "loan Plan Name cannot be empty.";
		status = false;
	}

	/*const loanType = document.getElementById("loanType");
	if (loanType.value === '') {
		var span = document.getElementById("loanTypeMsg");
		span.style.display = "block";
		span.textContent = "loan Type cannot be empty.";
		//status = false;
	}

	const planTerm = document.getElementById("planTerm");
	if (planTerm.value === '') {
		var span = document.getElementById("planTermMsg");
		span.style.display = "block";
		span.textContent = "relative Details cannot be empty.";
		//status = false;
	}

	const mode = document.getElementById("mode");
	if (mode.value === '') {
		var span = document.getElementById("modeMsg");
		span.style.display = "block";
		span.textContent = "mode cannot be empty.";
		//status = false;
	}

	const loanROI = document.getElementById("loanROI");
	if (loanROI.value === '') {
		var span = document.getElementById("loanROIMsg");
		span.style.display = "block";
		span.textContent = "loan ROI cannot be empty.";
		//status = false;
	}*/

	const loanAmount = document.getElementById("loanAmount");
	if (loanAmount.value === '') {
		var span = document.getElementById("loanAmountMsg");
		span.style.display = "block";
		span.textContent = "loan Amount cannot be empty.";
		status = false;
	}

	/*const ROIType = document.getElementById("ROIType");
	if (ROIType.value === '') {
		var span = document.getElementById("ROITypeMsg");
		span.style.display = "block";
		span.textContent = "ROI Type cannot be empty.";
		//status = false;
	}

	const emiAmount = document.getElementById("emiAmount");
	if (emiAmount.value === '') {
		var span = document.getElementById("emiAmountMsg");
		span.style.display = "block";
		span.textContent = "emi Amount cannot be empty.";
		//status = false;
	}
*/
	const loanPurpose = document.getElementById("loanPurpose");
	if (loanPurpose.value === '') {
		var span = document.getElementById("loanPurposeMsg");
		span.style.display = "block";
		span.textContent = "loan Purpose cannot be empty.";
		status = false;
	}

	const goldRateType = document.getElementById("goldRateType");
	if (goldRateType.value === '') {
		var span = document.getElementById("goldRateTypeMsg");
		span.style.display = "block";
		span.textContent = "gold Rate Type cannot be empty.";
		status = false;
	}

	const itemType = document.getElementById("itemType");
	if (itemType.value === '') {
		var span = document.getElementById("itemTypeMsg");
		span.style.display = "block";
		span.textContent = "item Type cannot be empty.";
		status = false;
	}

	const todayRate = document.getElementById("todayRate");
	if (todayRate.value === '') {
		var span = document.getElementById("todayRateMsg");
		span.style.display = "block";
		span.textContent = "today Rate cannot be empty.";
		status = false;
	}

	const itemName = document.getElementById("itemName");
	if (itemName.value === '') {
		var span = document.getElementById("itemNameMsg");
		span.style.display = "block";
		span.textContent = "item Name cannot be empty.";
		status = false;
	}

	const lockerLoc = document.getElementById("lockerLoc");
	if (lockerLoc.value === '') {
		var span = document.getElementById("lockerLocMsg");
		span.style.display = "block";
		span.textContent = "locker Loc cannot be empty.";
		status = false;
	}

	const purity = document.getElementById("purity");
	if (purity.value === '') {
		var span = document.getElementById("purityMsg");
		span.style.display = "block";
		span.textContent = "purity cannot be empty.";
		status = false;
	}
/*
	const itemQty = document.getElementById("itemQty");
	if (itemQty.value === '') {
		var span = document.getElementById("itemQtyMsg");
		span.style.display = "block";
		span.textContent = "item Qty cannot be empty.";
		//status = false;
	}


	const grossWt = document.getElementById("grossWt");
	if (grossWt.value === '') {
		var span = document.getElementById("grossWtMsg");
		span.style.display = "block";
		span.textContent = "gross Wt cannot be empty.";
		//status = false;
	}

	const gwt = document.getElementById("gwt");
	if (gwt.value === '') {
		var span = document.getElementById("gwtMsg");
		span.style.display = "block";
		span.textContent = "gwt cannot be empty.";
		//status = false;
	}

	const stonewt = document.getElementById("stonewt");
	if (stonewt.value === '') {
		var span = document.getElementById("stonewtMsg");
		span.style.display = "block";
		span.textContent = "stone wt cannot be empty.";
		//status = false;
	}

	const netWt = document.getElementById("netWt");
	if (netWt.value === '') {
		var span = document.getElementById("netWtMsg");
		span.style.display = "block";
		span.textContent = "net Wt cannot be empty.";
		//status = false;
	}*/

	/*const itemRate = document.getElementById("itemRate");
	if (itemRate.value === '') {
		var span = document.getElementById("itemRateMsg");
		span.style.display = "block";
		span.textContent = "item Rate cannot be empty.";
		status = false;
	}*/

	/*const eligibleLoan = document.getElementById("eligibleLoan");
	if (eligibleLoan.value === '') {
		var span = document.getElementById("eligibleLoanMsg");
		span.style.display = "block";
		span.textContent = "eligible Loan cannot be empty.";
		//status = false;
	}

	const netQty = document.getElementById("netQty");
	if (netQty.value === '') {
		var span = document.getElementById("netQtyMsg");
		span.style.display = "block";
		span.textContent = "net Qty cannot be empty.";
		//status = false;
	}

	const totalGrossWt = document.getElementById("totalGrossWt");
	if (totalGrossWt.value === '') {
		var span = document.getElementById("totalGrossWtMsg");
		span.style.display = "block";
		span.textContent = "total Gross Wt cannot be empty.";
		//status = false;
	}

	const totalNetWt = document.getElementById("totalNetWt");
	if (totalNetWt.value === '') {
		var span = document.getElementById("totalNetWtMsg");
		span.style.display = "block";
		span.textContent = "total Net Wt cannot be empty.";
		//status = false;
	}

	const totalEligibleAmt = document.getElementById("totalEligibleAmt");
	if (totalEligibleAmt.value === '') {
		var span = document.getElementById("totalEligibleAmtMsg");
		span.style.display = "block";
		span.textContent = "total Eligible Amt cannot be empty.";
		//status = false;
	}

	const goldItem = document.getElementById("goldItem");
	if (goldItem.value === '') {
		var span = document.getElementById("rgoldItemMsg");
		span.style.display = "block";
		span.textContent = "gold Item cannot be empty.";
		//status = false;
	}
*/
	const guarantorCode = document.getElementById("guarantorCode");
	if (guarantorCode.value === '') {
		var span = document.getElementById("guarantorCodeMsg");
		span.style.display = "block";
		span.textContent = "guarantor Code cannot be empty.";
		status = false;
	}

	/*const guarantorName = document.getElementById("guarantorName");
	if (guarantorName.value === '') {
		var span = document.getElementById("guarantorNameMsg");
		span.style.display = "block";
		span.textContent = " guarantor Name cannot be empty.";
		//status = false;
	}

	const addressGuarantor = document.getElementById("addressGuarantor");
	if (addressGuarantor.value === '') {
		var span = document.getElementById("addressGuarantorMsg");
		span.style.display = "block";
		span.textContent = "address Guarantor cannot be empty.";
		//status = false;
	}*/

	/*const pincodeGuarantor = document.getElementById("pincodeGuarantor");
	if (pincodeGuarantor.value === '') {
		var span = document.getElementById("pincodeGuarantorMsg");
		span.style.display = "block";
		span.textContent = "pin code Guarantor cannot be empty.";
		status = false;
	}*/

	/*const phone = document.getElementById("phone");
	if (phone.value === '') {
		var span = document.getElementById("phoneMsg");
		span.style.display = "block";
		span.textContent = "phone cannot be empty.";
		//status = false;
	}

	const securityType = document.getElementById("securityType");
	if (securityType.value === '') {
		var span = document.getElementById("securityTypeMsg");
		span.style.display = "block";
		span.textContent = "security Type cannot be empty.";
		//status = false;
	}*/

	const coApplicantCode = document.getElementById("coApplicantCode");
	if (coApplicantCode.value === '') {
		var span = document.getElementById("coApplicantCodeMsg");
		span.style.display = "block";
		span.textContent = "co Applicant Code cannot be empty.";
		status = false;
	}

	/*const memberRelativesName = document.getElementById("memberRelativesName");
	if (memberRelativesName.value === '') {
		var span = document.getElementById("memberRelativesNameMsg");
		span.style.display = "block";
		span.textContent = "member Relatives Name cannot be empty.";
		//status = false;
	}

	const addressco = document.getElementById("addressco");
	if (addressco.value === '') {
		var span = document.getElementById("addresscoMsg");
		span.style.display = "block";
		span.textContent = "address co cannot be empty.";
		//status = false;
	}

	const pincodeco = document.getElementById("pincodeco");
	if (pincodeco.value === '') {
		var span = document.getElementById("pincodecoMsg");
		span.style.display = "block";
		span.textContent = "pin code co cannot be empty.";
		//status = false;
	}

	const phoneco = document.getElementById("phoneco");
	if (phoneco.value === '') {
		var span = document.getElementById("phonecoMsg");
		span.style.display = "block";
		span.textContent = "phone co cannot be empty.";
		//status = false;
	}*/

	const securityDetails = document.getElementById("securityDetails");
	if (securityDetails.value === '') {
		var span = document.getElementById("securityDetailsMsg");
		span.style.display = "block";
		span.textContent = "security Details cannot be empty.";
		status = false;
	}

	/*const processingFee = document.getElementById("processingFee");
	if (processingFee.value === '') {
		var span = document.getElementById("processingFeeMsg");
		span.style.display = "block";
		span.textContent = "processing Fee cannot be empty.";
		//status = false;
	}

	const legalAmt = document.getElementById("legalAmt");
	if (legalAmt.value === '') {
		var span = document.getElementById("legalAmtMsg");
		span.style.display = "block";
		span.textContent = "legal Amt cannot be empty.";
		//status = false;
	}
*/
	const advisorCode = document.getElementById("advisorCode");
	if (advisorCode.value === '') {
		var span = document.getElementById("advisorCodeMsg");
		span.style.display = "block";
		span.textContent = "advisor Code cannot be empty.";
		status = false;
	}

	/*const gst = document.getElementById("gst");
	if (gst.value === '') {
		var span = document.getElementById("gstMsg");
		span.style.display = "block";
		span.textContent = "gst cannot be empty.";
		//status = false;
	}

	const insuranceAmt = document.getElementById("insuranceAmt");
	if (insuranceAmt.value === '') {
		var span = document.getElementById("insuranceAmtMsg");
		span.style.display = "block";
		span.textContent = "insurance Amt cannot be empty.";
		//status = false;
	}*/

	const vFeesAmt = document.getElementById("vFeesAmt");
	if (vFeesAmt.value === '') {
		var span = document.getElementById("vFeesAmtMsg");
		span.style.display = "block";
		span.textContent = "vFees Amt cannot be empty.";
		status = false;
	}

	/*const advisorName = document.getElementById("advisorName");
	if (advisorName.value === '') {
		var span = document.getElementById("advisorNameMsg");
		span.style.display = "block";
		span.textContent = "advisor Name cannot be empty.";
		//status = false;
	}*/
	if (status === true) {
		document.myFormGoldLoanApplication.submit();
		return true;
	} else {
		return false;
	}
}


function getAllLoanPlanName(){
	const select = document.getElementById("loanPlanName");
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getAllLoan',
		asynch: false,
		success: function(data) {
			data.forEach(value => {
            	//alert(value.name)
     			const option = document.createElement('option')
     			option.setAttribute('value', value.id);
     			option.innerHTML = value.loanName;
     			select.appendChild(option)
   			})
		},
		error: function() {
			alert("Device control failed");
		}
	});
}


function getAllItemMasterName(){
	const select = document.getElementById("itemName");
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getAllItemMaster',
		asynch: false,
		success: function(data) {
			data.forEach(value => {
            	//alert(value.name)
     			const option = document.createElement('option')
     			option.setAttribute('value', value.id);
     			option.innerHTML = value.itemName;
     			select.appendChild(option)
   			})
		},
		error: function() {
			alert("Device control failed");
		}
	});
}

function getAllILockerName(){
	const select = document.getElementById("lockerLoc");
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getAllLockerMaster',
		asynch: false,
		success: function(data) {
			data.forEach(value => {
            	//alert(value.name)
     			const option = document.createElement('option')
     			option.setAttribute('value', value.id);
     			option.innerHTML = value.lockerLocation;
     			select.appendChild(option)
   			})
		},
		error: function() {
			alert("Device control failed");
		}
	});
}

//getAllPurityMaster
function getAllPurityMasterName(){
	const select = document.getElementById("purity");
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getAllPurityMaster',
		asynch: false,
		success: function(data) {
			data.forEach(value => {
            	//alert(value.name)
     			const option = document.createElement('option')
     			option.setAttribute('value', value.id);
     			option.innerHTML = value.purityName;
     			select.appendChild(option)
   			})
		},
		error: function() {
			alert("Device control failed");
		}
	});
}


//get all member data
function fetchAllMember(){
	   const searchMemberCode = document.getElementById("searchMemberCode");
    	$.ajax({
            type:"get",
            contentType: "application/json",
            url: 'getAllMember',
            asynch: false,
            success: function(data) {
            	data.forEach(value => {
            	//alert(value.name)
     			const option = document.createElement('option')
     			option.setAttribute('value', value.id);
     			option.innerHTML = value.memberName
     			searchMemberCode.appendChild(option)
   			})
                
            } ,
    	    error: function(){
    	    	alert("Device control failed");
    	    }
        });
}

// SELECT MEMBER NAME AND DISPLAY MEMBER DETAILS
function displayMemberDetails(){
	var id = document.getElementById("searchMemberCode");
		var input = {
                     "id": id.value
             }
        $.ajax({
                 type:"post",
                 contentType: "application/json",
                 data: JSON.stringify(input),
                 url: 'getMemberDeailsById',
                 asynch: false,
                 success: function(data) {
			  		document.getElementById("relativeDetails").value = data.relativeName;
			  		document.getElementById("dob").value = data.dob;
			  		document.getElementById("age").value = data.age;
			  		document.getElementById("phoneno").value = data.phoneno;
			  		document.getElementById("smsStatus").value = data.chkisSms;
			  		document.getElementById("address").value = data.address;
					document.getElementById("pin").value = data.pinCode;
			  		document.getElementById("pin").value = data.pinCode;			  		
                 } ,
         	    error: function(){
         	    	alert("Device control failed");
         	    }
             });
}

// SELECT MEMBER NAME AND DISPLAY MEMBER DETAILS
function displayLoanMasterDetails(){
	var id = document.getElementById("loanPlanName");
		var input = {
                     "id": id.value
             }
        $.ajax({
                 type:"post",
                 contentType: "application/json",
                 data: JSON.stringify(input),
                 url: 'getLoanMasterDeailsById',
                 asynch: false,
                 success: function(data) {
			  		document.getElementById("loanType").value = data.loanType;
			  		document.getElementById("mode").value = data.emiType;
			  		document.getElementById("loanROI").value = data.roi;
			  		document.getElementById("ROIType").value = data.roiType;
			  		document.getElementById("emiAmount").value = data.minAmount;
			  				  		
                 } ,
         	    error: function(){
         	    	alert("Device control failed");
         	    }
             });
}

function getAllLoanId(){
	const select = document.getElementById("searchLoanID");
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getAllLoan',
		asynch: false,
		success: function(data) {
			data.forEach(value => {
            	//alert(value.name)
     			const option = document.createElement('option')
     			option.setAttribute('value', value.id);
     			option.innerHTML = value.id;
     			select.appendChild(option)
   			})
		},
		error: function() {
			alert("Device control failed");
		}
	});
}

function getAllLoans(){
	const select = document.getElementById("searchLoanIDLoan");
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getAllLoans',
		asynch: false,
		success: function(data) {
			data.forEach(value => {
            	//alert(value.name)
     			const option = document.createElement('option')
     			option.setAttribute('value', value.id);
     			option.innerHTML = value.id;
     			select.appendChild(option)
   			})
		},
		error: function() {
			alert("Device control failed");
		}
	});
}

function displayLoanDetailsSelectedId(){
	var id = document.getElementById("searchLoanIDLoan");
		var input = {
                     "id": id.value
             }
        $.ajax({
                 type:"post",
                 contentType: "application/json",
                 data: JSON.stringify(input),
                 url: 'displayLoanDetailsSelectedId',
                 asynch: false,
                 success: function(data) {
			  		document.getElementById("loanDate").value = data.loanDate;
			  		document.getElementById("searchMemberCode").value = data.searchMemberCode;
			  		document.getElementById("relativeDetails").value = data.relativeDetails;
			  		document.getElementById("phoneno").value = data.phoneno;
			  		document.getElementById("loanPlanName").value = data.loanPlanName;
			  		document.getElementById("planTerm").value = data.planTerm;
			  		document.getElementById("mode").value = data.mode;
			  		document.getElementById("loanAmount").value = data.loanAmount;
			  		document.getElementById("loanROI").value = data.loanROI;
			  		document.getElementById("ROIType").value = data.ROIType;
			  		document.getElementById("emiAmount").value = data.emiAmount;
			  		document.getElementById("id").value = data.id;
			  		document.getElementById("cspName").value = data.cspName;

			  	
			  		
			  		
			  				  		
                 } ,
         	    error: function(){
         	    	alert("Device control failed");
         	    }
             });
}

function popUp(){
    var popup = document.createElement('div');
    popup.className = 'popup';
    popup.id = 'test';
    var cancel = document.createElement('div');
    cancel.className = 'cancel';
    cancel.innerHTML = 'close';
    cancel.onclick = function (e) { popup.parentNode.removeChild(popup) };
    var message = document.createElement('span');
    message.innerHTML = "No Record Found";
    popup.appendChild(message);                                    
    popup.appendChild(cancel);
    document.body.appendChild(popup);
}


