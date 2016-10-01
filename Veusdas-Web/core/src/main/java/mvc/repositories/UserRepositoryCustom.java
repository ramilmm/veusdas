package mvc.repositories;

import mvc.common.Users;
import org.springframework.data.jpa.repository.JpaRepository;


public interface UserRepositoryCustom extends JpaRepository<Users, Long> {

    Users findById(Long id);

    Users findByLogin(String login);

}
