package com.dxsure_crm.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import com.dxsure_crm.model.FollowUp;
import com.dxsure_crm.service.FollowUpService;

@Controller
@RequestMapping("/followup")
public class FollowUpController {

    @Autowired
    FollowUpService followUpService;

    @GetMapping("/list")
    public String listFollowUps(Model model) {
        List<FollowUp> followups = followUpService.getAllFollowUps();
        model.addAttribute("followups", followups);
        return "followUpList";
    }

    @GetMapping("/add")
    public String showAddForm(Model model) {
        model.addAttribute("followUp", new FollowUp());
        return "addFollowUp";
    }

    @PostMapping("/save")
    public String saveFollowUp(@ModelAttribute FollowUp followUp) {
        followUpService.saveFollowUp(followUp);
        return "redirect:/followup/list";
    }

    @GetMapping("/edit/{id}")
    public String editFollowUp(@PathVariable Long id, Model model) {
        FollowUp followUp = followUpService.getFollowUpById(id);
        model.addAttribute("followUp", followUp);
        return "addFollowUp";
    }

    @GetMapping("/delete/{id}")
    public String deleteFollowUp(@PathVariable Long id) {
        followUpService.deleteFollowUp(id);
        return "redirect:/followup/list";
    }
}
