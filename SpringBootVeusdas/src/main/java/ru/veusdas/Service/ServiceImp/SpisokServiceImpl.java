package ru.veusdas.Service.ServiceImp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ru.veusdas.Service.SpisokService;
import ru.veusdas.Model.Spisok;
import ru.veusdas.Repository.SpisokRepositoryCustom;

import java.util.*;

@Service
public class    SpisokServiceImpl implements SpisokService {

    @Autowired
    SpisokRepositoryCustom spisokRepositoryCustom;
    @Override
    public List<Spisok> getActiveSpisok(){
        return spisokRepositoryCustom.findByActive(true);
    }

    public ArrayList<Spisok> getActiveFromUser(String username) {
        return spisokRepositoryCustom.findByActiveAndUser(true,username);
    }
    @Override
    public List<Spisok> getNonActiveSpisok(){
        return spisokRepositoryCustom.findByActive(false);
    }
    @Override
    public List<Spisok> getSpisok20(){
        return spisokRepositoryCustom.findByPublic_category(20);
    }
    @Override
    public List<Spisok> getSpisok50(){
        return spisokRepositoryCustom.findByPublic_category(50);
    }
    @Override
    public List<Spisok> getSpisok100(){
        return spisokRepositoryCustom.findByPublic_category(100);
    }
    @Override
    public Spisok getById(Long id){
        return spisokRepositoryCustom.findById(id);
    }
    @Override
    public void addSpisok(Spisok pub){
        spisokRepositoryCustom.save(pub);
    }
    @Override
    public void deleteSpisok(Spisok pub){
        spisokRepositoryCustom.delete(pub);
    }
    @Override
    public void deleteSpisokById(Long id){
        spisokRepositoryCustom.delete(spisokRepositoryCustom.findById(id));
    }
    @Override
    public void update(Spisok pub){
        spisokRepositoryCustom.save(pub);
    }

    @Override
    public List<Spisok> getList(ArrayList<Spisok> spisok){
        Date now = new Date();
        for (Spisok s : spisok) {
            if (s.getTopEnd() != null && now.after(s.getTopEnd())) {
                s.setOnTop(false);
                s.setTopEnd(null);
                s.setTopStart(null);
                update(s);
            }
        }
        System.out.println(spisok);
        Collections.sort(spisok, new Comparator<Spisok>() {
            @Override
            public int compare(Spisok s1, Spisok s2) {
                return Boolean.compare(s2.isOnTop(),s1.isOnTop());
            }
        });
        System.out.println(spisok);
        Collections.sort(spisok, new Comparator<Spisok>() {
            public int compare(Spisok s1, Spisok s2) {
                if (s1.getTopStart() == null || s2.getTopStart() == null)
                    return 0;
                return s2.getTopStart().compareTo(s1.getTopStart());
            }
        });
        System.out.println(spisok);
        return spisok;
    }
}
