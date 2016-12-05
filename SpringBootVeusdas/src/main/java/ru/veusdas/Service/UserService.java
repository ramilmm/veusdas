package ru.veusdas.Service;

import ru.veusdas.Model.User;

public interface UserService {
    void save(User user);

    User findByUsername(String username);
}
