package mvc.repositories;


import mvc.common.Adverts;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.ArrayList;

public interface AdvertsRepository extends JpaRepository<Adverts,Long>{

    ArrayList<Adverts> findByActive(boolean active);

    Adverts findById(long id);

}
