package com.example.workyproject.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.example.workyproject.models.UserService;

@Repository
public interface ReviewRepo extends CrudRepository<UserService, Long> {
	List<UserService> findAll();

}
