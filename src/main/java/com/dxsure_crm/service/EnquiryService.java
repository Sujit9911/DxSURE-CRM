package com.dxsure_crm.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.dxsure_crm.dao.EnquiryDao;
import com.dxsure_crm.model.Enquiry;

@Service
public class EnquiryService {

    @Autowired
    EnquiryDao enquiryDao;

    public List<Enquiry> getAllEnquiries() {
        return enquiryDao.getAllEnquiries();
    }

    public Enquiry getEnquiryById(Long id) {
        return enquiryDao.getEnquiryById(id);
    }

    public void saveEnquiry(Enquiry enquiry) {
        enquiryDao.saveEnquiry(enquiry);
    }

    public void deleteEnquiry(Long id) {
        enquiryDao.deleteEnquiry(id);
    }
}
