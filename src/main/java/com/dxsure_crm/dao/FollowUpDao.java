package com.dxsure_crm.dao;

import java.util.List;

import javax.persistence.Query;
import org.springframework.transaction.annotation.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dxsure_crm.model.FollowUp;
@Repository
@Transactional
public class FollowUpDao {

    @Autowired
    SessionFactory sf;

    public void saveFollowUp(FollowUp followUp) {
        sf.getCurrentSession().saveOrUpdate(followUp);
    }

    public List<FollowUp> getAllFollowUps() {
        return sf.getCurrentSession()
                 .createQuery("from FollowUp", FollowUp.class)
                 .getResultList();
    }

    public FollowUp getFollowUpById(Long id) {
        return sf.getCurrentSession().get(FollowUp.class, id);
    }

    public void deleteFollowUp(Long id) {
        Session session = sf.getCurrentSession();
        FollowUp followUp = session.get(FollowUp.class, id);
        if (followUp != null) {
            session.delete(followUp);
        }
    }
}
