//package services;
//
//import common.Questions;
//import repositories.QuestionsRepositoryCustom;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Service;
//import org.springframework.transaction.annotation.Transactional;
//
//import java.util.ArrayList;
//
//@Service
//public class QuestionService {
//
//    @Autowired
//    private QuestionsRepositoryCustom questionsRepositoryCustom;
//
//    @Transactional
//    public void addQuestion(Questions questions){
//        questionsRepositoryCustom.saveAndFlush(questions);
//    }
//
//    @Transactional
//    public void deleteQuestion(Questions questions){
//        questionsRepositoryCustom.delete(questions);
//    }
//
//    @Transactional
//    public void deleteQuestionById(Long id){
//        questionsRepositoryCustom.delete(questionsRepositoryCustom.findById(id));
//    }
//
//    @Transactional
//    public void update(Questions questions){
//        questionsRepositoryCustom.saveAndFlush(questions);
//    }
//
//    public ArrayList<Questions> getActiveQuestions(){
//        return questionsRepositoryCustom.findByActive(true);
//    }
//
//    public Questions getById(Long id){
//        return questionsRepositoryCustom.findById(id);
//    }
//
//}
