package ru.veusdas.Service.ServiceImp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ru.veusdas.Service.SpisokService;
import ru.veusdas.Model.Spisok;
import ru.veusdas.Repository.SpisokRepositoryCustom;

import java.util.List;

@Service
public class SpisokServiceImpl implements SpisokService {

    @Autowired
    SpisokRepositoryCustom spisokRepositoryCustom;
    @Override
    public List<Spisok> getActiveSpisok(){
        return spisokRepositoryCustom.findByActive(true);
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


}
