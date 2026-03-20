package com.dxsure_crm.model;

import java.time.LocalDateTime;
import javax.persistence.*;

@Entity
@Table(name = "enquiries")
public class Enquiry {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false)
    private String clientName;

    private String clientPhone;

    private String clientEmail;

    private String subject;

    private String source;    // Walk-in / Phone / Email / Website

    private String priority;  // Low / Medium / High

    private LocalDateTime enquiryDate;

    public Enquiry() {
        this.enquiryDate = LocalDateTime.now();
    }

    public Long getId() { return id; }
    public void setId(Long id) { this.id = id; }

    public String getClientName() { return clientName; }
    public void setClientName(String clientName) { this.clientName = clientName; }

    public String getClientPhone() { return clientPhone; }
    public void setClientPhone(String clientPhone) { this.clientPhone = clientPhone; }

    public String getClientEmail() { return clientEmail; }
    public void setClientEmail(String clientEmail) { this.clientEmail = clientEmail; }

    public String getSubject() { return subject; }
    public void setSubject(String subject) { this.subject = subject; }

    public String getSource() { return source; }
    public void setSource(String source) { this.source = source; }

    public String getPriority() { return priority; }
    public void setPriority(String priority) { this.priority = priority; }

    public LocalDateTime getEnquiryDate() { return enquiryDate; }
    public void setEnquiryDate(LocalDateTime enquiryDate) { this.enquiryDate = enquiryDate; }
}
