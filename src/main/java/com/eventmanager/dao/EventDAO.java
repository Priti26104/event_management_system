package com.eventmanager.dao;

import com.eventmanager.model.Event;
import org.springframework.stereotype.Repository;
import java.util.*;
import java.util.concurrent.atomic.AtomicInteger;

@Repository
public class EventDAO {
    private final Map<Integer, Event> events = new HashMap<>();
    private final AtomicInteger idCounter = new AtomicInteger(1);
    
    public EventDAO() {
        // Initialize with sample events
        Event event1 = new Event();
        event1.setId(idCounter.getAndIncrement());
        event1.setTitle("Tech Symposium 2024");
        event1.setDescription("Annual technology conference featuring latest innovations");
        event1.setEventDate(new Date(System.currentTimeMillis() + 86400000 * 7));
        event1.setVenue("Main Auditorium");
        event1.setOrganizer("Computer Science Department");
        event1.setMaxParticipants(200);
        
        Event event2 = new Event();
        event2.setId(idCounter.getAndIncrement());
        event2.setTitle("Cultural Fest");
        event2.setDescription("College cultural festival with music, dance and drama");
        event2.setEventDate(new Date(System.currentTimeMillis() + 86400000 * 14));
        event2.setVenue("College Ground");
        event2.setOrganizer("Student Council");
        event2.setMaxParticipants(500);
        
        events.put(event1.getId(), event1);
        events.put(event2.getId(), event2);
    }
    
    public List<Event> getAllEvents() {
        return new ArrayList<>(events.values());
    }
    
    public Event getEventById(int id) {
        return events.get(id);
    }
    
    public void createEvent(Event event) {
        event.setId(idCounter.getAndIncrement());
        events.put(event.getId(), event);
    }
    
    public boolean registerForEvent(int eventId, String userName) {
        Event event = events.get(eventId);
        if (event != null && event.getRegisteredUsers().size() < event.getMaxParticipants()) {
            event.getRegisteredUsers().add(userName);
            return true;
        }
        return false;
    }
}