package com.springapp.mvc.controllers;

import mvc.services.PublicService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;

@Controller
public class PublicController {

    @Autowired
    private HttpServletRequest request;
    @Autowired
    private PublicService publicService;

    @RequestMapping(value = "/20",method = RequestMethod.GET)
    public String renderPublic20(){
        request.setAttribute("publicList",publicService.getPublic20());
        return "publicList/index";
    }

    @RequestMapping(value = "/50",method = RequestMethod.GET)
    public String renderPublic50(){
        request.setAttribute("publicList",publicService.getPublic50());
        return "publicList/index";
    }

    @RequestMapping(value = "/100",method = RequestMethod.GET)
    public String renderPublic100(){
        request.setAttribute("publicList",publicService.getPublic100());
        return "publicList/index";
    }

}
