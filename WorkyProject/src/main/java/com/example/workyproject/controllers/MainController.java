package com.example.workyproject.controllers;

import org.springframework.stereotype.Controller;

import com.example.workyproject.models.Service;
import com.example.workyproject.models.UserService;
import com.example.workyproject.services.CategoryService;
import com.example.workyproject.services.ReviewService;
import com.example.workyproject.services.RoleService;
import com.example.workyproject.services.ServiceService;

@Controller
public class MainController {
	private final UserService userService;
	private final ServiceService serviceService;
	private final CategoryService categoryService;
	private final ReviewService reviewService;
	private final RoleService roleService;
	
	public MainController(UserService userService,ServiceService serviceService, CategoryService categoryService, ReviewService reviewService, RoleService roleService) {
		this.userService = userService;
		this.categoryService = categoryService;
		this.reviewService = reviewService;
		this.roleService = roleService;
		this.serviceService = serviceService;
	}
	
	
	

}
