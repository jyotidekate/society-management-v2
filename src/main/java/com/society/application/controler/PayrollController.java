package com.society.application.controler;

import java.util.Arrays;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.society.application.model.AttendenceMaster;
import com.society.application.model.DepartmentMaster;
import com.society.application.model.DesignationMaster;
import com.society.application.model.Employee;
import com.society.application.model.GenericGetById;
import com.society.application.model.SalaryMaster;
import com.society.application.repository.AttendenceMasterRepo;
import com.society.application.repository.DepartmentMasterRepo;
import com.society.application.repository.DesignationMasterRepo;
import com.society.application.repository.EmployeeRepo;
import com.society.application.repository.SalaryMasterRepo;

@Controller
public class PayrollController {
	
	@Autowired
	DesignationMasterRepo designationMasterRepo;
	
	@Autowired
	DepartmentMasterRepo departmentMasterRepo;
	
	@Autowired
	EmployeeRepo employeeRepo;
	
	@Autowired
	SalaryMasterRepo salaryMasterRepo;
	
	@Autowired
	AttendenceMasterRepo attendenceMasterRepo;
	
	@GetMapping("/DesignationMasterPayroll")
	public String designationMaster(Model model) {
		return "payrollManagement/DesignationMaster";
	}
	
	@GetMapping("/DepartmentMasterPayroll")
	public String departmentMaster(Model model) {
		return "payrollManagement/DepartmentMaster";
	}
	
	@GetMapping("/EmployeeMasterPayroll")
	public String employeeMaster(Model model) {
		return "payrollManagement/EmployeeMaster";
	}
	
	@GetMapping("/EmployeeLeaveDetails")
	public String employeeLeaveDetails(Model model) {
		return "payrollManagement/EmployeeLeaveDetails";
	}
	
	@GetMapping("/SalarySetupMaster")
	public String salarySetupMaster(Model model) {
		return "payrollManagement/SalarySetupMaster";
	}
	
	@GetMapping("/HrmAppointmentLetter")
	public String hrmAppointmentLetter(Model model) {
		return "payrollManagement/HrmAppointmentLetter";
	}
	
	@GetMapping("/HrmOfferLetter")
	public String hrmOfferLetter(Model model) {
		return "payrollManagement/HrmOfferLetter";
	}
	
	@GetMapping("/OffDaySetting")
	public String offDaySetting(Model model) {
		return "payrollManagement/OffDaySetting";
	}
	
	@GetMapping("/LeaveAdjustment")
	public String leaveAdjustment(Model model) {
		return "payrollManagement/LeaveAdjustment";
	}
	
	@GetMapping("/HrmAttendance")
	public String hrmAttendance(Model model) {
		return "payrollManagement/HrmAttendance";
	}
	
	@GetMapping("/HrmSalaryGenerate")
	public String hrmSalaryGenerate(Model model) {
		return "payrollManagement/HrmSalaryGenerate";
	}
	
	@GetMapping("/HrmSalaryPayment")
	public String hrmSalaryPayment(Model model) {
		return "payrollManagement/HrmSalaryPayment";
	}
	
	@GetMapping("/HrmSalarySlipPrint")
	public String hrmSalarySlipPrint(Model model) {
		return "payrollManagement/HrmSalarySlipPrint";
	}
	
	@GetMapping("/AttendanceReport")
	public String attendanceReport(Model model) {
		return "payrollManagement/AttendanceReport";
	}
	
	@GetMapping("/HrmSalaryPaymentReport")
	public String hrmSalaryPaymentReport(Model model) {
		return "payrollManagement/HrmSalaryPaymentReport";
	}
	
	@GetMapping("/HRMEmployeeSearch")
	public String hRMEmployeeSearch(Model model) {
		return "payrollManagement/HRMEmployeeSearch";
	}
	
	@GetMapping("/HrmEmployeeIDCard")
	public String hrmEmployeeIDCard(Model model) {
		return "payrollManagement/HrmEmployeeIDCard";
	}
	
	@GetMapping("/getAllDestignation")
	@ResponseBody
	public List<DesignationMaster> getAllDestignation() {
		return designationMasterRepo.findAll();
	}
	
	@PostMapping("/saveDesignationMasterData")
	public String saveDesignationMasterData(@ModelAttribute("saveDesignationMasterData") DesignationMaster designationMaster, Model model) {
		designationMasterRepo.save(designationMaster);
		model.addAttribute("status", "success");
		return "payrollManagement/DesignationMaster";
	}
	
	@GetMapping("/getAllDepartment")
	@ResponseBody
	public List<DepartmentMaster> getAllDepartment() {
		return departmentMasterRepo.findAll();
	}
	
	@PostMapping("/saveDepartmentMasterData")
	public String saveDepartmentMasterData(@ModelAttribute("saveDepartmentMasterData") DepartmentMaster departmentMaster, Model model) {
		departmentMasterRepo.save(departmentMaster);
		model.addAttribute("status", "success");
		return "payrollManagement/DepartmentMaster";
	}
	
	@PostMapping("/saveEmployeeMasterData")
	public String saveEmployeeMasterData(@ModelAttribute("saveEmployeeMasterData") Employee employee, Model model) {
		employeeRepo.save(employee);
		model.addAttribute("status", "success");
		return "payrollManagement/EmployeeMaster";
	}
	
	@GetMapping("/getAllEmployeeData")
	@ResponseBody
	public List<Employee> getAllEmployeeData() {
		return employeeRepo.findAll();
	}
	
	
	@PostMapping("/getEmpById")
	@ResponseBody
	public List<Employee> getEmpById(@RequestBody GenericGetById id) {
		Optional<Employee> emp =  employeeRepo.findById(Integer.parseInt(id.getId()));
		System.err.println(emp.get());
		return Arrays.asList(emp.get());
	}
	
	@PostMapping("/saveEmployeeLeaveMaster")
	public String saveEmployeeLeaveMaster(@ModelAttribute("saveEmployeeLeaveMaster") Employee employee, Model model) {
		Optional<Employee> emp =  employeeRepo.findById(employee.getId());
		emp.get().setCl(employee.getCl());
		emp.get().setSl(employee.getSl());
		emp.get().setEl(employee.getEl());
		employeeRepo.save(emp.get());
		model.addAttribute("status", "success");
		return "payrollManagement/EmployeeLeaveDetails";
	}
	
	@PostMapping("/saveSalarySetupMaster")
	public String saveSalarySetupMaster(@ModelAttribute("saveSalarySetupMaster") SalaryMaster salaryMaster, Model model) {
		salaryMasterRepo.save(salaryMaster);
		model.addAttribute("status", "success");
		return "payrollManagement/SalarySetupMaster";
	}
	
	@PostMapping("/getEmpByIdSalary")
	@ResponseBody
	public List<SalaryMaster> getEmpByIdSalary(@RequestBody GenericGetById id) {
		List<SalaryMaster> emp =  salaryMasterRepo.searchByEmpId(id.getId());
		return emp;
	}
	
	@PostMapping("/leavesubmit")
	public String saveEmployeeLeaveMaster(@ModelAttribute("lavesubmit") AttendenceMaster attendenceMaster, Model model) {
		attendenceMasterRepo.save(attendenceMaster);
		model.addAttribute("status", "success");
		return "payrollManagement/HrmAttendance";
	}
	
	@GetMapping("/getAllAttendence")
	@ResponseBody
	public List<AttendenceMaster> getAllAttendence() {
		return attendenceMasterRepo.findAll();
	}
	
	@PostMapping("/getSalaryById")
	@ResponseBody
	public List<SalaryMaster> getSalaryById(@RequestBody GenericGetById id) {
		List<SalaryMaster> salaryEmp =  salaryMasterRepo.searchByEmpId(id.getId());
		System.err.println(salaryEmp);
		return salaryEmp;
	}
	
	
	@PostMapping("/updateSalaryPayment")
	public String updateSalaryPayment(@ModelAttribute("updateSalaryPayment") SalaryMaster salaryMaster, Model model) {
		List<SalaryMaster> salaryEmp =  salaryMasterRepo.searchByEmpId(salaryMaster.getEmpCode());
		salaryEmp.get(0).setPayBranch(salaryMaster.getPayBranch());
		salaryEmp.get(0).setPayDate(salaryMaster.getPayDate());
		salaryEmp.get(0).setPaymode(salaryMaster.getPaymode());
		salaryMasterRepo.save(salaryEmp.get(0));
		model.addAttribute("status", "success");
		return "payrollManagement/HrmSalaryPayment";

	}
}
