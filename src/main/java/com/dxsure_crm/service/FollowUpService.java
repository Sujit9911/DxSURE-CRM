package com.dxsure_crm.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.dxsure_crm.dao.FollowUpDao;
import com.dxsure_crm.model.FollowUp;

@Service
public class FollowUpService {

    @Autowired
    FollowUpDao followUpDao;

    public List<FollowUp> getAllFollowUps() {
        return followUpDao.getAllFollowUps();
    }

    public FollowUp getFollowUpById(Long id) {
        return followUpDao.getFollowUpById(id);
    }

    public void saveFollowUp(FollowUp followUp) {
        followUpDao.saveFollowUp(followUp);
    }

    public void deleteFollowUp(Long id) {
        followUpDao.deleteFollowUp(id);
    }
}
