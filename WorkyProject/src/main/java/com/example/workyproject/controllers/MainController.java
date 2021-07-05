package com.example.workyproject.controllers;

import com.example.workyproject.services.*;
import org.springframework.stereotype.Controller;

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

}
