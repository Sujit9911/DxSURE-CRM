package com.dxsure_crm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dxsure_crm.dao.EmployeeDao;
import com.dxsure_crm.model.Employee;

@Service
public class EmployeeService {

	@Autowired
	EmployeeDao employeeDao;

	public boolean verifyEmployee(String username, String password) {
		List<Employee> employees = employeeDao.getallemployees();
		for (Employee employee : employees) {
			if (employee.getUsername().equals(username) && employee.getPassword().equals(password)) {
				return true;
			}
		}

		return false;
	}

}
