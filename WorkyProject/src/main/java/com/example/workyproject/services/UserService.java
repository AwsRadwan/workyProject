package com.example.workyproject.services;

import com.example.workyproject.models.User;
import com.example.workyproject.repositories.CategoryRepo;
import com.example.workyproject.repositories.ReviewRepo;
import com.example.workyproject.repositories.RoleRepo;
import com.example.workyproject.repositories.ServiceRepo;
import com.example.workyproject.repositories.UserRepo;
import org.springframework.stereotype.Service;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;


@Service
public class UserService {
    private final CategoryRepo categoryRepo;
    private final ServiceRepo serviceRepo;
    private final UserRepo userrepo;
    private final ReviewRepo reviewRepo;
    private final RoleRepo roleRepo;
    private BCryptPasswordEncoder bCryptPasswordEncoder;

    public UserService(CategoryRepo categoryRepo,
                       ServiceRepo serviceRepo,
                       UserRepo userrepo,
                       ReviewRepo reviewRepo,
                       RoleRepo roleRepo,
                       BCryptPasswordEncoder bCryptPasswordEncoder) {
        this.categoryRepo = categoryRepo;
        this.serviceRepo = serviceRepo;
        this.userrepo = userrepo;
        this.reviewRepo = reviewRepo;
        this.roleRepo = roleRepo;
        this.bCryptPasswordEncoder = bCryptPasswordEncoder;
    }

    // 1
    public void saveWithUserRole(User user) {
        user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
        user.setRoles(roleRepo.findByName("ROLE_USER"));
        userrepo.save(user);
    }

    // 2
    public void saveUserWithAdminRole(User user) {
        user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
        user.setRoles(roleRepo.findByName("ROLE_ADMIN"));
        userrepo.save(user);
    }

    // 3 // We treat email as username
    public User findByUsername(String username) {
        return userrepo.findByEmail(username);
    }


    public void updateUser(User s) {
        userrepo.save(s);
    }

}
