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

    private Long countID = 5L;

    @GetMapping("/youtube")
    public String render(Model model){
        return "youtube/index";
    }

    @PostMapping("/youtube/addQuestion")
    public String add(@Valid QuestionForm qf, BindingResult bindingResult){
        if (bindingResult.hasErrors()) {
            return "youtube/index";
        }

        if (qf.getName() == null || qf.getEmail() == null || qf.getMessage() == null) {
            return "redirect:/youtube";
        }

        Questions question = new Questions();

        question.setId(countID);
        question.setName(qf.getName());
        question.setEmail(qf.getEmail());
        question.setQuestion(qf.getMessage());
        question.setActive(true);

        questionService.addQuestion(question);
        countID++;

        return "redirect:/youtube";

    }

}
