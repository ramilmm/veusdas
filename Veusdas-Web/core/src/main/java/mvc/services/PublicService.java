package mvc.services;

import mvc.common.PublicList;
import mvc.repositories.PublicRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class PublicService {

    @Autowired
    private PublicRepository publicRepository;

    @Transactional
    public void addPublic(PublicList pub){
        publicRepository.saveAndFlush(pub);
    }

    @Transactional
    public void deletePublic(PublicList pub){
        publicRepository.delete(pub);
    }

    @Transactional
    public void deletePublicById(Long id){
        publicRepository.delete(publicRepository.findById(id));
    }

    @Transactional
    public void update(PublicList pub){
        publicRepository.saveAndFlush(pub);
    }

    public List<PublicList> getActivePublic(){
        return publicRepository.findByActive(true);
    }

    public List<PublicList> getNonActivePublic(){
        return publicRepository.findByActive(false);
    }

    public List<PublicList> getPublic20(){
        return publicRepository.findByPublic_category(20);
    }

    public List<PublicList> getPublic50(){
        return publicRepository.findByPublic_category(50);
    }

    public List<PublicList> getPublic100(){
        return publicRepository.findByPublic_category(100);
    }

    public PublicList getById(Long id){
        return publicRepository.findById(id);
    }
}
