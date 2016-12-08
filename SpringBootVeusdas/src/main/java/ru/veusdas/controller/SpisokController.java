package ru.veusdas.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import ru.veusdas.MailSender.Sender;
import ru.veusdas.Model.User;
import ru.veusdas.Service.ServiceImp.UserServiceImpl;
import ru.veusdas.Utils.HTMLParser;
import ru.veusdas.Model.Spisok;
import ru.veusdas.Service.ServiceImp.SpisokServiceImpl;
import ru.veusdas.Utils.UpdateThread;
import ru.veusdas.form.PublicForm;

import javax.validation.Valid;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;

@Controller
@RequestMapping(value = "/publiclist")
public class SpisokController {

    @Autowired
    SpisokServiceImpl publicService;

    @Autowired
    UserServiceImpl userService;

    Long count = 1L;
    final Long WEEK = 604800000L;

    @GetMapping("/20")
    public String renderPublic20(Model model){
        ArrayList<Spisok> spisok = (ArrayList<Spisok>) publicService.getSpisok20();
        spisok = (ArrayList<Spisok>) publicService.getList(spisok);
        for (Spisok pub: spisok) {
            if (new Date().after(pub.getUpdate_date())) {
                UpdateThread update = new UpdateThread(publicService,spisok);
                update.run();
                break;
            }
        }
        model.addAttribute("publicList",spisok);
        return "ListOfPublic/index";
    }

    @RequestMapping(value = "/50",method = RequestMethod.GET)
    public String renderPublic50(Model model){
        ArrayList<Spisok> spisok = (ArrayList<Spisok>) publicService.getSpisok50();
        spisok = (ArrayList<Spisok>) publicService.getList(spisok);
        for (Spisok pub: spisok) {
            if (new Date().after(pub.getUpdate_date())) {
                UpdateThread update = new UpdateThread(publicService,spisok);
                update.run();
                break;
            }
        }
        model.addAttribute("publicList",spisok);
        return "ListOfPublic/index";
    }

    @RequestMapping(value = "/100",method = RequestMethod.GET)
    public String renderPublic100(Model model){
        ArrayList<Spisok> spisok = (ArrayList<Spisok>) publicService.getSpisok100();
        spisok = (ArrayList<Spisok>) publicService.getList(spisok);
        for (Spisok pub: spisok) {
            if (new Date().after(pub.getUpdate_date())) {
                UpdateThread update = new UpdateThread(publicService,spisok);
                update.run();
                break;
            }
        }
        model.addAttribute("publicList", spisok);
        return "ListOfPublic/index";
    }

    @RequestMapping(value = "/add",method = RequestMethod.POST)
    public String addPublic(@Valid PublicForm pf, Authentication authentication, BindingResult bindingResult){

        if (bindingResult.hasErrors()) {
            return "redirect:/publiclist/20";
        }

        if (pf.getCost().equals("") || pf.getLink().equals("") || pf.getPub().equals("")) {
            return "redirect:/publiclist/20";
        }


        Spisok pub = new Spisok();

        UserDetails currentUser = null;
        if (authentication != null && (currentUser = (UserDetails) authentication.getPrincipal()) != null) {
            pub.setUser(currentUser.getUsername());
        }


        ArrayList<String> info = new ArrayList<>();
        try {
            HTMLParser.writeFile(pf.getPub());
            info = HTMLParser.getPublicData();
        } catch (IOException e) {
            e.printStackTrace();
        }

        pub.setId(count);
        pub.setName(info.get(0));
        pub.setAdmin_link(pf.getLink());
        pub.setLink(pf.getPub());
        pub.setAvatar_link(info.get(1));
        pub.setCost(pf.getCost());
        pub.setPublic_category(pf.getCategory());
        pub.setOnTop(false);
        pub.setStat_link(info.get(3));
        pub.setSubscribes(info.get(2));
        pub.setUpdate_date(new Date(new Date().getTime() + 2*WEEK));

        publicService.addSpisok(pub);

        User user = null;
        if (authentication != null && (currentUser = (UserDetails) authentication.getPrincipal()) != null) {
            user = userService.findById(userService.findByUsername(currentUser.getUsername()).getReferal());
        }

        if (user != null) {
            user.setAccount((int) (user.getAccount()+Math.round(pub.getCost()*0.19)));
            userService.update(user);
        }

        Sender sender = new Sender("veusdas-supp@mail.ru","123321a");
        sender.send("Новая заявка в список пабликов","Пришла новая заявка в список сообществ с охватом " +
                pub.getPublic_category()*1000 + "\n" +
                "Ссыдка на админку : http://www.veusdas.com/admin","veusdas-supp@mail.ru","Leusvladis@mail.ru");
        count++;
        switch (pub.getPublic_category()) {
            case 20: {
                return "redirect:/publiclist/20";
            }
            case 50: {
                return "redirect:/publiclist/50";
            }
            default: {
                return "redirect:/publiclist/100";
            }
        }
    }
}
