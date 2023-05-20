function validateGroupMaster() {
	var status = true;
	const groupName = document.getElementById("groupName");
	if (groupName.value === '') {
		var span = document.getElementById("groupNameMsg");
		span.textContent = "Group Name cannot be empty.";
		span.style.display = "block";
		status = false;
	}

	const opDate = document.getElementById("opDate");
	if (opDate.value === '') {
		var span = document.getElementById("opDateMsg");
		span.textContent = "op Date cannot be empty.";
		span.style.display = "block";
		status = false;
	}

	const csp = document.getElementById("csp");
	if (csp.value === '') {
		var span = document.getElementById("cspeMsg");
		span.textContent = "Branch cannot be empty.";
		span.style.display = "block";
		status = false;
	}

	const grLeaderName = document.getElementById("grLeaderName");
	if (grLeaderName.value === '') {
		var span = document.getElementById("grLeaderNameMsg");
		span.textContent = "Group Leader Name cannot be empty.";
		span.style.display = "block";
		status = false;
	}

	const mobile = document.getElementById("mobile");
	if (mobile.value === '') {
		var span = document.getElementById("mobileMsg");
		span.textContent = "Mobile cannot be empty.";
		span.style.display = "block";
		status = false;
	}

	const grAddr = document.getElementById("grAddr");
	if (grAddr.value === '') {
		var span = document.getElementById("grAddrMsg");
		span.textContent = "Group Address cannot be empty.";
		span.style.display = "block";
		status = false;
	}

	const employee = document.getElementById("employee");
	if (employee.value === '') {
		var span = document.getElementById("employeeMsg");
		span.textContent = "Assign Employee cannot be empty.";
		span.style.display = "block";
		status = false;
	}

	const cDay = document.getElementById("cDay");
	if (cDay.value === '') {
		var span = document.getElementById("cDayMsg");
		span.textContent = "Collection Day cannot be empty.";
		span.style.display = "block";
		status = false;
	}

	const cTime = document.getElementById("cTime");
	if (cTime.value === '') {
		var span = document.getElementById("cTimeMsg");
		span.textContent = "Collection Time cannot be empty.";
		span.style.display = "block";
		status = false;
	}

	if (status === true) {
		document.myFormGroupMaster.submit();
		return true;
	} else {
		return false;
	}
}


function getAllGroupMaster() {
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getAllGroupMaster',
		asynch: false,
		success: function(data) {
			//alert(data)
			for (let i = 0; i < 1; i++) {
				const tableData1 = data.map(function(value) {
					return (
						`<tr>
                           		 <td>${value.id}</td>
                                <td>${value.groupName}</td>
                                <td>${value.opDate}</td>
                                <td>${value.csp}</td>
                                <td>${value.grLeaderName}</td>
                            </tr>`
					);
				}).join('');
				const tableBody1 = document.querySelector("#ContentPlaceHolder1_gdvDataR");
				tableBody1.innerHTML = tableData1;
			}
		},
		error: function() {
			alert("Device control failed");
		}
	});
}


function getAllGroupLoan1() {
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getAllGroupLoan',
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
				const tableBody1 = document.querySelector("#ContentPlaceHolder1_gdvDataGr");
				tableBody1.innerHTML = tableData1;
			}
		},
		error: function() {
			alert("Device control failed");
		}
	});
}

function getAllGroupLoanApplication() {
	const select = document.getElementById("searchGroupID");
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getAllGroupLoan',
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

function displayGroupLoanApplicationDetails() {
	var id = document.getElementById("searchGroupID");
	var input = {
		"id": id.value
	}
	$.ajax({
		type: "post",
		contentType: "application/json",
		data: JSON.stringify(input),
		url: 'getGroupMasterById',
		asynch: false,
		success: function(data) {
			document.getElementById("groupName").value = data.groupName;
			document.getElementById("leaderName").value = data.grLeaderName;
			document.getElementById("mobile").value = data.mobile;
			document.getElementById("grAddr").value = data.grAddr;
			document.getElementById("employee").value = data.employee;
			document.getElementById("cDay").value = data.cDay;
			document.getElementById("cTime").value = data.cTime;


		},
		error: function() {
			alert("Device control failed");
		}
	});
}

function validateGroupLoanApplication() {
	var status = true;
	const groupName = document.getElementById("groupName");
	if (groupName.value === '') {
		var span = document.getElementById("groupNameMsg");
		span.textContent = "Group Name cannot be empty.";
		span.style.display = "block";
		status = false;
	}
	const leaderName = document.getElementById("leaderName");
	if (leaderName.value === '') {
		var span = document.getElementById("leaderNameMsg");
		span.textContent = "Group Leader Name cannot be empty.";
		span.style.display = "block";
		status = false;
	}
	const mobile = document.getElementById("mobile");
	if (mobile.value === '') {
		var span = document.getElementById("mobileMsg");
		span.textContent = "Mobile No cannot be empty.";
		span.style.display = "block";
		status = false;
	}
	const grAddr = document.getElementById("grAddr");
	if (grAddr.value === '') {
		var span = document.getElementById("grAddrMsg");
		span.textContent = "Group Address cannot be empty.";
		span.style.display = "block";
		status = false;
	}
	const employee = document.getElementById("employee");
	if (employee.value === '') {
		var span = document.getElementById("employeeMsg");
		span.textContent = "Assign Employee cannot be empty.";
		span.style.display = "block";
		status = false;
	}
	const cDay = document.getElementById("cDay");
	if (cDay.value === '') {
		var span = document.getElementById("cDayMsg");
		span.textContent = "Collection Day cannot be empty.";
		span.style.display = "block";
		status = false;
	}
	const cTime = document.getElementById("cTime");
	if (cTime.value === '') {
		var span = document.getElementById("cTimeMsg");
		span.textContent = "Collection Time cannot be empty.";
		span.style.display = "block";
		status = false;
	}
	if (status === true) {
		document.form1.submit();
		return true;
	} else {
		return false;
	}
}