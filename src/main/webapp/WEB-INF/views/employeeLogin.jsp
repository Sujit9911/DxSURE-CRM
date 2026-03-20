<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Employee Login</title>
<link rel="stylesheet" href="/style.css">
</head>
<body class="login-page">

<div class="login-wrapper">
    <div class="login-card">
        <h1>Employee Portal</h1>
        <p>Secure Login Access</p>

        <form action="verifyEmployee" method="post" class="form-group">
            <input type="text" name="username" placeholder="Username" required>
            <input type="password" name="password" placeholder="Password" required>

            <button type="submit" class="btn employee-btn">
                Login as Employee
            </button>
        </form>
    </div>
</div>

</body>
</html>
