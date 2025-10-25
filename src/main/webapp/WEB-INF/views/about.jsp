<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>About - Event Management System</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css">
</head>
<body>
    <div class="container">
        <header>
            <h1>College Event Management System</h1>
            <nav>
                <a href="${pageContext.request.contextPath}/events">All Events</a>
                <a href="${pageContext.request.contextPath}/events/create">Create Event</a>
                <a href="${pageContext.request.contextPath}/about">About</a>
            </nav>
        </header>
        
        <main>
            <div class="about-content">
                <h2>About Our Event Management System</h2>
                
                <div class="about-section">
                    <h3>System Overview</h3>
                    <p>
                        The College Event Management System is designed to streamline the process 
                        of organizing, managing, and participating in college events. Our platform 
                        provides an intuitive interface for both event organizers and participants.
                    </p>
                </div>
                
                <div class="about-section">
                    <h3>Key Features</h3>
                    <ul>
                        <li>Create and manage college events</li>
                        <li>Event registration and participation tracking</li>
                        <li>Real-time event updates</li>
                        <li>User-friendly interface</li>
                        <li>Automated deployment with Jenkins</li>
                    </ul>
                </div>
                
                <div class="about-section">
                    <h3>Technology Stack</h3>
                    <ul>
                        <li>Backend: Java Spring MVC</li>
                        <li>Frontend: JSP, CSS, JavaScript</li>
                        <li>Build Tool: Apache Maven</li>
                        <li>Version Control: GitHub</li>
                        <li>CI/CD: Jenkins</li>
                        <li>Server: Apache Tomcat</li>
                    </ul>
                </div>
            </div>
        </main>
    </div>
</body>
</html>