function validateGoldLoanMaster() {
	var status = true;
	const designationName = document.getElementById("designation");
	if (designationName.value === '') {
		var span = document.getElementById("designationNameMsg");
		span.textContent = "Designation Name cannot be empty.";
		span.style.display = "block";
		status = false;
	}
	if (status === true) {
		document.saveDesignametionMaster.submit();
		return true;
	} else {
		return false;
	}

}

function validateDepartmentMaster() {
	var status = true;
	const department = document.getElementById("department");
	if (department.value === '') {
		var span = document.getElementById("departmentMsg");
		span.textContent = "Department Name cannot be empty.";
		span.style.display = "block";
		status = false;
	}
	if (status === true) {
		document.saveDepartmentMasterData.submit();
		return true;
	} else {
		return false;
	}

}


function validateEmployeeMaster() {
	var status = true;
	const empType = document.getElementById("empType");
	if (empType.value === '') {
		var span = document.getElementById("empTypeMsg");
		span.textContent = "Emp Type cannot be empty.";
		span.style.display = "block";
		status = false;
	}
	const DOJ = document.getElementById("DOJ");
	if (DOJ.value === '') {
		var span = document.getElementById("DOJMsg");
		span.textContent = "Joining Date cannot be empty.";
		span.style.display = "block";
		status = false;
	}
	const cspName = document.getElementById("cspName");
	if (cspName.value === '') {
		var span = document.getElementById("cspNameMsg");
		span.textContent = "Branch Name cannot be empty.";
		span.style.display = "block";
		status = false;
	}
	const memberName = document.getElementById("memberName");
	if (memberName.value === '') {
		var span = document.getElementById("memberNameMsg");
		span.textContent = "Employee Name cannot be empty.";
		span.style.display = "block";
		status = false;
	}
	const DOB = document.getElementById("DOB");
	if (DOB.value === '') {
		var span = document.getElementById("DOBMsg");
		span.textContent = "DOB cannot be empty.";
		span.style.display = "block";
		status = false;
	}
	const phoneNo = document.getElementById("phoneNo");
	if (phoneNo.value === '') {
		var span = document.getElementById("phoneNoMsg");
		span.textContent = "Mobile No cannot be empty.";
		span.style.display = "block";
		status = false;
	}
	const address = document.getElementById("address");
	if (address.value === '') {
		var span = document.getElementById("addressMsg");
		span.textContent = "Address cannot be empty.";
		span.style.display = "block";
		status = false;
	}
	const pan = document.getElementById("pan");
	if (pan.value === '') {
		var span = document.getElementById("panMsg");
		span.textContent = "PAN cannot be empty.";
		span.style.display = "block";
		status = false;
	}
	const designation = document.getElementById("designation");
	if (designation.value === '') {
		var span = document.getElementById("designationMsg");
		span.textContent = "Designation cannot be empty.";
		span.style.display = "block";
		status = false;
	}
	const department = document.getElementById("department");
	if (department.value === '') {
		var span = document.getElementById("departmentMsg");
		span.textContent = "DepartmentMsg cannot be empty.";
		span.style.display = "block";
		status = false;
	}
	if (status === true) {
		document.saveEmployeeMasterData.submit();
		return true;
	} else {
		return false;
	}

}


function clearFields(){
	document.getElementById('designationName').value = "";
}

function clearFieldsDepartment(){
	document.getElementById('department').value = "";
}


function getAllDestignation() {
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getAllDestignation',
		asynch: false,
		success: function(data) {
			//alert(data)
			for (let i = 0; i < 1; i++) {
				let j =1;
				const tableData1 = data.map(function(value) {
					return (
						`<tr>
                           		<td scope="col">`+ j++ +`</td>
                                <td scope="col">${value.id}</td>
                                <td scope="col">${value.designation}</td>
                            
                            </tr>`
					);
				}).join('');
				const tableBody1 = document.querySelector("#ContentPlaceHolder1_gvDesignation");
				tableBody1.innerHTML = tableData1;
			}
		},
		error: function() {
			alert("Device control failed");
		}
	});
}


function getAllDepartment() {
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getAllDepartment',
		asynch: false,
		success: function(data) {
			//alert(data)
			for (let i = 0; i < 1; i++) {
				let j =1;
				const tableData1 = data.map(function(value) {
					return (
						`<tr>
                           		<td scope="col">`+ j++ +`</td>
                                <td scope="col">${value.id}</td>
                                <td scope="col">${value.department}</td>
                            
                            </tr>`
					);
				}).join('');
				const tableBody1 = document.querySelector("#ContentPlaceHolder1_gvDepartment");
				tableBody1.innerHTML = tableData1;
			}
		},
		error: function() {
			alert("Device control failed");
		}
	});
}

function getAllEmployeeData(){
   	//relativeRelation
   	const select = document.getElementById("searchEmpCode");
    	$.ajax({
            type:"get",
            contentType: "application/json",
            url: 'getAllEmployeeData',
            asynch: false,
            success: function(data) {
            	data.forEach(value => {
            	//alert(value.name)
     			const option = document.createElement('option')
     			option.setAttribute('value', value.id);
     			option.innerHTML = value.id
     			select.appendChild(option)
   			})
                
            } ,
    	    error: function(){
    	    	alert("Device control failed");
    	    }
        });
 }
 
 function validateEmployeeLeaveDetails() {
	var status = true;
	const searchEmpCode = document.getElementById("searchEmpCode");
	if (searchEmpCode.value === '') {
		var span = document.getElementById("searchEmpCodeMsg");
		span.textContent = "Select by Code cannot be empty.";
		span.style.display = "block";
		status = false;
	}
	if (status === true) {
		//document.saveEmployeeLeaveMaster.submit();
		return true;
	} else {
		return false;
	}

}

function validateEmployeeLeaveDetails2() {
	var status = true;
	const cl = document.getElementById("cl");
	if (cl.value === '') {
		var span = document.getElementById("clMsg");
		span.textContent = "CL cannot be empty.";
		span.style.display = "block";
		status = false;
	}
	const sl = document.getElementById("sl");
	if (sl.value === '') {
		var span = document.getElementById("slMsg");
		span.textContent = "SL cannot be empty.";
		span.style.display = "block";
		status = false;
	}
	const el = document.getElementById("el");
	if (el.value === '') {
		var span = document.getElementById("elMsg");
		span.textContent = "EL cannot be empty.";
		span.style.display = "block";
		status = false;
	}
	if (status === true) {
		document.saveEmployeeLeaveMaster.submit();
		return true;
	} else {
		return false;
	}

}

function getEmpById(ids){
		//alert(ids)
		document.getElementById("id").value=ids;
		var input = {
                     "id": ids
             }
         	$.ajax({
                 type:"post",
                 contentType: "application/json",
                 data: JSON.stringify(input),
                 url: 'getEmpById',
                 asynch: false,
                 success: function(data) {
                 for (let i = 0; i < 1; i++) {
					//document.getElementById("id").value= data.id;
					let j =1;
					const tableData1 = data.map(function(value) {
						return (
							`<tr>
	                           		<td scope="col">`+ j++ +`</td>
	                                <td scope="col">${value.id}</td>
	                                <td scope="col">${value.empName}</td>
	                                <td scope="col">${value.sl}</td>
	                                <td scope="col">${value.cl}</td>
	                                <td scope="col">${value.el}</td>
	                            
	                            </tr>`
						);
					}).join('');
					const tableBody1 = document.querySelector("#ContentPlaceHolder1_gvSalary");
					tableBody1.innerHTML = tableData1;
				}
                     
                 } ,
         	    error: function(){
         	    	alert("Device control failed");
         	    }
             });
	}
	
	
function validateEmployeeSalaryDetails() {
	var status = true;
	const basic = document.getElementById("basic");
	if (basic.value === '') {
		var span = document.getElementById("basicMsg");
		span.textContent = "Basic cannot be empty.";
		span.style.display = "block";
		status = false;
	}
	const HRA = document.getElementById("HRA");
	if (HRA.value === '') {
		var span = document.getElementById("HRAMsg");
		span.textContent = "HRA cannot be empty.";
		span.style.display = "block";
		status = false;
	}
	const DA = document.getElementById("DA");
	if (DA.value === '') {
		var span = document.getElementById("DAMsg");
		span.textContent = "DA cannot be empty.";
		span.style.display = "block";
		status = false;
	}
	const TA = document.getElementById("TA");
	if (TA.value === '') {
		var span = document.getElementById("TAMsg");
		span.textContent = "TA cannot be empty.";
		span.style.display = "block";
		status = false;
	}
	const allowance = document.getElementById("allowance");
	if (allowance.value === '') {
		var span = document.getElementById("allowanceMsg");
		span.textContent = "allowance cannot be empty.";
		span.style.display = "block";
		status = false;
	}
	const others = document.getElementById("others");
	if (others.value === '') {
		var span = document.getElementById("othersMsg");
		span.textContent = "others cannot be empty.";
		span.style.display = "block";
		status = false;
	}
	const PF = document.getElementById("PF");
	if (PF.value === '') {
		var span = document.getElementById("PFMsg");
		span.textContent = "PF cannot be empty.";
		span.style.display = "block";
		status = false;
	}
	const ESI = document.getElementById("ESI");
	if (ESI.value === '') {
		var span = document.getElementById("ESIMsg");
		span.textContent = "ESI cannot be empty.";
		span.style.display = "block";
		status = false;
	}
	const searchEmpCode = document.getElementById("searchEmpCode");
	if (searchEmpCode.value === '') {
		var span = document.getElementById("searchEmpCodeMsg");
		span.textContent = "code cannot be empty.";
		span.style.display = "block";
		status = false;
	}
	if (status === true) {
		document.saveSalarySetupMaster.submit();
		return true;
	} else {
		return false;
	}

}


function getEmpByIdSalary(ids){
		//alert(ids)
		document.getElementById("id").value=ids;
		var input = {
                     "id": ids
             }
         	$.ajax({
                 type:"post",
                 contentType: "application/json",
                 data: JSON.stringify(input),
                 url: 'getEmpByIdSalary',
                 asynch: false,
                 success: function(data) {
                 for (let i = 0; i < 1; i++) {
					//document.getElementById("id").value= data.id;
					let j =1;
					const tableData1 = data.map(function(value) {
						return (
							`<tr>
	                           		<td scope="col">`+ j++ +`</td>
	                                <td scope="col">${value.id}</td>
	                                <td scope="col">${value.basic}</td>
	                                <td scope="col">${value.hra}</td>
	                                <td scope="col">${value.da}</td>
	                                <td scope="col">${value.ta}</td>
	                            
	                            </tr>`
						);
					}).join('');
					const tableBody1 = document.querySelector("#ContentPlaceHolder1_gvSalaryMod");
					tableBody1.innerHTML = tableData1;
				}
                     
                 } ,
         	    error: function(){
         	    	alert("Device control failed");
         	    }
             });
	}
	

function getEmpByIdForEmpLeave(ids){
		//alert(ids)
		document.getElementById("id").value=ids;
		var input = {
                     "id": ids
             }
         	$.ajax({
                 type:"post",
                 contentType: "application/json",
                 data: JSON.stringify(input),
                 url: 'getEmpById',
                 asynch: false,
                 success: function(data) {
                 for (let i = 0; i < 1; i++) {
					document.getElementById("employeeName").value= data[0].empName;
				    document.getElementById("DOJ").value= data[0].DOJ;
					document.getElementById("CL").value= data[0].cl;
					document.getElementById("SL").value= data[0].sl;
					document.getElementById("EL").value= data[0].el;
					let j =1;
					const tableData1 = data.map(function(value) {
						return (
							`<tr>
	                           		<td scope="col">`+ j++ +`</td>
	                                <td scope="col">${value.id}</td>
	                                <td scope="col">${value.empName}</td>
	                                <td scope="col">${value.sl}</td>
	                                <td scope="col">${value.cl}</td>
	                                <td scope="col">${value.el}</td>
	                            
	                            </tr>`
						);
					}).join('');
					const tableBody1 = document.querySelector("#ContentPlaceHolder1_gvSalary");
					tableBody1.innerHTML = tableData1;
				}
                     
                 } ,
         	    error: function(){
         	    	alert("Device control failed");
         	    }
             });
	}
	
	
function readAnchorValue(obj){
	     var myVal = obj.getAttribute("href");
		 document.getElementById("leaveType").value= myVal;
		 document.lavesubmit.submit();
}


function getAllAttendence() {
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getAllAttendence',
		asynch: false,
		success: function(data) {
			//alert(data)
			for (let i = 0; i < 1; i++) {
				let j =1;
				const tableData1 = data.map(function(value) {
					return (
						`<tr>
                           		<td scope="col">`+ j++ +`</td>
                                <td scope="col">${value.empCode}</td>
                                <td scope="col">${value.leaveDate}</td>
                            <td scope="col">${value.leaveType}</td>
                            </tr>`
					);
				}).join('');
				const tableBody1 = document.querySelector("#ContentPlaceHolder1_gdvDataAttendenceMaster");
				tableBody1.innerHTML = tableData1;
			}
		},
		error: function() {
			alert("Device control failed");
		}
	});
}


function getEmpByIdForSalaryPayment(ids){
		//alert(ids)
		document.getElementById("id").value=ids;
		var input = {
                     "id": ids
             }
         	$.ajax({
                 type:"post",
                 contentType: "application/json",
                 data: JSON.stringify(input),
                 url: 'getSalaryById',
                 asynch: false,
                 success: function(data) {
                 for (let i = 0; i < 1; i++) {
					document.getElementById("basic").value= data[0].basic;
				    document.getElementById("hra").value= data[0].hra;
					document.getElementById("da").value= data[0].da;
					document.getElementById("ta").value= data[0].ta;
					document.getElementById("allowance").value= data[0].allowance;
					document.getElementById("others").value= data[0].others;
					document.getElementById("PF").value= data[0].PF;
					document.getElementById("ESI").value= data[0].ESI;
					
				}
                     
                 } ,
         	    error: function(){
         	    	alert("Device control failed");
         	    }
             });
	}