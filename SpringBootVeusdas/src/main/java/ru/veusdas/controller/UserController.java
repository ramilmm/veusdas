package ru.veusdas.controller;

import ru.veusdas.Model.User;
import ru.veusdas.Service.SecurityService;
import ru.veusdas.Service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class UserController {
    @Autowired
    private UserService userService;

    @Autowired
    private SecurityService securityService;

    @RequestMapping(value = "/registration", method = RequestMethod.GET)
    public String registration() {

        return "reg/register";
    }

    @RequestMapping(value = "/registration", method = RequestMethod.POST)
    public String registration(String username,
                               String password,
                               String passwordConfirm,
                               Model model) {

        if (username.isEmpty() || password.isEmpty() || passwordConfirm.isEmpty()) {
            return "reg/register";
        }

        if(!password.equals(passwordConfirm)){
            return "reg/register";
        }

        User user = new User();
        user.setUsername(username);
        user.setPassword(password);

        userService.save(user);

        securityService.autologin(user.getUsername(), user.getPassword());

        return "redirect:/";
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login(Model model, String error, String logout) {
        if (error != null)
            model.addAttribute("error", "Your username and password is invalid.");

        if (logout != null)
            model.addAttribute("message", "You have been logged out successfully.");

        return "reg/login";
    }

}
