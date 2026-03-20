package com.dxsure_crm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dxsure_crm.dao.UserDao;
import com.dxsure_crm.model.User;

@Service
public class UserService {

    @Autowired
    UserDao userDao;

    // =========================
    // GET ALL USERS
    // =========================
    public List<User> getAllUsers() {
        return userDao.getAllUsers();
    }

    // =========================
    // GET USER BY ID
    // =========================
    public User getUserById(Long id) {
        return userDao.getUserById(id);
    }

    // =========================
    // SAVE OR UPDATE USER
    // =========================
    public void saveUser(User user) {
        userDao.saveUser(user);
    }

    // =========================
    // DELETE USER
    // =========================
    public void deleteUser(Long id) {
        userDao.deleteUser(id);
    }

}
