package com.dxsure_crm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dxsure_crm.dao.VendorDao;
import com.dxsure_crm.model.Vendor;

@Service
public class VendorService {

    @Autowired
    VendorDao vendorDao;

    public List<Vendor> getAllVendors() {
        return vendorDao.getAllVendors();
    }

    public Vendor getVendorById(Long id) {
        return vendorDao.getVendorById(id);
    }

    public void saveVendor(Vendor vendor) {
        vendorDao.saveVendor(vendor);
    }

    public void deleteVendor(Long id) {
        vendorDao.deleteVendor(id);
    }
}
