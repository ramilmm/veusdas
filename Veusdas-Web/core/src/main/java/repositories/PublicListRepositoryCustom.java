package repositories;


import common.PublicList;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface PublicListRepositoryCustom extends JpaRepository<PublicList,Long> {

    List<PublicList> findByActive(boolean active);

    @Query("select pl from PublicList pl where pl.public_category =?1")
    List<PublicList> findByPublic_category(int public_category);

    PublicList findById(long id);


}
