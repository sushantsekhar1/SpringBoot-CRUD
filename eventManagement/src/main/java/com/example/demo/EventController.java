package com.example.demo;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class EventController {

    @Autowired
    private EventRepository eventRepo;

    // Show user registration form
    @GetMapping("/register")
    public String showForm(Model model) {
        model.addAttribute("eventRegistration", new EventRegistration());
        return "register";
    }

    // Handle form submission
    @PostMapping("/register")
    public String submitForm(@ModelAttribute EventRegistration eventRegistration) {
        eventRepo.save(eventRegistration);
        return "redirect:/participants";
    }

    // Admin: View all registered participants
    @GetMapping("/participants")
    public String viewParticipants(Model model) {
        List<EventRegistration> participants = eventRepo.findAll();
        model.addAttribute("participants", participants);
        return "viewParticipants";
    }
}

