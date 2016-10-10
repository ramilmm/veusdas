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
        model.addAttribute("publicApplications",spisokService.getNonActiveSpisok());
        model.addAttribute("spisok",spisokService.getActiveSpisok());

        model.addAttribute("advertsApplications",advertsService.getNonActiveAdverts());
        model.addAttribute("adverts",advertsService.getActiveAdverts());

        model.addAttribute("questions",questionService.getActiveQuestions());

        return "admin/index";
    }


    @PostMapping("/admin/questionReply")
    public String reply(String question,String reply){
        String buff = question.replace(" ","").trim();
        Long id = Long.parseLong(buff);
        Questions q = questionService.getById(id);
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
        String buff = id.replace(" ","").trim();
        Long publicID = Long.parseLong(buff);

        Spisok pub = spisokService.getById(publicID);
        pub.setActive(true);
        spisokService.update(pub);

        return "admin/ajaxSpisok";
    }

    @PostMapping("/admin/cancel")
    public String cancelApplication(String id){
        String buff = id.replace(" ","").trim();
        Long publicID = Long.parseLong(buff);

        spisokService.deleteSpisokById(publicID);

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

        Long k = Long.parseLong(id);
        System.out.println(k);
        System.out.println(k.getClass());

        Spisok pub = spisokService.getById(k);

        pub.setName(name);
        pub.setStat_link(stat);
        pub.setSubscribes(subscribes);
        pub.setPublic_category(Integer.parseInt(oxvat));
        pub.setCost(Long.parseLong(cost));
        pub.setAdmin_link(admin);

        spisokService.update(pub);

        return "admin/ajaxPublic";
    }

    @PostMapping("/admin/deletePublic")
    public String deletePublic(String id){

        spisokService.deleteSpisokById(Long.parseLong(id));

        return "admin/ajaxPublic";
    }


    @PostMapping("/admin/acceptAdvert")
    public String acceptAdvert(String id){

        String buff = id.replace(" ","").trim();
        Long advID = Long.parseLong(buff);

        Adverts advert = advertsService.getAdvertById(advID);
        advert.setActive(true);
        advertsService.updateAdvert(advert);

        return "admin/ajaxAdvert";
    }

    @PostMapping("/admin/cancelAdvert")
    public String cancelAdvert(String id){

        String buff = id.replace(" ","").trim();
        Long advID = Long.parseLong(buff);

        advertsService.deleteAdvertById(advID);

        return "admin/ajaxAdvert";
    }

    @PostMapping("/admin/editAdvert")
    public String editAdvert(
            String id,
            String name,
            String profile,
            String cost,
            String type,
            String comment
    ){

        Adverts advert = advertsService.getAdvertById(Long.parseLong(id));

        advert.setAdvert_name(name);
        advert.setProfile_link(profile);
        advert.setCost(Long.parseLong(cost));
        advert.setAdvert_type(type);
        advert.setComment(comment);

        advertsService.updateAdvert(advert);

        return "admin/ajaxAdvertList";
    }

    @PostMapping("/admin/deleteAdvert")
    public String deleteAdvert(String id){

        advertsService.deleteAdvertById(Long.parseLong(id));

        return "admin/ajaxAdvertList";
    }


}
