package com.springapp.mvc.controllers;

import mvc.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;

@Controller
public class LoginController {

    @Autowired
    private HttpServletRequest request;
    @Autowired
    private UserService userService;

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String renderLoginPage(Boolean error) {
        if(request.getRemoteUser() != null){
            return "redirect:/";
        }
        request.setAttribute("error", error);
        return "login/loginPage";
    }
}