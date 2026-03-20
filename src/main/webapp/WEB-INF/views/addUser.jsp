<%@ page contentType="text/html;charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <title>User Form</title>
<link rel="stylesheet" href="/style.css">
</head>
<body>

<div class="dashboard-container">

    <!-- Sidebar -->
    <div class="sidebar">
        <h2>DXSure CRM</h2>
        <ul>
              <li><a href="/user/list">User Management</a></li>
            <li><a href="/clients/list">Client Management</a></li>
            <li><a href="/vendors/list">Vendor Management</a></li>
            <li><a href="/logout">Logout</a></li>
        </ul>
    </div>

    <!-- Main Content -->
    <div class="main-content">

        <div class="form-container">
            <h2>Add User</h2>

            <form action="/user/save" method="post">

                <input type="hidden" name="id" value="${user.id}">

                <input type="text" name="name" placeholder="Full Name" required>
                <input type="text" name="username" placeholder="Username" required>
                <input type="password" name="password" placeholder="Password" required>

                <select name="role">
                    <option value="ADMIN">ADMIN</option>
                    <option value="EMPLOYEE">EMPLOYEE</option>
                </select>

                <input type="email" name="email" placeholder="Email">
                <input type="text" name="phone" placeholder="Phone">

                <select name="status">
                    <option value="ACTIVE">ACTIVE</option>
                    <option value="INACTIVE">INACTIVE</option>
                </select>

                <button type="submit" class="btn add-btn">Save User</button>

            </form>
        </div>

    </div>

</div>

</body>

</html>
