package ru.veusdas.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import ru.veusdas.Model.Adverts;
import ru.veusdas.Model.Spisok;
import ru.veusdas.Model.User;
import ru.veusdas.Service.ServiceImp.*;

import java.util.List;

@Controller
public class UserCabinetController {

    @Autowired
    AdvertsServiceImpl advertsService;
    @Autowired
    SpisokServiceImpl spisokService;
    @Autowired
    InstagramServiceImpl instagramService;

    @Autowired
    UserServiceImpl userService;



    @PreAuthorize("hasAnyAuthority('ADMIN','USER')")
    @GetMapping("/cabinet")
    public String render(Authentication authentication, Model model){

        UserDetails currentUser = (UserDetails) authentication.getPrincipal();

        model.addAttribute("userAccount",userService.findByUsername(currentUser.getUsername()).getAccount());
        model.addAttribute("userReq",userService.findByUsername(currentUser.getUsername()).getRequisites());
        model.addAttribute("userVk",userService.findByUsername(currentUser.getUsername()).getVk());
        model.addAttribute("user",currentUser);

        model.addAttribute("adCount",advertsService.getActiveFromUser(currentUser.getUsername()).size());
        model.addAttribute("pubCount",spisokService.getActiveFromUser(currentUser.getUsername()).size());
        model.addAttribute("instCount",instagramService.getActiveFromUser(currentUser.getUsername()).size());

        return "cabinet/index";
    }

    @PreAuthorize("hasAnyAuthority('ADMIN','USER')")
    @GetMapping("/cabinet/vk")
    public String renderVk(Authentication authentication,Model model){

        UserDetails currentUser = (UserDetails) authentication.getPrincipal();
        model.addAttribute("userAccount",userService.findByUsername(currentUser.getUsername()).getAccount());
        model.addAttribute("user",currentUser);
        model.addAttribute("spisok20",spisokService.getActiveFromUser(currentUser.getUsername()));

        return "cabinet/vk";
    }

    @PreAuthorize("hasAnyAuthority('ADMIN','USER')")
    @GetMapping("/cabinet/ref")
    public String renderReferals(Authentication authentication,Model model){

        UserDetails currentUser = (UserDetails) authentication.getPrincipal();
        User user = userService.findByUsername(currentUser.getUsername());
        model.addAttribute("user",currentUser);
        model.addAttribute("userAccount",user.getAccount());
        model.addAttribute("userVk",user.getVk());
        model.addAttribute("userId",user.getId());
        model.addAttribute("referals",userService.findByReferal_by(userService.findByUsername(currentUser.getUsername()).getId()));

        return "cabinet/clients";
    }

    @PreAuthorize("hasAnyAuthority('ADMIN','USER')")
    @GetMapping("/cabinet/adverts")
    public String renderAdverts(Authentication authentication,Model model){

        UserDetails currentUser = (UserDetails) authentication.getPrincipal();
        model.addAttribute("userAccount",userService.findByUsername(currentUser.getUsername()).getAccount());
        model.addAttribute("user",currentUser);
        model.addAttribute("adverts",advertsService.getActiveFromUser(currentUser.getUsername()));

        return "cabinet/adverts";
    }

    @PreAuthorize("hasAnyAuthority('ADMIN','USER')")
    @GetMapping("/cabinet/instagram")
    public String renderInstagram(Authentication authentication, Model model) {

        UserDetails currentUser = (UserDetails) authentication.getPrincipal();
        model.addAttribute("userAccount",userService.findByUsername(currentUser.getUsername()).getAccount());

        model.addAttribute("user",currentUser);
        model.addAttribute("instList",instagramService.getActiveFromUser(currentUser.getUsername()));

        return "cabinet/instagram";
    }

    @PostMapping("/cabinet/saveProfile")
    public String editProfile(String username, String newUsername, String req, String vk){

        User user = userService.findByUsername(username);

        user.setUsername(newUsername);
        user.setRequisites(req);
        user.setVk(vk);
        userService.update(user);

        return "/admin/ajaxSpisok";
    }
}
