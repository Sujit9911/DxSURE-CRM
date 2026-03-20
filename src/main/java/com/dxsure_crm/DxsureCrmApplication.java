package com.dxsure_crm;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.orm.jpa.JpaBaseConfiguration;
import org.springframework.boot.autoconfigure.orm.jpa.HibernateJpaAutoConfiguration;
import org.springframework.boot.autoconfigure.transaction.TransactionAutoConfiguration;

@SpringBootApplication(exclude = {
    HibernateJpaAutoConfiguration.class,
    TransactionAutoConfiguration.class
})
public class DxsureCrmApplication {

    public static void main(String[] args) {
        SpringApplication.run(DxsureCrmApplication.class, args);
        System.out.println("DXSure CRM Application is running...");
    }
}