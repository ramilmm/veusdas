package mvc.repositories;


import mvc.common.PublicList;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface PublicRepository extends JpaRepository<PublicList,Long> {

    List<PublicList> findByActive(boolean active);

    List<PublicList> findByPublic_category(int public_category);

    PublicList findById(long id);


}
