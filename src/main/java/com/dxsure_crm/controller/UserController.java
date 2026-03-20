package com.dxsure_crm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.dxsure_crm.model.User;
import com.dxsure_crm.service.ClientService;
import com.dxsure_crm.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    UserService userService;

    @Autowired
    ClientService clientService;

    // =========================
    // VIEW ALL USERS
    // =========================
    @GetMapping("/list")
    public String getAllUsers(Model model) {
        List<User> users = userService.getAllUsers();
        model.addAttribute("users", users);
        return "userList";  // userList.jsp
    }

    // =========================
    // SHOW ADD USER FORM
    // =========================
    @GetMapping("/add")
    public String showAddForm(Model model) {
        model.addAttribute("user", new User());
        return "addUser";   // addUser.jsp
    }

    // =========================
    // SAVE USER (CREATE / UPDATE)
    // =========================
    @PostMapping("/save")
    public String saveUser(@ModelAttribute User user) {
        userService.saveUser(user);
        return "redirect:/user/list";
    }

    // =========================
    // EDIT USER
    // =========================
    @GetMapping("/edit/{id}")
    public String editUser(@PathVariable Long id, Model model) {
        User user = userService.getUserById(id);
        model.addAttribute("user", user);
        return "addUser";   // reuse same form
    }

    // =========================
    // DELETE USER
    // =========================
    @GetMapping("/delete/{id}")
    public String deleteUser(@PathVariable Long id) {
        userService.deleteUser(id);
        return "redirect:/user/list";
    }

	  @GetMapping("/adminDashboard")
	  public String dashboard(Model model) {

	      model.addAttribute("totalUsers", userService.getAllUsers().size());
	      model.addAttribute("totalClients", clientService.getAllClients().size());
	      return "adminDashboard";
	  }
}
