package com.admin.auth;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Repository;


@Repository
public class AdminService {

	@Autowired
    private MongoTemplate mongoTemplate;
	 public static final String COLLECTION_NAME = "schools_list";
	 public Admin getAdminDetails(String school_id) {
		 	Query query = new Query();
		 	query.addCriteria(Criteria.where("school_id").is(school_id));
	        return  mongoTemplate.findOne(query,Admin.class, COLLECTION_NAME);
	    }
}
