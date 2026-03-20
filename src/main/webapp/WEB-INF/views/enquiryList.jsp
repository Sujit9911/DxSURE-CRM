<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>Enquiry Management</title>
    <link rel="stylesheet" href="/style.css">
</head>
<body>

<div class="dashboard-container">

    <!-- Sidebar -->
    <div class="sidebar">
        <h2>DXSure CRM</h2>
        <ul>
            <li><a href="/enquiry/list">Enquiries</a></li>
            <li><a href="/followup/list">Follow-Ups</a></li>
            <li><a href="/vendor/list">Vendors</a></li>
            <li><a href="/logout">Logout</a></li>
        </ul>
    </div>

    <!-- Main Content -->
    <div class="main-content">

        <div class="table-container">

            <div style="display:flex; justify-content:space-between; margin-bottom:20px;">
                <h2>Enquiry Management</h2>
                <a href="/enquiry/add" class="btn add-btn">+ Add Enquiry</a>
            </div>

            <table>
                <thead>
                <tr>
                    <th>ID</th>
                    <th>Client Name</th>
                    <th>Phone</th>
                    <th>Subject</th>
                    <th>Source</th>
                    <th>Priority</th>
                    <th>Date</th>
                    <th>Actions</th>
                </tr>
                </thead>

                <tbody>
                <c:forEach var="enquiry" items="${enquiries}">
                    <tr>
                        <td>${enquiry.id}</td>
                        <td>${enquiry.clientName}</td>
                        <td>${enquiry.clientPhone}</td>
                        <td>${enquiry.subject}</td>
                        <td>${enquiry.source}</td>
                        <td>${enquiry.priority}</td>
                        <td>${enquiry.enquiryDate}</td>
                        <td>
                            <a href="/enquiry/edit/${enquiry.id}" class="btn edit-btn">Edit</a>
                            <a href="/enquiry/delete/${enquiry.id}" class="btn delete-btn">Delete</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>

            </table>

        </div>

    </div>

</div>

</body>
</html>
