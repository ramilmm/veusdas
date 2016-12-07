package ru.veusdas.Service.ServiceImp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ru.veusdas.Model.Adverts;
import ru.veusdas.Repository.AdvertsRepositoryCustom;
import ru.veusdas.Service.AdvertsService;

import java.util.ArrayList;

@Service
public class AdvertsServiceImpl implements AdvertsService {

    @Autowired
    private AdvertsRepositoryCustom advertsRepositoryCustom;

    @Override
    public void addAdvert(Adverts adverts){
        advertsRepositoryCustom.saveAndFlush(adverts);
    }

    @Override
    public void deleteAdvertById(Long id){
        advertsRepositoryCustom.delete(advertsRepositoryCustom.findById(id));
    }

    @Override
    public void deleteAdvert(Adverts adverts){
        advertsRepositoryCustom.delete(adverts);
    }

    @Override
    public void updateAdvert(Adverts adverts){
        advertsRepositoryCustom.saveAndFlush(adverts);
    }

    @Override
    public ArrayList<Adverts> getActiveAdverts(){
        ArrayList<Adverts> ads = advertsRepositoryCustom.findByActive(true);
        for (Adverts ad : ads) {
            switch (ad.getAdvert_type()) {
                case "1": {
                    ad.setAdvert_type("Продажа");
                    break;
                }
                case "2": {
                    ad.setAdvert_type("Аренда");
                    break;
                }
                case "3": {
                    ad.setAdvert_type("ВП");
                    break;
                }
                case "4": {
                    ad.setAdvert_type("Дизайн");
                    break;
                }
                case "5": {
                    ad.setAdvert_type("Менеджер по рекламе");
                    break;
                }
                case "6": {
                    ad.setAdvert_type("Заливщик");
                    break;
                }
                case "7": {
                    ad.setAdvert_type("Прочее");
                    break;
                }
            }
        }
        return ads;
    }

    @Override
    public ArrayList<Adverts> getNonActiveAdverts() {
        return advertsRepositoryCustom.findByActive(false);
    }

    @Override
    public Adverts getAdvertById(Long id){
        return advertsRepositoryCustom.findById(id);
    }

    public ArrayList<Adverts> getActiveFromUser(String username){
        ArrayList<Adverts> ads = advertsRepositoryCustom.findByActiveAndUser(true,username);
        for (Adverts ad : ads) {
            switch (ad.getAdvert_type()) {
                case "1": {
                    ad.setAdvert_type("Продажа");
                    break;
                }
                case "2": {
                    ad.setAdvert_type("Аренда");
                    break;
                }
                case "3": {
                    ad.setAdvert_type("ВП");
                    break;
                }
                case "4": {
                    ad.setAdvert_type("Дизайн");
                    break;
                }
                case "5": {
                    ad.setAdvert_type("Менеджер по рекламе");
                    break;
                }
                case "6": {
                    ad.setAdvert_type("Заливщик");
                    break;
                }
                case "7": {
                    ad.setAdvert_type("Прочее");
                    break;
                }
            }
        }
        return ads;
    }


}
