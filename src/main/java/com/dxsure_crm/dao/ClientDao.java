package com.dxsure_crm.dao;

import java.util.List;

import javax.persistence.Query;
import org.springframework.transaction.annotation.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dxsure_crm.model.Client;

@Repository
@Transactional
public class ClientDao {

    @Autowired
    SessionFactory sf;

    public void saveClient(Client client) {
        sf.getCurrentSession().saveOrUpdate(client);
    }

    public List<Client> getAllClients() {
        return sf.getCurrentSession()
                 .createQuery("from Client", Client.class)
                 .getResultList();
    }

    public Client getClientById(Long id) {
        return sf.getCurrentSession().get(Client.class, id);
    }

    public void deleteClient(Long id) {
        Session session = sf.getCurrentSession();
        Client client = session.get(Client.class, id);
        if (client != null) {
            session.delete(client);
        }
    }
}
