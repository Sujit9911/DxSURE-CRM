<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Employee Dashboard</title>
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

        <h1 style="margin-bottom:30px;">Welcome, Employee 👋</h1>

        <div class="cards">

            <div class="card">
                <h3>Total Enquiries</h3>
                <p>${totalEnquiries}</p>
            </div>

            <div class="card">
                <h3>Follow-Ups Today</h3>
                <p>${totalFollowUps}</p>
            </div>

    
            <div class="card">
                <h3>Registered Vendors</h3>
                <p>${totalVendors}</p>
            </div>

        </div>

    </div>

</div>

</body>
</html>
