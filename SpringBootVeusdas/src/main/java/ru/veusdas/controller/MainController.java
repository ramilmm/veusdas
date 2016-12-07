package ru.veusdas.controller;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {

    @GetMapping("/")
    public String renderMainPage(Authentication authentication, Model model){
        UserDetails currentUser = null;
        if (authentication != null && (currentUser = (UserDetails) authentication.getPrincipal()) != null) {
            System.out.println(currentUser.getAuthorities());
            model.addAttribute("user", currentUser);
        }
        return "main/index";
    }

    @GetMapping("/garant")
    public String renderGarantPage(){
        return "garant/index";
    }

//    @GetMapping("/login")
//    public String renderLoginPage() { return "login"; }

}
