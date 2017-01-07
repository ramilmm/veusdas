package ru.veusdas.Service.ServiceImp;

import ru.veusdas.Model.User;
import ru.veusdas.Repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import ru.veusdas.Service.UserService;

import java.util.ArrayList;
import java.util.HashSet;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserRepository userRepository;
    @Autowired
    private BCryptPasswordEncoder bCryptPasswordEncoder;

    @Override
    public void save(User user) {
        user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
        user.setRole("USER");
        userRepository.save(user);
    }

    @Override
    public User findById(Long id) {
        return userRepository.findById(id);
    }

    @Override
    public User findByUsername(String username) {
        return userRepository.findByUsername(username);
    }

    @Override
    public ArrayList<User> findByReferal_by(Long referal_by) {
        return userRepository.findByReferal(referal_by);
    }

    @Override
    public ArrayList<User> findAll() {
        return (ArrayList<User>) userRepository.findAll();
    }

    public void update(User user){
        userRepository.save(user);
    }

    public void delete(User user) {
        userRepository.delete(user);
    }
}
