<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Add Follow-Up</title>
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
            <h2>Add Follow-Up</h2>

            <form action="/followup/save" method="post">
                <input type="text" name="clientName" placeholder="Client Name" required>
                <input type="text" name="clientPhone" placeholder="Client Phone">

                <select name="mode">
                    <option value="Call">Call</option>
                    <option value="Email">Email</option>
                    <option value="Meeting">Meeting</option>
                    <option value="WhatsApp">WhatsApp</option>
                </select>

                <select name="outcome">
                    <option value="Interested">Interested</option>
                    <option value="Not Interested">Not Interested</option>
                    <option value="Callback">Callback</option>
                    <option value="No Response">No Response</option>
                </select>

                <input type="date" name="followUpDate" placeholder="Follow-Up Date">
                <input type="date" name="nextFollowUpDate" placeholder="Next Follow-Up Date">

                <button type="submit" class="btn add-btn">Save Follow-Up</button>
            </form>
        </div>

    </div>

</div>

</body>
</html>
