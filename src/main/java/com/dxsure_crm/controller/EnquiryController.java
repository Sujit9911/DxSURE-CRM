package com.dxsure_crm.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import com.dxsure_crm.model.Enquiry;
import com.dxsure_crm.service.EnquiryService;

@Controller
@RequestMapping("/enquiry")
public class EnquiryController {

    @Autowired
    EnquiryService enquiryService;

    @GetMapping("/list")
    public String listEnquiries(Model model) {
        List<Enquiry> enquiries = enquiryService.getAllEnquiries();
        model.addAttribute("enquiries", enquiries);
        return "enquiryList";
    }

    @GetMapping("/add")
    public String showAddForm(Model model) {
        model.addAttribute("enquiry", new Enquiry());
        return "addEnquiry";
    }

    @PostMapping("/save")
    public String saveEnquiry(@ModelAttribute Enquiry enquiry) {
        enquiryService.saveEnquiry(enquiry);
        return "redirect:/enquiry/list";
    }

    @GetMapping("/edit/{id}")
    public String editEnquiry(@PathVariable Long id, Model model) {
        Enquiry enquiry = enquiryService.getEnquiryById(id);
        model.addAttribute("enquiry", enquiry);
        return "addEnquiry";
    }

    @GetMapping("/delete/{id}")
    public String deleteEnquiry(@PathVariable Long id) {
        enquiryService.deleteEnquiry(id);
        return "redirect:/enquiry/list";
    }
}
