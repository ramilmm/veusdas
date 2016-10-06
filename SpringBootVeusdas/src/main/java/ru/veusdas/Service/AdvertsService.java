package ru.veusdas.Service;

import ru.veusdas.Model.Adverts;

import java.util.ArrayList;


public interface AdvertsService {

    void addAdvert(Adverts adverts);

    void deleteAdvertById(Long id);

    void deleteAdvert(Adverts adverts);

    void updateAdvert(Adverts adverts);

    ArrayList<Adverts> getActiveAdverts();

    ArrayList<Adverts> getNonActiveAdverts();

    Adverts getAdvertById(Long id);
}