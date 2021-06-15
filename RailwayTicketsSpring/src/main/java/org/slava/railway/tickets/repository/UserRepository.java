package org.slava.railway.tickets.repository;

import org.slava.railway.tickets.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {

    Optional<User> findByEmail(String email);

    public default int getCount() {
        return findAll().size();
    }

}
