package ru.veusdas.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import ru.veusdas.model.PublicList;
import ru.veusdas.repository.PublicRepositoryCustom;

import java.util.List;

@Service
public class PublicService {

    @Autowired
    @Qualifier("rep")
    private PublicRepositoryCustom publicListRepositoryCustom;

    @Transactional
    public void addPublic(PublicList pub){
        publicListRepositoryCustom.saveAndFlush(pub);
    }

    @Transactional
    public void deletePublic(PublicList pub){
        publicListRepositoryCustom.delete(pub);
    }

    @Transactional
    public void deletePublicById(Long id){
        publicListRepositoryCustom.delete(publicListRepositoryCustom.findById(id));
    }

    @Transactional
    public void update(PublicList pub){
        publicListRepositoryCustom.saveAndFlush(pub);
    }

    public List<PublicList> getActivePublic(){
        return publicListRepositoryCustom.findByActive(true);
    }

    public List<PublicList> getNonActivePublic(){
        return publicListRepositoryCustom.findByActive(false);
    }

    public List<PublicList> getPublic20(){
        return publicListRepositoryCustom.findByPublic_category(20);
    }

    public List<PublicList> getPublic50(){
        return publicListRepositoryCustom.findByPublic_category(50);
    }

    public List<PublicList> getPublic100(){
        return publicListRepositoryCustom.findByPublic_category(100);
    }

    public PublicList getById(Long id){
        return publicListRepositoryCustom.findById(id);
    }
}
