package com.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.stereotype.Controller;

@Controller
public class HomeController {
    @GetMapping("/")
    public String showHome(){
        return "home";
    }

    @GetMapping("/leaders")
    public String showLeaders(){ return "leaders";}

    @GetMapping("/systems")
    public String showSystems(){ return "systems";}

}
