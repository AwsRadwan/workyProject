package com.example.workyproject.controllers;

import com.example.workyproject.models.Service;
import com.example.workyproject.models.User;
import com.example.workyproject.services.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

@Controller
public class DashboardController {

    private final UserService userService;

    public DashboardController(UserService userService) {
        this.userService = userService;
    }

    @RequestMapping("/profile")
    public String renderDashboard(Model model, HttpSession session) {
        //Get user from session
        User user = userService.findByUsername((String) session.getAttribute("userid"));
        //Get services related to that user
        model.addAttribute("user", user);
        return "dashboard.jsp";
    }

    @RequestMapping("/dashboardmyservices")
    public String renderDashboardServices(Model model, HttpSession session) {
        //Get user from session
        User user = userService.findByUsername((String) session.getAttribute("userid"));
        //Get services related to that user
        model.addAttribute("user", user);
        model.addAttribute("services", user.getServices());
        return "dashboard_my_services.jsp";
    }

    @RequestMapping("/requestedservices")
    public String renderDashbaordRequestedServices(Model model, HttpSession session) {

        User user = userService.findByUsername((String) session.getAttribute("userid"));
        model.addAttribute("user", user);
        model.addAttribute("services", user.getServices());
        return "dashboard_requested_services.jsp";
    }

    @RequestMapping("/dashboardmessages")
    public String renderDashbaordMessages(Model model, HttpSession session) {
        User user = userService.findByUsername((String) session.getAttribute("userid"));
        model.addAttribute("user", user);
        model.addAttribute("services", user.getServices());
        return "dashboard_messages_page.jsp";
    }

    @RequestMapping("/dashboardsettings")
    public String renderDashbaordSettings(Model model, HttpSession session, @ModelAttribute("usertoupdate") User utu, BindingResult result) {
        User user = userService.findByUsername((String) session.getAttribute("userid"));
        model.addAttribute("user", user);
        model.addAttribute("services", user.getServices());
        return "dashboard_settings_page.jsp";
    }

    @PostMapping("/dbupdatecontact")
    public String updateUser(Model model, HttpSession session, @Valid @ModelAttribute("usertoupdate") User utu, BindingResult result) {

        if (result.hasErrors()) {
            return "dashboard_settings_page.jsp";
        } else {
            userService.updateUser(utu);
            return "redirect/dashboardsettings";
        }

    }


}
