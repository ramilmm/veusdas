package ru.veusdas.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import ru.veusdas.HTMLParser;
import ru.veusdas.Model.Spisok;
import ru.veusdas.Service.ServiceImp.SpisokServiceImpl;
import ru.veusdas.form.PublicForm;

import javax.validation.Valid;
import java.io.IOException;
import java.util.ArrayList;

@Controller
@RequestMapping(value = "/publiclist")
public class SpisokController {

    @Autowired
    SpisokServiceImpl publicService;

    @GetMapping("/20")
    public String renderPublic20(Model model){
        ArrayList<Spisok> spisok = (ArrayList<Spisok>) publicService.getSpisok20();
//        for (Spisok s : spisok){
//            if (s.getName().contains("Kalemba")){
//                spisok.remove(spisok.indexOf(s));
//                spisok.set(0,s);
//                break;
//            }
//        }
        model.addAttribute("publicList",spisok);
        return "ListOfPublic/index";
    }

    @RequestMapping(value = "/50",method = RequestMethod.GET)
    public String renderPublic50(Model model){
        ArrayList<Spisok> spisok = (ArrayList<Spisok>) publicService.getSpisok50();
//        for (Spisok s : spisok){
//            if (s.getName().contains("Mor")){
//                spisok.remove(spisok.indexOf(s));
//                spisok.set(0,s);
//                break;
//            }
//        }
        model.addAttribute("publicList",spisok);
        return "ListOfPublic/index";
    }

    @RequestMapping(value = "/100",method = RequestMethod.GET)
    public String renderPublic100(Model model){
        model.addAttribute("publicList",publicService.getSpisok100());
        return "ListOfPublic/index";
    }

    @RequestMapping(value = "/add",method = RequestMethod.POST)
    public String addPublic(@Valid PublicForm pf, BindingResult bindingResult){

        if (bindingResult.hasErrors()) {
            return "ListOfPublic/index";
        }

        if (pf.getCost().equals("") || pf.getLink().equals("") || pf.getPub().equals("")) {
            return "redirect:/";
        }

        Spisok pub = new Spisok();

        ArrayList<String> info = new ArrayList<>();
        try {
            HTMLParser.writeFile(pf.getPub());
            info = HTMLParser.getPublicData();
        } catch (IOException e) {
            e.printStackTrace();
        }

        pub.setName(info.get(0));
        pub.setAdmin_link(pf.getLink());
        pub.setLink(pf.getPub());
        pub.setAvatar_link(info.get(1));
        pub.setCost(pf.getCost());
        pub.setPublic_category(pf.getCategory());
        pub.setStat_link(info.get(3));
        pub.setSubscribes(info.get(2));

        publicService.addSpisok(pub);
        return "redirect:/publiclist/20";
    }
}
