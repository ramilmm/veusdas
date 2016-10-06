package ru.veusdas.Service.ServiceImp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import ru.veusdas.Model.Questions;
import ru.veusdas.Repository.QuestionsRepositoryCustom;
import ru.veusdas.Service.QuestionService;

import java.util.ArrayList;

@Service
public class QuestionServiceImpl implements QuestionService {

    @Autowired
    private QuestionsRepositoryCustom questionsRepositoryCustom;

    @Override
    @Transactional
    public void addQuestion(Questions questions){
        questionsRepositoryCustom.saveAndFlush(questions);
    }
    @Override
    @Transactional
    public void deleteQuestion(Questions questions){
        questionsRepositoryCustom.delete(questions);
    }
    @Override
    @Transactional
    public void deleteQuestionById(Long id){
        questionsRepositoryCustom.delete(questionsRepositoryCustom.findById(id));
    }
    @Override
    @Transactional
    public void update(Questions questions){
        questionsRepositoryCustom.saveAndFlush(questions);
    }
    @Override
    public ArrayList<Questions> getActiveQuestions(){
        return questionsRepositoryCustom.findByActive(true);
    }
    @Override
    public Questions getById(Long id){
        return questionsRepositoryCustom.findById(id);
    }



}
