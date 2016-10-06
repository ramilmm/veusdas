package ru.veusdas.Repository;



import org.springframework.stereotype.Repository;
import ru.veusdas.Model.Adverts;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.ArrayList;

@Repository
public interface AdvertsRepositoryCustom extends JpaRepository<Adverts,Long>{

    ArrayList<Adverts> findByActive(boolean active);

    Adverts findById(long id);

}
