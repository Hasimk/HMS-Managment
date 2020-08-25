package com.hms.controller;


import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.hms.entity.Patient;
import com.hms.model.PatientDto;
import com.hms.repository.PatientRepository;

@Controller
public class PatientController {
	
	@Autowired
	PatientRepository patientRepository;
	
	
	@GetMapping("/index")
	public String getindexpage() {
	return "index";
					
	}
	
	@GetMapping("/addpatient")
	
	public String getpatientpage(Model model ) {
		
		PatientDto pdto = new PatientDto();
		
		model.addAttribute("emodel",pdto);
				
		return "addpatient";
				
	}
	
	@PostMapping("/savePatient")
	public String savepatient(@ModelAttribute("emodel") PatientDto patientDto, Model model) {
		Patient pt = new Patient();
		BeanUtils.copyProperties(patientDto, pt);
		
		boolean flag=patientRepository.existsById(pt.getPatientid());
		
		if(flag==true) {
			
			model.addAttribute("message", "sorry Patient already exits with the given patientid");
			
			return "index";
		}
			
			else {
				
				patientRepository.save(pt);
				model.addAttribute("message", "Patient Registration Successfully");
				
				return "index";
			}		
	}
		
 @GetMapping("/listpatient")
		public String listpatient(Model model) {
			
		List<Patient>pList=patientRepository.findAll();
			
		List<PatientDto>pdto= new ArrayList<PatientDto>();
		
		for(Patient p: pList) {
 PatientDto pd =new PatientDto();
			BeanUtils.copyProperties(p,pd);
			pdto.add(pd);
				
		}
			model.addAttribute("patients", pdto);
			return "listpatient";
			}
	
		
		
		
		
	}	
	
	
	


