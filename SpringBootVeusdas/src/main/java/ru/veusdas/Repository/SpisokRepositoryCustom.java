package ru.veusdas.Repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import ru.veusdas.Model.Adverts;
import ru.veusdas.Model.Spisok;

import java.util.ArrayList;
import java.util.List;

@Repository
public interface SpisokRepositoryCustom extends CrudRepository<Spisok,Long> {

    List<Spisok> findByActive(boolean active);

    @Query("select s from Spisok s where s.public_category =?1 and s.active =true")
    List<Spisok> findByPublic_category(int public_category);

    ArrayList<Spisok> findByActiveAndUser(boolean active, String user);

    Spisok findById(Long id);


}
