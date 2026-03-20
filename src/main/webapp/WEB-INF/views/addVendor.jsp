<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Add Vendor</title>
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

        <div class="form-card">
            <h2>Add Vendor</h2>

            <form action="/vendor/save" method="post">
                <input type="text" name="vendorName" placeholder="Vendor Name" required>
                <input type="text" name="companyName" placeholder="Company Name">
                <input type="text" name="phone" placeholder="Phone">

                <select name="category">
                    <option value="IT">IT</option>
                    <option value="Supplies">Supplies</option>
                    <option value="Services">Services</option>
                    <option value="Logistics">Logistics</option>
                    <option value="Other">Other</option>
                </select>

                <button type="submit" class="btn add-btn">Save Vendor</button>
            </form>
        </div>

    </div>

</div>

</body>
</html>
