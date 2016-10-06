package ru.veusdas.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import ru.veusdas.Model.Adverts;
import ru.veusdas.Service.ServiceImp.AdvertsServiceImpl;
import ru.veusdas.form.AdvertForm;

import javax.validation.Valid;
import java.util.ArrayList;

@Controller
public class AdvertsController {

    @Autowired
    AdvertsServiceImpl advertsService;

    @GetMapping("/ads")
    public String render(Model model){
        ArrayList<Adverts> ads = advertsService.getActiveAdverts();
        model.addAttribute("adverts",ads);
        return "adverts/index";
    }

    @PostMapping("/ads/add")
    public String add(@Valid AdvertForm af, BindingResult bindingResult){
        if (bindingResult.hasErrors()) {
            return "adverts/index";
        }

        Adverts ad = new Adverts();

        ad.setAdvert_name(af.getName());
        ad.setAdvert_type(af.getCategory());
        ad.setProfile_link(af.getLink());
        ad.setCost(new Long(af.getCost()));
        if(af.getAva() != null){
            ad.setAvatar_link(af.getAva());
        }
        if(af.getDopLink() != null){
            ad.setPublic_link(af.getDopLink());
        }
        ad.setComment(af.getMessage());

        advertsService.addAdvert(ad);

        return "redirect:/ads";

    }



}
