package ru.veusdas.Service;


import ru.veusdas.Model.Spisok;

import java.util.List;

public interface SpisokService {

     List<Spisok> getActiveSpisok();

     List<Spisok> getNonActiveSpisok();

     List<Spisok> getSpisok20();

     List<Spisok> getSpisok50();
     List<Spisok> getSpisok100();

     Spisok getById(Long id);

     void addSpisok(Spisok pub);

     void deleteSpisok(Spisok pub);
     void deleteSpisokById(Long id);
     void update(Spisok pub);

}
