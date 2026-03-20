<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>User Management</title>
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
                <h2>User Management</h2>
                <a href="/user/add" class="btn add-btn">+ Add User</a>
            </div>

            <table>
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Username</th>
                        <th>Role</th>
                        <th>Email</th>
                        <th>Status</th>
                        <th>Actions</th>
                    </tr>
                </thead>

                <tbody>
                    <c:forEach var="user" items="${users}">
                        <tr>
                            <td>${user.id}</td>
                            <td>${user.name}</td>
                            <td>${user.username}</td>
                            <td>${user.role}</td>
                            <td>${user.email}</td>
                            <td>
                                <span class="${user.status == 'ACTIVE' ? 'active' : 'inactive'}">
                                    ${user.status}
                                </span>
                            </td>
                            <td>
                                <a href="/user/edit/${user.id}" class="btn edit-btn">Edit</a>
                                <a href="/user/delete/${user.id}" class="btn delete-btn">Delete</a>
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
