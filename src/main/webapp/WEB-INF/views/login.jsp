<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login Portal – DXSURE</title>
    <link rel="stylesheet" href="/style.css">
    <link href="https://fonts.googleapis.com/css2?family=Syne:wght@600;800&family=DM+Sans:wght@400;500&display=swap" rel="stylesheet">
    <style>
        *, *::before, *::after { box-sizing: border-box; margin: 0; padding: 0; }

        body {
            font-family: 'DM Sans', sans-serif;
            min-height: 100vh;
            background: #0b1120;
            display: flex;
            overflow: hidden;
        }

        /* ── Left panel ── */
        .side-panel {
            width: 55%;
            position: relative;
            background: linear-gradient(135deg, #0f1e3d 0%, #0b1120 60%, #051224 100%);
            display: flex;
            flex-direction: column;
            justify-content: center;
            padding: 60px;
            overflow: hidden;
        }

        /* decorative mesh */
        .side-panel::before {
            content: '';
            position: absolute;
            inset: 0;
            background:
                radial-gradient(ellipse 60% 50% at 20% 30%, rgba(37,99,235,0.18) 0%, transparent 70%),
                radial-gradient(ellipse 40% 40% at 80% 80%, rgba(16,185,129,0.12) 0%, transparent 70%);
            pointer-events: none;
        }

        .grid-lines {
            position: absolute;
            inset: 0;
            background-image:
                linear-gradient(rgba(255,255,255,0.025) 1px, transparent 1px),
                linear-gradient(90deg, rgba(255,255,255,0.025) 1px, transparent 1px);
            background-size: 48px 48px;
        }

        .brand {
            position: relative;
            z-index: 2;
        }

        .brand-logo {
            display: flex;
            align-items: center;
            gap: 12px;
            margin-bottom: 48px;
        }

        .logo-icon {
            width: 44px;
            height: 44px;
            background: linear-gradient(135deg, #2563eb, #10b981);
            border-radius: 12px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 22px;
        }

        .logo-name {
            font-family: 'Syne', sans-serif;
            font-size: 22px;
            font-weight: 800;
            color: #fff;
            letter-spacing: 2px;
        }

        .headline {
            font-family: 'Syne', sans-serif;
            font-size: clamp(32px, 3vw, 48px);
            font-weight: 800;
            color: #fff;
            line-height: 1.15;
            margin-bottom: 20px;
        }

        .headline span {
            background: linear-gradient(90deg, #60a5fa, #34d399);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        .tagline {
            font-size: 15px;
            color: rgba(255,255,255,0.5);
            line-height: 1.7;
            max-width: 380px;
            margin-bottom: 48px;
        }

        /* stats row */
        .stats {
            display: flex;
            gap: 36px;
        }

        .stat-item {
            display: flex;
            flex-direction: column;
            gap: 4px;
        }

        .stat-value {
            font-family: 'Syne', sans-serif;
            font-size: 26px;
            font-weight: 800;
            color: #fff;
        }

        .stat-label {
            font-size: 12px;
            color: rgba(255,255,255,0.4);
            text-transform: uppercase;
            letter-spacing: 1px;
        }

        .stat-divider {
            width: 1px;
            background: rgba(255,255,255,0.12);
            align-self: stretch;
        }

        /* feature pills */
        .features {
            display: flex;
            flex-wrap: wrap;
            gap: 10px;
            margin-top: 40px;
        }

        .feature-pill {
            background: rgba(255,255,255,0.06);
            border: 1px solid rgba(255,255,255,0.1);
            border-radius: 100px;
            padding: 6px 14px;
            font-size: 12px;
            color: rgba(255,255,255,0.55);
            display: flex;
            align-items: center;
            gap: 6px;
        }

        .feature-pill .dot {
            width: 6px;
            height: 6px;
            border-radius: 50%;
            background: #10b981;
        }

        /* ── Right panel (login card) ── */
        .login-wrapper {
            width: 45%;
            display: flex;
            align-items: center;
            justify-content: center;
            background: #0d1627;
            border-left: 1px solid rgba(255,255,255,0.06);
            padding: 40px 32px;
        }

        .login-card {
            width: 100%;
            max-width: 360px;
        }

        .login-card h2 {
            font-family: 'Syne', sans-serif;
            font-size: 26px;
            font-weight: 800;
            color: #fff;
            margin-bottom: 6px;
        }

        .login-card p {
            font-size: 14px;
            color: rgba(255,255,255,0.45);
            margin-bottom: 4px;
        }

        .divider {
            height: 1px;
            background: rgba(255,255,255,0.08);
            margin: 22px 0;
        }

        .admin-btn {
            background: linear-gradient(45deg, #1e3a8a, #2563eb);
            color: white;
            padding: 14px 18px;
            border-radius: 12px;
            text-align: center;
            font-weight: 600;
            font-size: 15px;
            text-decoration: none;
            transition: 0.25s;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
            box-shadow: 0 4px 20px rgba(37,99,235,0.25);
        }

        .employee-btn {
            background: linear-gradient(45deg, #065f46, #10b981);
            color: white;
            padding: 14px 18px;
            border-radius: 12px;
            text-align: center;
            font-weight: 600;
            font-size: 15px;
            text-decoration: none;
            transition: 0.25s;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
            box-shadow: 0 4px 20px rgba(16,185,129,0.2);
        }

        .admin-btn:hover, .employee-btn:hover {
            opacity: 0.92;
            transform: translateY(-2px);
        }

        .btn-desc {
            font-size: 11px;
            opacity: 0.65;
            margin-top: 5px;
            text-align: center;
        }

        .logout-msg {
            background: rgba(16,185,129,0.12);
            border: 1px solid rgba(16,185,129,0.3);
            color: #6ee7b7;
            padding: 10px 14px;
            border-radius: 10px;
            font-size: 13px;
            margin-bottom: 16px;
        }

        .secure-badge {
            display: flex;
            align-items: center;
            gap: 6px;
            justify-content: center;
            margin-top: 24px;
            font-size: 12px;
            color: rgba(255,255,255,0.3);
        }

        .secure-badge svg {
            width: 13px;
            height: 13px;
            opacity: 0.5;
        }

        .footer {
            margin-top: 28px;
            font-size: 12px;
            color: rgba(255,255,255,0.2);
            text-align: center;
        }

        @media (max-width: 768px) {
            body { flex-direction: column; }
            .side-panel { width: 100%; padding: 36px 28px; min-height: auto; }
            .login-wrapper { width: 100%; border-left: none; border-top: 1px solid rgba(255,255,255,0.06); }
            .stats { gap: 20px; }
        }
    </style>
</head>
<body>

<!-- ── Left branding panel ── -->
<div class="side-panel">
    <div class="grid-lines"></div>
    <div class="brand">

        <div class="brand-logo">
            <div class="logo-icon">🛡️</div>
            <div class="logo-name">DXSURE</div>
        </div>

        <h1 class="headline">Secure Access<br>to Your <span>Workspace</span></h1>
        <p class="tagline">
            DXSURE Portal provides role-based access for administrators and employees to manage operations, review data, and collaborate securely.
        </p>

        <div class="stats">
            <div class="stat-item">
                <div class="stat-value">99.9%</div>
                <div class="stat-label">Uptime</div>
            </div>
            <div class="stat-divider"></div>
            <div class="stat-item">
                <div class="stat-value">256-bit</div>
                <div class="stat-label">Encryption</div>
            </div>
            <div class="stat-divider"></div>
            <div class="stat-item">
                <div class="stat-value">24/7</div>
                <div class="stat-label">Support</div>
            </div>
        </div>

        <div class="features">
            <div class="feature-pill"><span class="dot"></span> Role-Based Access</div>
            <div class="feature-pill"><span class="dot"></span> Audit Logging</div>
            <div class="feature-pill"><span class="dot"></span> SSO Ready</div>
            <div class="feature-pill"><span class="dot"></span> GDPR Compliant</div>
            <div class="feature-pill"><span class="dot"></span> Session Timeout</div>
        </div>

    </div>
</div>

<!-- ── Right login panel ── -->
<div class="login-wrapper">
    <div class="login-card">

        <h2>Welcome Back</h2>
        <p>Select your account type to continue</p>

        <div class="divider"></div>

        <!-- Logout success message -->
        <% if ("logout".equals(request.getParameter("status"))) { %>
            <div class="logout-msg">✓ You have been logged out successfully.</div>
        <% } %>

        <div style="display:flex; flex-direction:column; gap:14px;">

            <div>
                <a href="/adminLogin" class="admin-btn">🔐 Admin Login</a>
                <p class="btn-desc" style="color:rgba(255,255,255,0.35);">Full system access &amp; configuration</p>
            </div>

            <div>
                <a href="/employeeLogin" class="employee-btn">👤 Employee Login</a>
                <p class="btn-desc" style="color:rgba(255,255,255,0.35);">Access your dashboard &amp; tasks</p>
            </div>

        </div>

        <div class="secure-badge">
            <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
                <path d="M12 22s8-4 8-10V5l-8-3-8 3v7c0 6 8 10 8 10z"/>
            </svg>
            Protected by enterprise-grade security
        </div>

        <div class="footer">© 2026 DXSURE Portal &nbsp;·&nbsp; v2.4.1 &nbsp;·&nbsp; All rights reserved</div>

    </div>
</div>

</body>
</html>
