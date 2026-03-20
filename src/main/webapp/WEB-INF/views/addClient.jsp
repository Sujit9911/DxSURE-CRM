<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Add Client</title>
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

        <div class="form-card">
            <h2>Add Client</h2>

            <form action="/client/save" method="post">
                <input type="text" name="name" placeholder="Client Name" required>
                <input type="email" name="email" placeholder="Email">
                <input type="text" name="phone" placeholder="Phone">
                <input type="text" name="companyName" placeholder="Company Name">

                <select name="status">
                    <option value="ACTIVE">ACTIVE</option>
                    <option value="INACTIVE">INACTIVE</option>
                </select>

                <button type="submit" class="btn add-btn">
                    Save Client
                </button>
            </form>
        </div>

    </div>

</div>

</body>
</html>
