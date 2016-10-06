//package services;
//
//import common.Users;
//import repositories.UsersRepositoryCustom;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Service;
//import org.springframework.transaction.annotation.Transactional;
//
//import java.util.List;
//
//@Service
//public class UserService {
//
//    @Autowired
//    private UsersRepositoryCustom usersRepositoryCustom;
//
//    @Transactional
//    public void add(Users users) {
//        usersRepositoryCustom.saveAndFlush(users);
//    }
//
//    @Transactional
//    public void update(Users users) {
//        usersRepositoryCustom.saveAndFlush(users);
//    }
//
//    @Transactional
//    public void delete(Users users) {
//        usersRepositoryCustom.delete(users);
//    }
//
//    @Transactional
//    public void deleteById(Long id) {
//        usersRepositoryCustom.delete(usersRepositoryCustom.findById(id));
//    }
//
//    @Transactional
//    public Users getById(Long id) {
//        return usersRepositoryCustom.findById(id);
//    }
//
//    @Transactional
//    public Users getByLogin(String login) {
//        return usersRepositoryCustom.findByLogin(login);
//    }
//
//    public List<Users> getAll(){ return usersRepositoryCustom.findAll(); }
//
//}
