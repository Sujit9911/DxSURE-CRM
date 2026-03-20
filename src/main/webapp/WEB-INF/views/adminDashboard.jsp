<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Admin Dashboard</title>
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

        <h1 style="margin-bottom:30px;">Welcome, Admin 👋</h1>

        <div class="cards">

            <div class="card">
                <h3>Total Users</h3>
                <p>${totalUsers}</p>
            </div>

            <div class="card">
                <h3>Total Clients</h3>
                <p>${totalClients}</p>
                </div>
                  <div class="card">
<h3>Total Vendors</h3>
<p>${totalVendors}</p>
                </div>
              