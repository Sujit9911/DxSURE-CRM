package com.dxsure_crm.dao;

import java.util.List;

import javax.persistence.Query;
import org.springframework.transaction.annotation.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dxsure_crm.model.Enquiry;
@Repository
@Transactional
public class EnquiryDao {

    @Autowired
    SessionFactory sf;

    public void saveEnquiry(Enquiry enquiry) {
        sf.getCurrentSession().saveOrUpdate(enquiry);
    }

    public List<Enquiry> getAllEnquiries() {
        return sf.getCurrentSession()
                 .createQuery("from Enquiry", Enquiry.class)
                 .getResultList();
    }

    public Enquiry getEnquiryById(Long id) {
        return sf.getCurrentSession().get(Enquiry.class, id);
    }

    public void deleteEnquiry(Long id) {
        Session session = sf.getCurrentSession();
        Enquiry enquiry = session.get(Enquiry.class, id);
        if (enquiry != null) {
            session.delete(enquiry);
        }
    }
}