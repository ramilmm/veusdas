package ru.veusdas.Service.ServiceImp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ru.veusdas.Model.Instagram;
import ru.veusdas.Repository.InstagramRepositoryCustom;
import ru.veusdas.Service.InstagramService;

import java.util.List;

@Service
public class InstagramServiceImpl implements InstagramService{

    @Autowired
    InstagramRepositoryCustom instagramRepository;


    @Override
    public List<Instagram> getActiveInst() {
        return instagramRepository.findByActive(true);
    }

    @Override
    public List<Instagram> getNonActiveInst() {
        return instagramRepository.findByActive(false);
    }

    @Override
    public Instagram getById(Long id) {
        return instagramRepository.findById(id);
    }

    @Override
    public void addInst(Instagram inst) {
        instagramRepository.save(inst);
    }

    @Override
    public void deleteInst(Instagram inst) {
        instagramRepository.delete(inst);
    }

    @Override
    public void deleteInstById(Long id) {
        instagramRepository.delete(instagramRepository.findById(id));
    }

    @Override
    public void update(Instagram inst) {
        instagramRepository.save(inst);
    }
}
