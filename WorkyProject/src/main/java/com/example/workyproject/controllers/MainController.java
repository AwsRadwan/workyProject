package com.example.workyproject.controllers;

import com.example.workyproject.models.Category;
import com.example.workyproject.models.Service;
import com.example.workyproject.models.User;
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
import org.springframework.web.bind.annotation.RequestParam;
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
    public String mainPage(HttpSession session, Principal principal, Model model) {
        if (principal != null && principal.getName() != null)
            session.setAttribute("userid", principal.getName());
        model.addAttribute("categories", categoryService.getAllCategories());
        return "home.jsp";
    }


    @RequestMapping("/all_services")
    public String allSer(HttpSession session, Model model) {
        model.addAttribute("services", serviceService.getAllServices());
        model.addAttribute("categories", categoryService.getAllCategories());
        return "all_services.jsp";
    }

    @RequestMapping(value="/selectCate", method = RequestMethod.POST)
    public String selectThisCategory(HttpSession session, @RequestParam("category") Long id, Model model) {
    	System.out.println(id);
    	System.out.println("Amro");
    	Category c = categoryService.getCateById(id);
        return "redirect:/selectCate/"+c.getId();
    }

    @RequestMapping("/selectCate/{id}")
    public String selectThisCategory1(HttpSession session, @PathVariable("id") Long id, Model model) {
        Category c = categoryService.getCateById(id);
        model.addAttribute("services", c.getServices());
        model.addAttribute("categories", categoryService.getAllCategories());
        return "all_services.jsp";
    }

//    @RequestMapping("/selectCate/{id}")
//    public String selectThisCategory(@PathParam("category") Long id) {
//    	return "redirect:/selectCate/"+id;
//    }

    @RequestMapping("/aws")
    public String addC(Model model, @ModelAttribute("cate") Category cate) {
        model.addAttribute("categories", categoryService.getAllCategories());
        return "adminAddCate.jsp";
    }

    @RequestMapping(value = "/addc", method = RequestMethod.POST)
    public String addThisC(@Valid @ModelAttribute("cate") Category cate, BindingResult result, Model model) {
        if (result.hasErrors()) {
            model.addAttribute("categories", categoryService.getAllCategories());
            return "adminAddCate.jsp";
        } else {
            this.categoryService.createCate(cate);
            return "redirect:/aws";
        }

    }


    @RequestMapping("/add_service")
    public String addService(Model model,HttpSession session, @ModelAttribute ("service") Service service) {
    	model.addAttribute("categories", categoryService.getAllCategories());
    	return "AddService.jsp";
    }
    @RequestMapping("/service/new")
	public String newService(Model model) {
		model.addAttribute("service", new Service());
		model.addAttribute("categories", categoryService.getAllCategories());
		return "/home.jsp";
	}
    @RequestMapping(value="/service", method=RequestMethod.POST)
	public String createService(@Valid @ModelAttribute("service") Service service,BindingResult result) {
		if (result.hasErrors()) {
			return "/AddService.jsp";
		} else {
			serviceService.createService(service);
			return "redirect:/service/new" ;
		}
	}
    @RequestMapping("/service_details/{id}")
    public String serDetails(HttpSession session, Model model, @PathVariable("id") Long id) {
        model.addAttribute("categories", categoryService.getAllCategories());
		User user = userService.findUserById(id);
		Service service = serviceService.findService(id);
    	model.addAttribute("userName", user.getFirstName() + " " + user.getLastName());
    	model.addAttribute("userNumber", user.getPhoneNumber());
    	model.addAttribute("userPrice", service.getPrice());
    	model.addAttribute("userDescription", service.getDescription());
        return "serviceDetails.jsp";
    }
    
    @RequestMapping("/deleteCategory/{id}")
    public String deleteCategory(@PathVariable("id") Long id) {
    	categoryService.deleteCate(categoryService.getCateById(id));
    	return "redirect:/aws";
    }
    
    
    @RequestMapping("/about")
    public String aboutPage(Model model, HttpSession session) {
    	int x = serviceService.getAllServices().size();
    	int y = userService.getAllUsers().size();
    	model.addAttribute("usersNum", y);
    	model.addAttribute("servicesNum", x);
    	model.addAttribute("categories", categoryService.getAllCategories());
    	return "about.jsp";
    }


}
