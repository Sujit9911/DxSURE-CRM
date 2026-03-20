package com.dxsure_crm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.dxsure_crm.service.AdminService;
import com.dxsure_crm.service.UserService;
import com.dxsure_crm.service.ClientService;
import com.dxsure_crm.service.VendorService;

@Controller
public class AdminController {

    @Autowired
    AdminService adminService;

    @Autowired
    UserService userService;

    @Autowired
    ClientService clientService;

    @Autowired
    VendorService vendorService;

    @GetMapping("/adminLogin")
    public String adminLogin() {
        return "adminLogin";
    }

    @PostMapping("/verifyAdmin")
    public String verifyadmin(String username, String password, Model model) {
        boolean isValidAdmin = adminService.verifyAdmin(username, password);
        if (isValidAdmin) {
            model.addAttribute("totalUsers", userService.getAllUsers().size());
            model.addAttribute("totalClients", clientService.getAllClients().size());
            model.addAttribute("totalVendors", vendorService.getAllVendors().size());
            return "adminDashboard";
        } else {
            return "adminLogin";
        }
    }
}