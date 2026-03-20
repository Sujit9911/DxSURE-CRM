package com.dxsure_crm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.dxsure_crm.service.EmployeeService;
import com.dxsure_crm.service.EnquiryService;
import com.dxsure_crm.service.FollowUpService;
import com.dxsure_crm.service.VendorService;

@Controller
public class EmployeeController {

    @Autowired
    EmployeeService employeeService;

    @Autowired
    EnquiryService enquiryService;

    @Autowired
    FollowUpService followUpService;

    @Autowired
    VendorService vendorService;

    @GetMapping("/employeeLogin")
    public String employeeLogin() {
        return "employeeLogin";
    }

    @PostMapping("/verifyEmployee")
    public String verifyemployee(String username, String password, Model model) {
        boolean isValidEmployee = employeeService.verifyEmployee(username, password);
        if (isValidEmployee) {
            model.addAttribute("totalEnquiries", enquiryService.getAllEnquiries().size());
            model.addAttribute("totalFollowUps", followUpService.getAllFollowUps().size());
            model.addAttribute("totalVendors", vendorService.getAllVendors().size());
            return "employeeDashboard";
        } else {
            return "employeeLogin";
        }
    }
}