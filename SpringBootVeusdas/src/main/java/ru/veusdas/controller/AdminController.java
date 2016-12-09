package ru.veusdas.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import ru.veusdas.Model.*;
import ru.veusdas.Service.ServiceImp.*;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
public class AdminController {

    @Autowired
    AdvertsServiceImpl advertsService;
    @Autowired
    QuestionServiceImpl questionService;
    @Autowired
    SpisokServiceImpl spisokService;
    @Autowired
    InstagramServiceImpl instagramService;
    @Autowired
    UserServiceImpl userService;

    final Long WEEK = 604800000L;
    final Long MONTH = 2628000000L;


    @PreAuthorize("hasAnyAuthority('ADMIN','USER')")
    @GetMapping("/admin")
    public String render(Authentication authentication, Model model){

        UserDetails currentUser = (UserDetails) authentication.getPrincipal();
        if (userService.findByUsername(currentUser.getUsername()).getRole().equals("USER")) {
            return "redirect:/cabinet";
        }


        model.addAttribute("adCount",advertsService.getActiveAdverts().size());
        model.addAttribute("pubCount",spisokService.getActiveSpisok().size());
        model.addAttribute("instCount",instagramService.getActiveInst().size());
        model.addAttribute("clientCount",userService.findAll().size());

        List<Spisok> app = spisokService.getNonActiveSpisok();
        model.addAttribute("publicApplications",app);

        List<Adverts> advApp = advertsService.getNonActiveAdverts();
        model.addAttribute("advertsApplications",advApp);

        model.addAttribute("instApplications",instagramService.getNonActiveInst());


        return "admin/index";
    }

    @PreAuthorize("hasAuthority('ADMIN')")
    @GetMapping("/admin/vk")
    public String renderVk(Model model){
        model.addAttribute("spisok20",spisokService.getSpisok20());
        model.addAttribute("spisok50",spisokService.getSpisok50());
        model.addAttribute("spisok100",spisokService.getSpisok100());

        return "admin/vk";
    }

    @PreAuthorize("hasAuthority('ADMIN')")
    @GetMapping("/admin/adverts")
    public String renderAdverts(Model model){
        model.addAttribute("adverts",advertsService.getActiveAdverts());

        return "admin/adverts";
    }

    @PreAuthorize("hasAuthority('ADMIN')")
    @GetMapping("/admin/instagram")
    public String renderInstagram(Model model) {
        model.addAttribute("instList",instagramService.getActiveInst());

        return "admin/instagram";
    }

    @PreAuthorize("hasAuthority('ADMIN')")
    @GetMapping("/admin/clients")
    public String renderClients(Model model){
        ArrayList<User> clients = userService.findAll();
        model.addAttribute("users",clients);

        return "admin/clients";
    }

    @PostMapping("/admin/pay")
    public String setPayed(String username){
        User user = userService.findByUsername(username);

        user.setAccount(0);
        userService.update(user);

        return "admin/ajaxSpisok";
    }

    @PostMapping("/admin/ban")
    public String deleteUser(String username){
        User user = userService.findByUsername(username);

        userService.delete(user);

        return "admin/ajaxSpisok";
    }


//    @PostMapping("/admin/questionReply")
//    public String reply(String question,String reply){
//        String buf = question.replaceAll("\\D", "");
//        Integer id = Integer.parseInt(buf);
//        Questions q = questionService.getById(id.longValue());
//        Sender sender = new Sender("veusdas@bk.ru","parolparolparol");
//        sender.send("Мы ответили на ваш вопрос",
//                "Доброе время суток!" + "\n" +
//                        "Мы ответили на ваш вопрос:" + "\n" +
//                        reply + "\n" +
//                        "Надеюсь мы ответили на все ваши вопросы!" + "\n" +
//                        "С уважением ,Администрация сайта Veusdas.ru","veusdas@bk.ru",q.getEmail());
//        questionService.deleteQuestion(q);
//
//        return "admin/ajaxQuestion";
//    }

    @PostMapping("/admin/setActive")
    public String acceptApplication(String id){
        String buf = id.replaceAll("\\D", "");
        Integer app = Integer.parseInt(buf);
        Spisok pub = spisokService.getById(app.longValue());
        pub.setActive(true);
        spisokService.update(pub);

        return "admin/ajaxSpisok";
    }

    @PostMapping("/admin/cancel")
    public String cancelApplication(String id){
        String buf = id.replaceAll("\\D", "");
        Integer app = Integer.parseInt(buf);
        spisokService.deleteSpisokById(app.longValue());

        return "admin/ajaxSpisok";
    }
    @PostMapping("/admin/topWeek")
    public String publicTopWeek(String id, String weeks){
        String buf = id.replaceAll("\\D", "");
        Integer publicID = Integer.parseInt(buf);
        if (weeks == null) {
            return "redirect:/admin";
        }
        String buf1 = weeks.replaceAll("\\D", "");
        Integer countWeek = Integer.parseInt(buf1);
        if (countWeek <= 0) {
            return "redirect:/admin";
        }

        Spisok pub = spisokService.getById(publicID.longValue());
        pub.setOnTop(true);
        Date now = new Date();
        pub.setTopStart(now);
        Date end = new Date(now.getTime()+(WEEK*countWeek));
        pub.setTopEnd(end);
        spisokService.update(pub);
        return "admin/ajaxSpisok";
    }

    @PostMapping("/admin/topMonth")
    public String publicTopMonth(String id,String months){
        String buf = id.replaceAll("\\D", "");
        Integer publicID = Integer.parseInt(buf);
        if (months == null) {
            return "redirect:/admin";
        }
        String buf1 = months.replaceAll("\\D", "");
        Integer countMonth = Integer.parseInt(buf1);
        if (countMonth <= 0) {
            return "redirect:/admin";
        }

        Spisok pub = spisokService.getById(publicID.longValue());
        pub.setOnTop(true);
        Date now = new Date();
        pub.setTopStart(now);
        Date end = new Date(now.getTime()+(MONTH*countMonth));
        pub.setTopEnd(end);
        spisokService.update(pub);
        return "admin/ajaxSpisok";
    }

    @PostMapping("/admin/editPublic")
    public String editPublic(
            String id,
            String name,
            String stat,
            String subscribes,
            String oxvat,
            String cost,
            String admin){

        String buf = id.replaceAll("\\D", "");
        Integer pid = Integer.parseInt(buf);
        Spisok pub = spisokService.getById(pid.longValue());

        pub.setName(name);
        pub.setStat_link(stat);
        pub.setSubscribes(subscribes);
        pub.setPublic_category(Integer.parseInt(oxvat));

        String buf1 = cost.replaceAll("\\D", "");
        Integer pcost = Integer.parseInt(buf1);
        pub.setCost(pcost.longValue());
        pub.setAdmin_link(admin);

        spisokService.update(pub);

        return "admin/ajaxPublic";
    }

    @PostMapping("/admin/deletePublic")
    public String deletePublic(String id){
        String buf = id.replaceAll("\\D", "");
        Integer pid = Integer.parseInt(buf);
        spisokService.deleteSpisokById(pid.longValue());

        return "admin/ajaxPublic";
    }


//    Instagram
    @PostMapping("/admin/setActiveInst")
    public String acceptInstApplication(String id){
        String buf = id.replaceAll("\\D", "");
        Integer app = Integer.parseInt(buf);
        Instagram inst = instagramService.getById(app.longValue());
        inst.setActive(true);
        instagramService.update(inst);

        return "admin/ajaxInstSpisok";
    }

    @PostMapping("/admin/cancelInst")
    public String cancelInstApplication(String id){
        String buf = id.replaceAll("\\D", "");
        Integer app = Integer.parseInt(buf);
        instagramService.deleteInstById(app.longValue());

        return "admin/ajaxInstSpisok";
    }

    @PostMapping("/admin/editInst")
    public String editInst(
            String id,
            String name,
            String subscribes,
            String cost,
            String admin){

        String buf = id.replaceAll("\\D", "");
        Integer pid = Integer.parseInt(buf);
        Instagram inst = instagramService.getById(pid.longValue());

        inst.setName(name);
        inst.setSubscribes(subscribes);

        String buf1 = cost.replaceAll("\\D", "");
        Integer pcost = Integer.parseInt(buf1);
        inst.setCost(pcost.longValue());
        inst.setAdmin_link(admin);

        instagramService.update(inst);

        return "admin/ajaxInst";
    }

    @PostMapping("/admin/deleteInst")
    public String deleteInst(String id){
        String buf = id.replaceAll("\\D", "");
        Integer pid = Integer.parseInt(buf);
        instagramService.deleteInstById(pid.longValue());

        return "admin/ajaxInst";
    }


    @PostMapping("/admin/acceptAdvert")
    public String acceptAdvert(String id){
        String buf = id.replaceAll("\\D", "");
        Integer adid = Integer.parseInt(buf);
        Adverts advert = advertsService.getAdvertById(adid.longValue());
        advert.setActive(true);
        advertsService.updateAdvert(advert);

        return "admin/ajaxAdvert";
    }

    @PostMapping("/admin/cancelAdvert")
    public String cancelAdvert(String id){
        String buf = id.replaceAll("\\D", "");
        Integer adid = Integer.parseInt(buf);
        advertsService.deleteAdvertById(adid.longValue());

        return "admin/ajaxAdvert";
    }

    @PostMapping("/admin/editAdvert")
    public String editAdvert(
            String id,
//            String avatar,
            String name,
            String profile,
            String cost,
            String type,
            String comment
    ){
        String buf = id.replaceAll("\\D", "");
        Integer adid = Integer.parseInt(buf);
        Adverts advert = advertsService.getAdvertById(adid.longValue());

        advert.setAdvert_name(name);
//        advert.setAvatar_link(avatar);
        advert.setProfile_link(profile);

        String buf1 = cost.replaceAll("\\D", "");
        Integer acost = Integer.parseInt(buf1);
        advert.setCost(acost.longValue());

        advert.setAdvert_type(type);
        advert.setComment(comment);

        advertsService.updateAdvert(advert);

        return "admin/ajaxAdvertList";
    }

    @PostMapping("/admin/deleteAdvert")
    public String deleteAdvert(String id){
        String buf = id.replaceAll("\\D", "");
        Integer adid = Integer.parseInt(buf);
        advertsService.deleteAdvertById(adid.longValue());

        return "admin/ajaxAdvertList";
    }




}