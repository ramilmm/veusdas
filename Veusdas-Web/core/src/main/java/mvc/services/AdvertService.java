package mvc.services;

import mvc.common.Adverts;
import mvc.repositories.AdvertsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;

@Service
public class AdvertService {

    @Autowired
    private AdvertsRepository advertsRepository;

    @Transactional
    public void addAdvert(Adverts adverts){
        advertsRepository.saveAndFlush(adverts);
    }

    @Transactional
    public void deleteAdvertById(Long id){
        advertsRepository.delete(advertsRepository.findById(id));
    }

    @Transactional
    public void deleteAdvert(Adverts adverts){
        advertsRepository.delete(adverts);
    }

    @Transactional
    public void updateAdvert(Adverts adverts){
        advertsRepository.saveAndFlush(adverts);
    }

    public ArrayList<Adverts> getActiveAdverts(){
        return advertsRepository.findByActive(true);
    }

    public ArrayList<Adverts> getNonActiveAdverts() {
        return advertsRepository.findByActive(false);
    }

    public Adverts getAdvertById(Long id){
        return advertsRepository.findById(id);
    }

}
