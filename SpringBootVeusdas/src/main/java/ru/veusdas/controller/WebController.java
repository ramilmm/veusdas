package ru.veusdas.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class WebController {


    @GetMapping("/web")
    public String render(){
        return "web/web";
    }

}
