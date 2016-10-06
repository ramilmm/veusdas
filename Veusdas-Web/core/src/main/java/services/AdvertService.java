package services;

import common.Adverts;
import repositories.AdvertsRepositoryCustom;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;

@Service
public class AdvertService {

    @Autowired
    private AdvertsRepositoryCustom advertsRepositoryCustom;

    @Transactional
    public void addAdvert(Adverts adverts){
        advertsRepositoryCustom.saveAndFlush(adverts);
    }

    @Transactional
    public void deleteAdvertById(Long id){
        advertsRepositoryCustom.delete(advertsRepositoryCustom.findById(id));
    }

    @Transactional
    public void deleteAdvert(Adverts adverts){
        advertsRepositoryCustom.delete(adverts);
    }

    @Transactional
    public void updateAdvert(Adverts adverts){
        advertsRepositoryCustom.saveAndFlush(adverts);
    }

    public ArrayList<Adverts> getActiveAdverts(){
        return advertsRepositoryCustom.findByActive(true);
    }

    public ArrayList<Adverts> getNonActiveAdverts() {
        return advertsRepositoryCustom.findByActive(false);
    }

    public Adverts getAdvertById(Long id){
        return advertsRepositoryCustom.findById(id);
    }

}
