package com.example.dm.volunteer_travel.repository;

import com.example.dm.volunteer_travel.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.stereotype.Repository;

/**
 * @Author
 * @Date 2019/4/19
 */
@Repository
public interface UserRepository extends JpaRepository<User, String>, JpaSpecificationExecutor<User> {
    User findUserByUsername(String username);
}
