package mvc.services;

import mvc.common.Public;
import mvc.repositories.PublicRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;

@Service
public class PublicService {

    @Autowired
    private PublicRepository publicRepository;

    @Transactional
    public void addPublic(Public pub){
        publicRepository.saveAndFlush(pub);
    }

    @Transactional
    public void deletePublic(Public pub){
        publicRepository.delete(pub);
    }

    @Transactional
    public void deletePublicById(Long id){
        publicRepository.delete(publicRepository.findById(id));
    }

    @Transactional
    public void update(Public pub){
        publicRepository.saveAndFlush(pub);
    }

    public ArrayList<Public> getActivePublic(){
        return publicRepository.findByActive(true);
    }

    public ArrayList<Public> getNonActivePublic(){
        return publicRepository.findByActive(false);
    }

    public ArrayList<Public> getPublic20(){
        return publicRepository.findByPublic_category(20);
    }

    public ArrayList<Public> getPublic50(){
        return publicRepository.findByPublic_category(50);
    }

    public ArrayList<Public> getPublic100(){
        return publicRepository.findByPublic_category(100);
    }

    public Public getById(Long id){
        return publicRepository.findById(id);
    }
}
