package com.dxsure_crm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.dxsure_crm.service.LoginService;

@Controller
public class LoginController {
 
	@Autowired
	LoginService loginService;
	
	@GetMapping("/")
	public String getLoginPage() {
		return "login";
	}
	  
	
	}


