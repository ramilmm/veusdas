package ru.veusdas.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import ru.veusdas.MailSender.Sender;
import ru.veusdas.Model.Adverts;
import ru.veusdas.Model.Questions;
import ru.veusdas.Model.Spisok;
import ru.veusdas.Service.ServiceImp.AdvertsServiceImpl;
import ru.veusdas.Service.ServiceImp.QuestionServiceImpl;
import ru.veusdas.Service.ServiceImp.SpisokServiceImpl;

import java.util.List;

@Controller
public class AdminController {

    @Autowired
    AdvertsServiceImpl advertsService;
    @Autowired
    QuestionServiceImpl questionService;
    @Autowired
    SpisokServiceImpl spisokService;
//    @Autowired
//    YouTubeServiceImpl youTubeService;

    @GetMapping("/admin")
    public String render(Model model){
        List<Spisok> app = spisokService.getNonActiveSpisok();
        for (Spisok s : app){
            if(s.getAvatar_link().equals("") || s.getAvatar_link() == null){
                s.setAvatar_link("http://joomline.ru/images/jlvkgroup-ico2.png");
            }
        }
        model.addAttribute("publicApplications",app);
        List<Spisok> activeSpisok = spisokService.getActiveSpisok();
        for (Spisok s : activeSpisok){
            if(s.getAvatar_link().equals("") || s.getAvatar_link() == null){
                s.setAvatar_link("http://joomline.ru/images/jlvkgroup-ico2.png");
            }
        }
        model.addAttribute("spisok",activeSpisok);

        model.addAttribute("publicApplications",app);
        List<Adverts> advApp = advertsService.getNonActiveAdverts();
        for (Adverts s : advApp){
            if(s.getAvatar_link().equals("") || s.getAvatar_link() == null){
                s.setAvatar_link("http://weezywap.xtgem.com/images/ad_icon.png");
            }
        }
        model.addAttribute("advertsApplications",advApp);
        List<Adverts> activeAdverts = advertsService.getActiveAdverts();
        for (Adverts s : activeAdverts){
            if(s.getAvatar_link().equals("") || s.getAvatar_link() == null){
                s.setAvatar_link("http://weezywap.xtgem.com/images/ad_icon.png");
            }
        }
        model.addAttribute("adverts",activeAdverts);

        model.addAttribute("questions",questionService.getActiveQuestions());

        return "admin/index";
    }


    @PostMapping("/admin/questionReply")
    public String reply(String question,String reply){
        Integer id = Integer.parseInt(question);
        Questions q = questionService.getById(id.longValue());
        Sender sender = new Sender("veusdas@bk.ru","parolparolparol");
        sender.send("Мы ответили на ваш вопрос",
                "Доброе время суток!" + "\n" +
                "Мы ответили на ваш вопрос:" + "\n" +
                reply + "\n" +
                "Надеюсь мы ответили на все ваши вопросы!" + "\n" +
                        "С уважением ,Администрация сайта Veusdas.ru","veusdas@bk.ru",q.getEmail());
        questionService.deleteQuestion(q);

        return "admin/ajaxQuestion";
    }

    @PostMapping("/admin/setActive")
    public String acceptApplication(String id){
        Integer app = Integer.parseInt(id);
        Spisok pub = spisokService.getById(app.longValue());
        pub.setActive(true);
        spisokService.update(pub);

        return "admin/ajaxSpisok";
    }

    @PostMapping("/admin/cancel")
    public String cancelApplication(String id){
        Integer app = Integer.parseInt(id);
        spisokService.deleteSpisokById(app.longValue());

        return "admin/ajaxSpisok";
    }

    @PostMapping("/admin/editPublic")
    public String editPublic(
            String id,
            String name,
            String avatar,
            String stat,
            String subscribes,
            String oxvat,
            String cost,
            String admin){

        Integer pid = Integer.parseInt(id);
        Spisok pub = spisokService.getById(pid.longValue());

        pub.setName(name);
        pub.setAdmin_link(avatar);
        pub.setStat_link(stat);
        pub.setSubscribes(subscribes);
        pub.setPublic_category(Integer.parseInt(oxvat));
        Integer pcost = Integer.parseInt(cost);
        pub.setCost(pcost.longValue());
        pub.setAdmin_link(admin);

        spisokService.update(pub);

        return "admin/ajaxPublic";
    }

    @PostMapping("/admin/deletePublic")
    public String deletePublic(String id){
        Integer pid = Integer.parseInt(id);
        spisokService.deleteSpisokById(pid.longValue());

        return "admin/ajaxPublic";
    }


    @PostMapping("/admin/acceptAdvert")
    public String acceptAdvert(String id){
        Integer adid = Integer.parseInt(id);
        Adverts advert = advertsService.getAdvertById(adid.longValue());
        advert.setActive(true);
        advertsService.updateAdvert(advert);

        return "admin/ajaxAdvert";
    }

    @PostMapping("/admin/cancelAdvert")
    public String cancelAdvert(String id){
        Integer adid = Integer.parseInt(id);
        advertsService.deleteAdvertById(adid.longValue());

        return "admin/ajaxAdvert";
    }

    @PostMapping("/admin/editAdvert")
    public String editAdvert(
            String id,
            String avatar,
            String name,
            String profile,
            String cost,
            String type,
            String comment
    ){
        Integer adid = Integer.parseInt(id);
        Adverts advert = advertsService.getAdvertById(adid.longValue());

        advert.setAdvert_name(name);
        advert.setAvatar_link(avatar);
        advert.setProfile_link(profile);
        Integer acost = Integer.parseInt(cost);
        advert.setCost(acost.longValue());
        advert.setAdvert_type(type);
        advert.setComment(comment);

        advertsService.updateAdvert(advert);

        return "admin/ajaxAdvertList";
    }

    @PostMapping("/admin/deleteAdvert")
    public String deleteAdvert(String id){
        Integer adid = Integer.parseInt(id);
        advertsService.deleteAdvertById(adid.longValue());

        return "admin/ajaxAdvertList";
    }


}
