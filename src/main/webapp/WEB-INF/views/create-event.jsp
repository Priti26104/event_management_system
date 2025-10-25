<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create New Event</title>
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
            <h2>Create New Event</h2>
            
            <form action="${pageContext.request.contextPath}/events/create" method="post" class="event-form">
                <div class="form-group">
                    <label for="title">Event Title:</label>
                    <input type="text" id="title" name="title" required>
                </div>
                
                <div class="form-group">
                    <label for="description">Description:</label>
                    <textarea id="description" name="description" rows="4" required></textarea>
                </div>
                
                <div class="form-group">
                    <label for="eventDate">Event Date:</label>
                    <input type="datetime-local" id="eventDate" name="eventDate" required>
                </div>
                
                <div class="form-group">
                    <label for="venue">Venue:</label>
                    <input type="text" id="venue" name="venue" required>
                </div>
                
                <div class="form-group">
                    <label for="organizer">Organizer:</label>
                    <input type="text" id="organizer" name="organizer" required>
                </div>
                
                <div class="form-group">
                    <label for="maxParticipants">Maximum Participants:</label>
                    <input type="number" id="maxParticipants" name="maxParticipants" min="1" required>
                </div>
                
                <button type="submit" class="btn btn-primary">Create Event</button>
            </form>
        </main>
    </div>
</body>
</html>