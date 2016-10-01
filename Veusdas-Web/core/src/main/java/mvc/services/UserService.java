package mvc.services;

import mvc.common.Users;
import mvc.repositories.UserRepositoryCustom;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class UserService {

    @Autowired
    private UserRepositoryCustom userRepositoryCustom;

    @Transactional
    public void add(Users users) {
        userRepositoryCustom.saveAndFlush(users);
    }

    @Transactional
    public void update(Users users) {
        userRepositoryCustom.saveAndFlush(users);
    }

    @Transactional
    public void delete(Users users) {
        userRepositoryCustom.delete(users);
    }

    @Transactional
    public void deleteById(Long id) {
        userRepositoryCustom.delete(userRepositoryCustom.findById(id));
    }

    @Transactional
    public Users getById(Long id) {
        return userRepositoryCustom.findById(id);
    }

    @Transactional
    public Users getByLogin(String login) {
        return userRepositoryCustom.findByLogin(login);
    }

    public List<Users> getAll(){ return userRepositoryCustom.findAll(); }

}
