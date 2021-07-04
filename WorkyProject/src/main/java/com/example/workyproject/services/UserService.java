package com.example.workyproject.services;

import com.example.workyproject.repositories.CategoryRepo;
import com.example.workyproject.repositories.ReviewRepo;
import com.example.workyproject.repositories.RoleRepo;
import com.example.workyproject.repositories.ServiceRepo;
import com.example.workyproject.repositories.UserRepo;
import org.springframework.stereotype.Service;


@Service
public class UserService {
    private final CategoryRepo categoryRepo;
    private final ServiceRepo serviceRepo;
    private final UserRepo userrepo;
    private final ReviewRepo reviewRepo;
    private final RoleRepo roleRepo;

    public UserService(CategoryRepo categoryRepo, ServiceRepo serviceRepo, UserRepo userrepo, ReviewRepo reviewRepo,
                       RoleRepo roleRepo) {
        this.categoryRepo = categoryRepo;
        this.serviceRepo = serviceRepo;
        this.userrepo = userrepo;
        this.reviewRepo = reviewRepo;
        this.roleRepo = roleRepo;
    }


}
