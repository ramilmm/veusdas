package ru.veusdas.Repository;


import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import ru.veusdas.Model.Instagram;
import ru.veusdas.Model.Spisok;

import java.util.List;

@Repository
public interface InstagramRepositoryCustom extends CrudRepository<Instagram,Long> {

    List<Instagram> findByActive(boolean active);

    Instagram findById(Long id);


}

