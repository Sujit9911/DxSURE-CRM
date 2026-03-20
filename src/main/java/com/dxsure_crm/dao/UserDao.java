package com.dxsure_crm.dao;

import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.annotation.Transactional;
import com.dxsure_crm.model.User;

@Repository
@Transactional
public class UserDao {

    @Autowired
    SessionFactory sf;

    public void saveUser(User user) {
        sf.getCurrentSession().saveOrUpdate(user);
    }

    public List<User> getAllUsers() {
        return sf.getCurrentSession()
                 .createQuery("from User", User.class)
                 .getResultList();
    }

    public User getUserById(Long id) {
        return sf.getCurrentSession().get(User.class, id);
    }

    public void deleteUser(Long id) {
        Session session = sf.getCurrentSession();
        User user = session.get(User.class, id);
        if (user != null) {
            session.delete(user);
        }
    }

    public User findByUsernameAndPassword(String username, String password) {
        List<User> list = sf.getCurrentSession()
            .createQuery("from User where username = :uname and password = :pass and status = 'ACTIVE'", User.class)
            .setParameter("uname", username)
            .setParameter("pass", password)
            .getResultList();
        return list.isEmpty() ? null : list.get(0);
    }
}
