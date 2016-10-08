package ru.veusdas.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import ru.veusdas.MailSender.Sender;
import ru.veusdas.Model.Questions;
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
        System.out.println(question);
        String buff = question.replace(" ","").trim();
        System.out.println(buff);
        Long id = Long.parseLong(buff);
        Questions q = questionService.getById(id);
        Sender sender = new Sender("veusdas@bk.ru","parolparolparol");
        sender.send("Мы ответили на ваш вопрос",
                "Доброе время суток!" + "\n" +
                "Мы ответили на ваш вопрос:" + "\n" +
                reply + "\n" +
                "Надеюсь мы ответили на все ваши вопросы!)" +
                        "С уважением ,Администрация сайта Veusdas.ru","veusdas@bk.ru",q.getEmail());
        questionService.deleteQuestion(q);

        return "admin/ajaxQuestion";
    }


}
