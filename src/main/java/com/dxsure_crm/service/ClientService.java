package com.dxsure_crm.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dxsure_crm.dao.ClientDao;
import com.dxsure_crm.model.Client;

@Service
public class ClientService {

    @Autowired
    ClientDao clientDao;

    public List<Client> getAllClients() {
        return clientDao.getAllClients();
    }

    public Client getClientById(Long id) {
        return clientDao.getClientById(id);
    }

    public void saveClient(Client client) {
        clientDao.saveClient(client);
    }

    public void deleteClient(Long id) {
        clientDao.deleteClient(id);
    }
}
