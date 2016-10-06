package ru.veusdas.Repository;

import org.springframework.stereotype.Repository;
import ru.veusdas.Model.Questions;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.ArrayList;

@Repository
public interface QuestionsRepositoryCustom extends JpaRepository<Questions,Long>{

    ArrayList<Questions> findByActive(boolean active);

    Questions findById(long id);

}

