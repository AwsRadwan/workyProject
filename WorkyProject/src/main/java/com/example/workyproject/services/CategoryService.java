package com.example.workyproject.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.example.workyproject.models.Category;
import com.example.workyproject.repositories.CategoryRepo;
import com.example.workyproject.repositories.ReviewRepo;
import com.example.workyproject.repositories.RoleRepo;
import com.example.workyproject.repositories.ServiceRepo;
import com.example.workyproject.repositories.UserRepo;

@Service
public class CategoryService {
	private final CategoryRepo categoryRepo;
	private final ServiceRepo serviceRepo;
	private final UserRepo userrepo;
	private final ReviewRepo reviewRepo;
	private final RoleRepo roleRepo;
	
	public CategoryService(CategoryRepo categoryRepo, ServiceRepo serviceRepo, UserRepo userrepo, ReviewRepo reviewRepo,
			RoleRepo roleRepo) {
		super();
		this.categoryRepo = categoryRepo;
		this.serviceRepo = serviceRepo;
		this.userrepo = userrepo;
		this.reviewRepo = reviewRepo;
		this.roleRepo = roleRepo;
	}
	
	public List<Category> getAllCategories(){
		return this.categoryRepo.findAll();
	}
	
	public Category getCateById(Long id) {
		Optional<Category> c = categoryRepo.findById(id);
    	
    	if(c.isPresent()) {
            return c.get();
    	} else {
    	    return null;
    	}
	}
	
	public void createCate(Category cate) {
		categoryRepo.save(cate);
	}
	
	

}
