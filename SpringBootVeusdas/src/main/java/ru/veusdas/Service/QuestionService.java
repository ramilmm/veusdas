package ru.veusdas.Service;

import ru.veusdas.Model.Questions;

import java.util.ArrayList;

/**
 * Created by Горендьже on 06.10.2016.
 */
public interface QuestionService {

     void addQuestion(Questions questions);
     void deleteQuestion(Questions questions);
     void deleteQuestionById(Long id);
     void update(Questions questions);
     ArrayList<Questions> getActiveQuestions();
     Questions getById(Long id);



}
