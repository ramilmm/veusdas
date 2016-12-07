package ru.veusdas.Service;

import ru.veusdas.Model.User;

import java.util.ArrayList;

public interface UserService {
    void save(User user);

    User findByUsername(String username);

    ArrayList<User> findAll();
}
