package ru.veusdas.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import ru.veusdas.HTMLParser;
import ru.veusdas.Model.Instagram;
import ru.veusdas.Model.Spisok;
import ru.veusdas.Service.ServiceImp.InstagramServiceImpl;
import ru.veusdas.form.InstForm;
import ru.veusdas.form.PublicForm;

import javax.validation.Valid;
import java.io.IOException;
import java.util.ArrayList;

@Controller
public class InstagramController {

    @Autowired
    InstagramServiceImpl instagramService;

    @GetMapping("/instagram")
    public String render(Model model){
        model.addAttribute("instList",instagramService.getActiveInst());
        return "inst/index";
    }

    @RequestMapping(value = "/instagram/add",method = RequestMethod.POST)
    public String addPublic(@Valid InstForm pf, BindingResult bindingResult){

        if (bindingResult.hasErrors()) {
            return "inst/index";
        }

        if (pf.getCost().equals("") || pf.getLink().equals("") || pf.getPub().equals("")) {
            return "redirect:/";
        }

        Instagram inst = new Instagram();

        ArrayList<String> info = new ArrayList<>();
        try {
            HTMLParser.writeFile(pf.getPub());
            info = HTMLParser.getInstData();
        } catch (IOException e) {
            e.printStackTrace();
        }

        inst.setName(info.get(0));
        inst.setAvatar_link(info.get(1));
        inst.setActive(false);
        inst.setAdmin_link(pf.getLink());
        inst.setCost(pf.getCost());
        inst.setSubscribes(pf.getSubscribes());
        inst.setLink(pf.getPub());

        instagramService.addInst(inst);
        return "redirect:/instagram";
    }

}
