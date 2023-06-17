package com.rogera.fruityloop.controllers;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.rogera.fruityloop.models.AllFruits;

// ANNOTATIONS
@Controller
public class MainController {

	@RequestMapping("/")
	public String index() {
		return "index.jsp";
	}
	
	
//	Fruits Controller
	@GetMapping("/fruits")
	//define parameter as a view model(class) - (Model model) - "model" can be whatever
	public String item(Model fruits) {
		
//		 RETRIEVE ALL FRUITS WITH ArrayList of Strings 
//		 Creating new fruits from our "AllFruits" model
		ArrayList<AllFruits> AF = new ArrayList<AllFruits>();
			AF.add(new AllFruits("Hobby-Hobby", 3.3,"Sugar"));
			AF.add(new AllFruits("Tremor-Tremor", 5.4, "White-Beard"));
			AF.add(new AllFruits("Soul-Soul", 3.4, "Brook"));
			AF.add(new AllFruits("Ice-Ice", 3.5, "Aokiji"));
			//PASS "allFruits" over to JSP - we need to have view models "Model fruits)"
			//dependency inject the view model. use "addAttribute" to decide key and value
			//(key, information being passed)
			fruits.addAttribute("devilFruits", AF);

	return "item.jsp";
	}

	
}
