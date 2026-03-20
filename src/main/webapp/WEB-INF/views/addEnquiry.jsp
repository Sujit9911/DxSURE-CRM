<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Add Enquiry</title>
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

        <div class="form-card">
            <h2>Add Enquiry</h2>

            <form action="/enquiry/save" method="post">
                <input type="text" name="clientName" placeholder="Client Name" required>
                <input type="text" name="clientPhone" placeholder="Client Phone">
                <input type="email" name="clientEmail" placeholder="Client Email">
                <input type="text" name="subject" placeholder="Subject" required>

                <select name="source">
                    <option value="Walk-in">Walk-in</option>
                    <option value="Phone">Phone</option>
                    <option value="Email">Email</option>
                    <option value="Website">Website</option>
                </select>

                <select name="priority">
                    <option value="Low">Low</option>
                    <option value="Medium">Medium</option>
                    <option value="High">High</option>
                </select>

                <button type="submit" class="btn add-btn">Save Enquiry</button>
            </form>
        </div>

    </div>

</div>

</body>
</html>
