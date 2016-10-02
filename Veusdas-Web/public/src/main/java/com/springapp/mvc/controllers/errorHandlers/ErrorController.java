package com.springapp.mvc.controllers.errorHandlers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ErrorController {

    @RequestMapping(value = "/error-404", method = RequestMethod.GET)
    public String render404ErrorPage(){
        return "errorPages/error-404";
    }

    @RequestMapping(value = "/error-403", method = RequestMethod.GET)
    public String render403ErrorPage(){
        return "errorPages/error-403";
    }

    @RequestMapping(value = "/error-500", method = RequestMethod.GET)
    public String render500ErrorPage(){
        return "errorPages/error-500";
    }
}
