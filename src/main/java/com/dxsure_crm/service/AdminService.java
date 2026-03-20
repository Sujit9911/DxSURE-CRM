package com.dxsure_crm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dxsure_crm.dao.AdminDao;
import com.dxsure_crm.model.Admin;

@Service
public class AdminService {

	@Autowired
	AdminDao adminDao;

	public boolean verifyAdmin(String username, String password) {
		List<Admin> admins = adminDao.getalladmins();
		for (Admin admin : admins) {
			if (admin.getUsername().equals(username) && admin.getPassword().equals(password)) {
				return true;
			}
		}

		return false;
	}

}
