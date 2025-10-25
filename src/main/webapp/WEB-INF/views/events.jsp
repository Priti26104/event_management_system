<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>College Events</title>
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
            <h2>Upcoming Events</h2>
            
            <c:if test="${not empty events}">
                <div class="events-grid">
                    <c:forEach var="event" items="${events}">
                        <div class="event-card">
                            <h3>${event.title}</h3>
                            <p class="event-date">
                                <strong>Date:</strong> ${event.eventDate}
                            </p>
                            <p class="event-venue">
                                <strong>Venue:</strong> ${event.venue}
                            </p>
                            <p class="event-organizer">
                                <strong>Organizer:</strong> ${event.organizer}
                            </p>
                            <p class="event-participants">
                                Registered: ${event.registeredUsers.size()}/${event.maxParticipants}
                            </p>
                            <a href="${pageContext.request.contextPath}/events/${event.id}" 
                               class="btn btn-primary">View Details</a>
                        </div>
                    </c:forEach>
                </div>
            </c:if>
            
            <c:if test="${empty events}">
                <p>No events scheduled yet.</p>
            </c:if>
        </main>
    </div>
</body>
</html>