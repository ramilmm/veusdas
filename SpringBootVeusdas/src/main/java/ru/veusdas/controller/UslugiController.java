package ru.veusdas.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UslugiController {

    @GetMapping("/services")
    public String render(){
        return "uslugi/uslugi";
    }

}
