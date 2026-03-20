package com.dxsure_crm.dao;

import java.util.List;

import javax.persistence.Query;
import org.springframework.transaction.annotation.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dxsure_crm.model.Admin;

@Repository
@Transactional
public class AdminDao {

    @Autowired
    SessionFactory sf;

    public List<Admin> getalladmins() {
        return sf.getCurrentSession()
                 .createQuery("from Admin", Admin.class)
                 .getResultList();
    }
}