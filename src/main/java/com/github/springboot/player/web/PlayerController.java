package com.github.springboot.player.web;

import com.github.springboot.player.service.PlayerService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/players")
public class PlayerController {
    private final PlayerService service;

    public PlayerController(PlayerService service) {
        this.service = service;
    }

    @GetMapping("/display")
    public String display(Model model) {
        model.addAttribute("players", service.findAll());
        return "players";
    }

    @GetMapping("/top-secret")
    public String secret(Model model) {
        model.addAttribute("players", service.findAll());
        model.addAttribute("message", "Hello secret player World!");
        return "players";
    }
}
