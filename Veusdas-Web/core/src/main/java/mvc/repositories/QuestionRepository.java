package mvc.repositories;


import mvc.common.Questions;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.ArrayList;

public interface QuestionRepository extends JpaRepository<Questions,Long>{

    ArrayList<Questions> findByActive(boolean active);

    Questions findById(long id);

}
