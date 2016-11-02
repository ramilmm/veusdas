package ru.veusdas.controller;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import ru.veusdas.MailSender.Sender;
import ru.veusdas.Model.Questions;
import ru.veusdas.form.QuestionForm;

import javax.validation.Valid;

@Controller
public class WebController {


    @GetMapping("/web")
    public String render(){
        return "web/web";
    }


    @PostMapping("/web/addQuestion")
    public String notificate(String name, String email, String message){

        if (name.isEmpty() || email.isEmpty() || message.isEmpty()) {
            return "redirect:/web";
        }


        Sender sender = new Sender("veusdas@bk.ru","parolparolparol");
        sender.send("Новый вопрос",
                "Доброе время суток!" + "\n" +
                        "Name:" + "\n" +
                        name + "\n" +
                        "email : " + "\n" +
                        email + "\n" +
                        "Вопрос: " + "\n" +
                        message + "\n" +
                        "С уважением ,Администрация сайта Veusdas.ru","veusdas@bk.ru","ramilmmk@gmail.com");

        return "redirect:/web";
    }

    @PostMapping("/web/subscribe")
    public String sub(String email){

        if (email.isEmpty()) {
            return "redirect:/web";
        }


        Sender sender = new Sender("veusdas@bk.ru","parolparolparol");
        sender.send("Новый вопрос",
                "Доброе время суток!" + "\n" +
                        "email : " + "\n" +
                        email + "\n" +
                        "С уважением ,Администрация сайта Veusdas.ru","veusdas@bk.ru","ramilmmk@gmail.com");

        return "redirect:/web";
    }

}
