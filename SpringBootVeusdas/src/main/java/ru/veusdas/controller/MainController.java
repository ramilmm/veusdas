package ru.veusdas.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {

    @GetMapping("/")
    public String renderMainPage(){
        return "main/index";
    }

    @GetMapping("/garant")
    public String renderGarantPage(){
        return "garant/index";
    }

//    @GetMapping("/login")
//    public String renderLoginPage() { return "login"; }

}
