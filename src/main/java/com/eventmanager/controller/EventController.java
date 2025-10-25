package com.eventmanager.controller;

import com.eventmanager.model.Event;
import com.eventmanager.dao.EventDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import java.util.Date;

@Controller
public class EventController {
    
    @Autowired
    private EventDAO eventDAO;
    
    @GetMapping("/")
    public String home() {
        return "redirect:/events";
    }
    
    @GetMapping("/events")
    public String listEvents(Model model) {
        model.addAttribute("events", eventDAO.getAllEvents());
        return "events";
    }
    
    @GetMapping("/events/{id}")
    public String viewEvent(@PathVariable int id, Model model) {
        Event event = eventDAO.getEventById(id);
        if (event == null) {
            return "redirect:/events";
        }
        model.addAttribute("event", event);
        return "event-details";
    }
    
    @GetMapping("/events/create")
    public String showCreateForm(Model model) {
        model.addAttribute("event", new Event());
        return "create-event";
    }
    
    @PostMapping("/events/create")
    public String createEvent(@ModelAttribute Event event) {
        eventDAO.createEvent(event);
        return "redirect:/events";
    }
    
    @PostMapping("/events/{id}/register")
    public String registerForEvent(@PathVariable int id, @RequestParam String userName) {
        eventDAO.registerForEvent(id, userName);
        return "redirect:/events/" + id;
    }
    
    @GetMapping("/about")
    public String about() {
        return "about";
    }
}