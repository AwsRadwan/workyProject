package com.example.workyproject.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.example.workyproject.models.Service;

@Repository
public interface ServiceRepo extends CrudRepository<Service, Long> {
	List<Service> findAll();
	
}
