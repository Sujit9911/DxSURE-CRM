<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>Follow-Up Management</title>
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
                <h2>Follow-Up Management</h2>
                <a href="/followup/add" class="btn add-btn">+ Add Follow-Up</a>
            </div>

            <table>
                <thead>
                <tr>
                    <th>ID</th>
                    <th>Client Name</th>
                    <th>Phone</th>
                    <th>Mode</th>
                    <th>Outcome</th>
                    <th>Follow-Up Date</th>
                    <th>Next Follow-Up</th>
                    <th>Actions</th>
                </tr>
                </thead>

                <tbody>
                <c:forEach var="followup" items="${followups}">
                    <tr>
                        <td>${followup.id}</td>
                        <td>${followup.clientName}</td>
                        <td>${followup.clientPhone}</td>
                        <td>${followup.mode}</td>
                        <td>${followup.outcome}</td>
                        <td>${followup.followUpDate}</td>
                        <td>${followup.nextFollowUpDate}</td>
                        <td>
                            <a href="/followup/edit/${followup.id}" class="btn edit-btn">Edit</a>
                            <a href="/followup/delete/${followup.id}" class="btn delete-btn">Delete</a>
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
