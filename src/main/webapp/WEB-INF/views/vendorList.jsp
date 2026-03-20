<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>Vendor Management</title>
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
<li><a href="/vendor/list">Vendor Management</a></li>
<li><a href="/logout">Logout</a></li>
           
        </ul>
    </div>

    <!-- Main Content -->
    <div class="main-content">

        <div class="table-container">

            <div style="display:flex; justify-content:space-between; margin-bottom:20px;">
                <h2>Vendor Management</h2>
                <a href="/vendor/add" class="btn add-btn">+ Add Vendor</a>
            </div>

            <table>
                <thead>
                <tr>
                    <th>ID</th>
                    <th>Vendor Name</th>
                    <th>Company</th>
                    <th>Phone</th>
                    <th>Category</th>
                    <th>Registered At</th>
                    <th>Actions</th>
                </tr>
                </thead>

                <tbody>
                <c:forEach var="vendor" items="${vendors}">
                    <tr>
                        <td>${vendor.id}</td>
                        <td>${vendor.vendorName}</td>
                        <td>${vendor.companyName}</td>
                        <td>${vendor.phone}</td>
                        <td>${vendor.category}</td>
                        <td>${vendor.registeredAt}</td>
                        <td>
                            <a href="/vendor/edit/${vendor.id}" class="btn edit-btn">Edit</a>
                            <a href="/vendor/delete/${vendor.id}" class="btn delete-btn">Delete</a>
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
