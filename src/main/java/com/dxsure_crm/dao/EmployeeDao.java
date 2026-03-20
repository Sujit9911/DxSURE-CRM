package com.dxsure_crm.dao;

import java.util.List;

import javax.persistence.Query;
import org.springframework.transaction.annotation.Transactional;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dxsure_crm.model.Employee;

@Repository
@Transactional
public class EmployeeDao {

    @Autowired
    SessionFactory sf;

    public List<Employee> getallemployees() {
        return sf.getCurrentSession()
                 .createQuery("from Employee", Employee.class)
                 .getResultList();
    }
}