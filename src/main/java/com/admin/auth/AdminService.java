package com.admin.auth;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.stereotype.Repository;


@Repository
public class AdminService {

	@Autowired
    private MongoTemplate mongoTemplate;
	 public static final String COLLECTION_NAME = "admin";
	 public List<Admin> getAdminDetails() {
	        return mongoTemplate.findAll(Admin.class, COLLECTION_NAME);
	    }
}
