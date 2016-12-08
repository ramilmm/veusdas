package ru.veusdas.Repository;

import ru.veusdas.Model.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.ArrayList;

public interface UserRepository extends JpaRepository<User, Long> {
    User findByUsername(String username);

    User findById(Long id);

    ArrayList<User> findByReferal(Long referal);
}
