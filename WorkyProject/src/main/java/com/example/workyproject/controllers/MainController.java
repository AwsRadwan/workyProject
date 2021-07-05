package com.example.workyproject.controllers;

import com.example.workyproject.models.Category;
import com.example.workyproject.services.*;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import javax.websocket.server.PathParam;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.security.Principal;

@Controller
public class MainController {
    private final UserService userService;
    private final ServiceService serviceService;
    private final CategoryService categoryService;
    private final ReviewService reviewService;
    private final RoleService roleService;

    public MainController(UserService userService, ServiceService serviceService, CategoryService categoryService, ReviewService reviewService, RoleService roleService) {
        this.userService = userService;
        this.categoryService = categoryService;
        this.reviewService = reviewService;
        this.roleService = roleService;
        this.serviceService = serviceService;
    }

    @RequestMapping("/")
    public String mainPage(HttpSession session, Model model) {
        model.addAttribute("categories", categoryService.getAllCategories());
        return "home.jsp";
    }


    @RequestMapping("/all_services")
    public String allSer(HttpSession session, Model model) {
        model.addAttribute("services", serviceService.getAllServices());
        model.addAttribute("categories", categoryService.getAllCategories());
        return "all_services.jsp";
    }

    @RequestMapping(value = "/selectCate", method = RequestMethod.POST)
    public String selectThisCategory(@PathParam("category") Long id, Model model) {
        Category c = categoryService.getCateById(id);
        model.addAttribute("services", c.getServices());
        return "all_services.jsp";
    }

    @RequestMapping("/selectCate/{id}")
    public String selectThisCategory1(@PathVariable("id") Long id, Model model) {
        Category c = categoryService.getCateById(id);
        model.addAttribute("services", c.getServices());
        return "all_services.jsp";
    }

//    @RequestMapping("/selectCate/{id}")
//    public String selectThisCategory(@PathParam("category") Long id) {
//    	return "redirect:/selectCate/"+id;
//    }

    @RequestMapping("/aws")
    public String addC(Model model, @ModelAttribute("cate") Category cate) {
        model.addAttribute("categories", categoryService.getAllCategories());
        return "admintest.jsp";
    }

    @RequestMapping(value = "/addc", method = RequestMethod.POST)
    public String addThisC(@Valid @ModelAttribute("cate") Category cate, BindingResult result, Model model) {
        if (result.hasErrors()) {
            model.addAttribute("categories", categoryService.getAllCategories());
            return "admintest.jsp";
        } else {
            this.categoryService.createCate(cate);
            return "redirect:/aws";
        }

    }

}
