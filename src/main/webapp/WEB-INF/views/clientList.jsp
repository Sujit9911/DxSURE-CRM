<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>Client Management</title>
<link rel="stylesheet" href="/style.css">
</head>
<body>

<div class="dashboard-container">

    <!-- Sidebar -->
    <div class="sidebar">
        <h2>DXSure CRM</h2>
        <ul>
           <li><a href="/user/list">User Management</a></li>
<li><a href="/client/list">Client Management</a></li>
<li><a href="/vendor/list">Vendor Management</a></li><li><a href="/logout">Logout</a></li>
        </ul>
    </div>

    <!-- Main Content -->
    <div class="main-content">

        <div class="table-container">

            <div style="display:flex; justify-content:space-between; margin-bottom:20px;">
                <h2>Client Management</h2>
                <a href="/client/add" class="btn add-btn">+ Add Client</a>
            </div>

            <table>
                <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Phone</th>
                    <th>Company</th>
                    <th>Status</th>
                    <th>Actions</th>
                </tr>
                </thead>

                <tbody>
                <c:forEach var="client" items="${clients}">
                    <tr>
                        <td>${client.id}</td>
                        <td>${client.name}</td>
                        <td>${client.email}</td>
                        <td>${client.phone}</td>
                        <td>${client.companyName}</td>
                        <td>
                            <span class="${client.status == 'ACTIVE' ? 'active' : 'inactive'}">
                                ${client.status}
                            </span>
                        </td>
                        <td>
                            <a href="/client/edit/${client.id}" class="btn edit-btn">Edit</a>
                            <a href="/client/delete/${client.id}" class="btn delete-btn">Delete</a>
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
