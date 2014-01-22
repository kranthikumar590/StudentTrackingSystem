package com.admin.auth;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Repository;

@Repository
public class AdminService {
	static Logger log = Logger.getLogger(AdminService.class.getName());
	@Autowired
	private MongoTemplate mongoTemplate;

	public static final String COLLECTION_NAME = "schools_list";

	public Admin getAdminDetails(String school_id) {
		Query query = new Query();
		query.addCriteria(Criteria.where("school_id").is(school_id));
		// System.out.println(" hashcode getadmin details " + this.hashCode());
		return mongoTemplate.findOne(query, Admin.class, COLLECTION_NAME);
	}

	public void setAdminDetails(Admin admin1) {
		// System.out.println("hashcode setadmin details" + this.hashCode());
		// System.out.println("template --> " + mongoTemplate);
		try {
			mongoTemplate.insert(admin1, COLLECTION_NAME);
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public List<Admin> listSchools() {
		return mongoTemplate.findAll(Admin.class, COLLECTION_NAME);
	}
}
