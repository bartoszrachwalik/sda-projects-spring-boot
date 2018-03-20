package com.github.springboot.player.web;

import com.github.springboot.player.service.PlayerService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PlayerController {
    private final PlayerService service;

    public PlayerController(PlayerService service) {
        this.service = service;
    }

    @GetMapping("")
    public String display(Model model) {
        model.addAttribute("players", service.findAll());
        return "players";
    }
}
