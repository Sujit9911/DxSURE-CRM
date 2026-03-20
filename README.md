# DXSure CRM

A Customer Relationship Management (CRM) web application built with Spring Boot, Hibernate, and JSP.

## 🚀 Tech Stack

- **Backend:** Java, Spring Boot 2.7.6
- **ORM:** Hibernate 5.6 with SessionFactory
- **Database:** MySQL 8
- **Frontend:** JSP, CSS
- **Build Tool:** Maven
- **Server:** Apache Tomcat (Embedded)

## 📁 Project Structure
```
dxsure-crm/
├── src/main/java/com/dxsure_crm/
│   ├── config/
│   │   └── HibernateConfig.java
│   ├── controller/
│   │   ├── AdminController.java
│   │   ├── ClientController.java
│   │   ├── EmployeeController.java
│   │   ├── EnquiryController.java
│   │   ├── FollowUpController.java
│   │   ├── LoginController.java
│   │   ├── LogoutController.java
│   │   ├── UserController.java
│   │   └── VendorController.java
│   ├── dao/
│   │   ├── AdminDao.java
│   │   ├── ClientDao.java
│   │   ├── EmployeeDao.java
│   │   ├── EnquiryDao.java
│   │   ├── FollowUpDao.java
│   │   ├── UserDao.java
│   │   └── VendorDao.java
│   ├── model/
│   │   ├── Admin.java
│   │   ├── Client.java
│   │   ├── Employee.java
│   │   ├── Enquiry.java
│   │   ├── FollowUp.java
│   │   ├── User.java
│   │   └── Vendor.java
│   ├── service/
│   │   ├── AdminService.java
│   │   ├── ClientService.java
│   │   ├── EmployeeService.java
│   │   ├── EnquiryService.java
│   │   ├── FollowUpService.java
│   │   ├── LoginService.java
│   │   ├── UserService.java
│   │   └── VendorService.java
│   └── DxsureCrmApplication.java
├── src/main/resources/
│   ├── static/
│   │   └── style.css
│   └── application.properties
├── src/main/webapp/WEB-INF/views/
│   ├── adminDashboard.jsp
│   ├── adminLogin.jsp
│   ├── employeeDashboard.jsp
│   ├── employeeLogin.jsp
│   ├── login.jsp
│   ├── addClient.jsp
│   ├── clientList.jsp
│   ├── addEnquiry.jsp
│   ├── enquiryList.jsp
│   ├── addFollowUp.jsp
│   ├── followUpList.jsp
│   ├── addUser.jsp
│   ├── userList.jsp
│   ├── addVendor.jsp
│   └── vendorList.jsp
└── pom.xml
```

## ✨ Features

### Admin Panel
- Admin Login
- Dashboard with total Users, Clients and Vendors count
- User Management (Add, Edit, Delete, List)
- Client Management (Add, Edit, Delete, List)
- Vendor Management (Add, Edit, Delete, List)

### Employee Panel
- Employee Login
- Dashboard with total Enquiries, Follow-Ups and Vendors count
- Enquiry Management (Add, Edit, Delete, List)
- Follow-Up Management (Add, Edit, Delete, List)
- Vendor Management (View)

## ⚙️ Setup & Installation

### Prerequisites
- Java 17
- MySQL 8
- Maven

### Steps

**1. Clone the repository:**
```bash
git clone https://github.com/Sujit9911/DxSURE-CRM.git
cd DxSURE-CRM
```

**2. Create MySQL database:**
```sql
CREATE DATABASE dx_sure_crm;
```

**3. Configure database in `application.properties`:**
```properties
spring.datasource.url=jdbc:mysql://localhost:3306/dx_sure_crm?createDatabaseIfNotExist=true&useSSL=false&allowPublicKeyRetrieval=true&serverTimezone=UTC
spring.datasource.username=root
spring.datasource.password=root
```

**4. Run the application:**
```bash
mvn spring-boot:run
```

**5. Open in browser:**
```
http://localhost:8080
```

## 🔐 Login URLs

| Role     | URL             |
|----------|-----------------|
| Admin    | /adminLogin     |
| Employee | /employeeLogin  |

## 🗄️ Database Tables

| Table      | Description              |
|------------|--------------------------|
| admin      | Admin credentials        |
| users      | System users             |
| clients    | Client records           |
| vendors    | Vendor records           |
| enquiries  | Customer enquiries       |
| followups  | Follow-up records        |
| employee   | Employee credentials     |

## 👨‍💻 Developer

**Sujit Gawali**
- GitHub: [@Sujit9911](https://github.com/Sujit9911)

## 📄 License

This project is open source and available under the [MIT License](LICENSE).
