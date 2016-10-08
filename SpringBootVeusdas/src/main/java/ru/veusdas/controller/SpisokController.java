package ru.veusdas.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import ru.veusdas.Model.Spisok;
import ru.veusdas.Service.ServiceImp.SpisokServiceImpl;
import ru.veusdas.form.PublicForm;

import javax.validation.Valid;

@Controller
@RequestMapping(value = "/publiclist")
public class SpisokController {

    @Autowired
    SpisokServiceImpl publicService;

    @GetMapping("/20")
    public String renderPublic20(Model model){
        model.addAttribute("publicList",publicService.getSpisok20());
        return "publicList/index";
    }

    @RequestMapping(value = "/50",method = RequestMethod.GET)
    public String renderPublic50(Model model){
        model.addAttribute("publicList",publicService.getSpisok50());
        return "publiclist/index";
    }

    @RequestMapping(value = "/100",method = RequestMethod.GET)
    public String renderPublic100(Model model){
        model.addAttribute("publicList",publicService.getSpisok100());
        return "publiclist/index";
    }

    @RequestMapping(value = "/add",method = RequestMethod.POST)
    public String addPublic(@Valid PublicForm pf, BindingResult bindingResult){

        if (bindingResult.hasErrors()) {
            return "publiclist/index";
        }

        Spisok pub = new Spisok();

        pub.setName(pf.getName());
        pub.setAdmin_link(pf.getLink());
        pub.setLink(pf.getPub());
        pub.setAvatar_link(pf.getAva());
        pub.setCost(pf.getCost());
        pub.setPublic_category(pf.getCategory());
        pub.setStat_link(pf.getStat());
        pub.setSubscribes(pf.getSubscribes());

        publicService.addSpisok(pub);
        return "redirect:/publiclist/20";
    }
}
