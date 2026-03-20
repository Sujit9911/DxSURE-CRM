package com.dxsure_crm.dao;

import java.util.List;

import javax.persistence.Query;
import org.springframework.transaction.annotation.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dxsure_crm.model.Vendor;

@Repository
@Transactional
public class VendorDao {

    @Autowired
    SessionFactory sf;

    public void saveVendor(Vendor vendor) {
        sf.getCurrentSession().saveOrUpdate(vendor);
    }

    public List<Vendor> getAllVendors() {
        return sf.getCurrentSession()
                 .createQuery("from Vendor", Vendor.class)
                 .getResultList();
    }

    public Vendor getVendorById(Long id) {
        return sf.getCurrentSession().get(Vendor.class, id);
    }

    public void deleteVendor(Long id) {
        Session session = sf.getCurrentSession();
        Vendor vendor = session.get(Vendor.class, id);
        if (vendor != null) {
            session.delete(vendor);
        }
    }
}