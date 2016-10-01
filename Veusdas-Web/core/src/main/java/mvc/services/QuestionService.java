package mvc.services;

import mvc.common.Questions;
import mvc.repositories.QuestionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;

@Service
public class QuestionService {

    @Autowired
    private QuestionRepository questionRepository;

    @Transactional
    public void addQuestion(Questions questions){
        questionRepository.saveAndFlush(questions);
    }

    @Transactional
    public void deleteQuestion(Questions questions){
        questionRepository.delete(questions);
    }

    @Transactional
    public void deleteQuestionById(Long id){
        questionRepository.delete(questionRepository.findById(id));
    }

    @Transactional
    public void update(Questions questions){
        questionRepository.saveAndFlush(questions);
    }

    public ArrayList<Questions> getActiveQuestions(){
        return questionRepository.findByActive(true);
    }

    public Questions getById(Long id){
        return questionRepository.findById(id);
    }

}
