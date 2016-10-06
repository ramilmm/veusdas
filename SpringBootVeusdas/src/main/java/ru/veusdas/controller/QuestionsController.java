package ru.veusdas.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import ru.veusdas.Model.Questions;
import ru.veusdas.Service.ServiceImp.QuestionServiceImpl;
import ru.veusdas.form.QuestionForm;

import javax.validation.Valid;

@Controller
public class QuestionsController {

    @Autowired
    QuestionServiceImpl questionService;

    @GetMapping("/youtube")
    public String render(Model model){
        return "youtube/index";
    }

    @PostMapping("/youtube/addQuestion")
    public String add(@Valid QuestionForm qf, BindingResult bindingResult){
        if (bindingResult.hasErrors()) {
            return "youtube/index";
        }

        Questions question = new Questions();

        question.setName(qf.getName());
        question.setEmail(qf.getEmail());
        question.setQuestion(qf.getMessage());

        questionService.addQuestion(question);

        return "redirect:/youtube";

    }

}
