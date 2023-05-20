package com.society.application.controler;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class IncentiveSectionController {
	
	
	
	@GetMapping("/incentiveMaster")
	public String incentiveMaster(Model model) {
		return "incentiveSection/IncentiveMaster";
	}
	
	@GetMapping("/incentiveGeneration")
	public String incentiveGeneration(Model model) {
		return "incentiveSection/IncentiveGeneration";
	}
	@GetMapping("/incentiveDetailsPrint")
	public String incentiveDetailsPrint(Model model) {
		return "incentiveSection/IncentiveDetailsPrint";
	}
	
	@GetMapping("/incentiveListPrint")
	public String incentiveListPrint(Model model) {
		return "incentiveSection/IncentiveListPrint";
	}
	
	

}
