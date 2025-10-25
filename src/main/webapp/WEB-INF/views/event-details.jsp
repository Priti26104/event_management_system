<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>${event.title}</title>
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
            <div class="event-detail">
                <h2>${event.title}</h2>
                <div class="event-info">
                    <p><strong>Description:</strong> ${event.description}</p>
                    <p><strong>Date:</strong> ${event.eventDate}</p>
                    <p><strong>Venue:</strong> ${event.venue}</p>
                    <p><strong>Organizer:</strong> ${event.organizer}</p>
                    <p><strong>Available Spots:</strong> 
                       ${event.maxParticipants - event.registeredUsers.size()}/${event.maxParticipants}
                    </p>
                </div>
                
                <div class="registration-section">
                    <h3>Register for this Event</h3>
                    <form action="${pageContext.request.contextPath}/events/${event.id}/register" 
                          method="post" class="registration-form">
                        <input type="text" name="userName" placeholder="Enter your name" required>
                        <button type="submit" class="btn btn-success">Register</button>
                    </form>
                </div>
                
                <div class="registrations">
                    <h3>Registered Participants (${event.registeredUsers.size()})</h3>
                    <c:if test="${not empty event.registeredUsers}">
                        <ul>
                            <c:forEach var="user" items="${event.registeredUsers}">
                                <li>${user}</li>
                            </c:forEach>
                        </ul>
                    </c:if>
                    <c:if test="${empty event.registeredUsers}">
                        <p>No participants registered yet.</p>
                    </c:if>
                </div>
            </div>
        </main>
    </div>
</body>
</html>