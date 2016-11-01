package ru.veusdas.Service;

import ru.veusdas.Model.Instagram;

import java.util.List;


public interface InstagramService {


    List<Instagram> getActiveInst();

    List<Instagram> getNonActiveInst();

    Instagram getById(Long id);

    void addInst(Instagram inst);

    void deleteInst(Instagram inst);
    void deleteInstById(Long id);
    void update(Instagram inst);

}
