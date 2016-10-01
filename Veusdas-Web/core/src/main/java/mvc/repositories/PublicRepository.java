package mvc.repositories;


import mvc.common.Public;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.ArrayList;

public interface PublicRepository extends JpaRepository<Public,Long> {

    ArrayList<Public> findByActive(boolean active);

    ArrayList<Public> findByPublic_category(int public_category);

    Public findById(long id);


}
