package ru.veusdas.Service;

import ru.veusdas.Model.User;

import java.util.ArrayList;

public interface UserService {
    void save(User user);

    User findByUsername(String username);

    ArrayList<User> findAll();

    User findById(Long id);

    ArrayList<User> findByReferal_by(Long id);
}
