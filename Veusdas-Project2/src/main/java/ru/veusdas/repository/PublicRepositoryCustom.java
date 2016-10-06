package ru.veusdas.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import ru.veusdas.model.PublicList;

import java.util.List;

@Repository
public interface PublicRepositoryCustom extends JpaRepository<PublicList,Long> {

    List<PublicList> findByActive(boolean active);

    @Query("select s from PublicList s where s.public_category =?1")
    List<PublicList> findByPublic_category(int public_category);

    PublicList findById(long id);


}