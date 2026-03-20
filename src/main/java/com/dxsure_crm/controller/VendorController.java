package com.dxsure_crm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.dxsure_crm.model.Vendor;
import com.dxsure_crm.service.VendorService;

@Controller
@RequestMapping("/vendor")
public class VendorController {

    @Autowired
    VendorService vendorService;

    @GetMapping("/list")
    public String listVendors(Model model) {
        List<Vendor> vendors = vendorService.getAllVendors();
        model.addAttribute("vendors", vendors);
        return "vendorList";
    }

    @GetMapping("/add")
    public String showAddForm(Model model) {
        model.addAttribute("vendor", new Vendor());
        return "addVendor";
    }

    @PostMapping("/save")
    public String saveVendor(@ModelAttribute Vendor vendor) {
        vendorService.saveVendor(vendor);
        return "redirect:/vendor/list";
    }

    @GetMapping("/edit/{id}")
    public String editVendor(@PathVariable Long id, Model model) {
        Vendor vendor = vendorService.getVendorById(id);
        model.addAttribute("vendor", vendor);
        return "addVendor";
    }

    @GetMapping("/delete/{id}")
    public String deleteVendor(@PathVariable Long id) {
        vendorService.deleteVendor(id);
        return "redirect:/vendor/list";
    }
}
