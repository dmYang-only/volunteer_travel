package com.example.dm.volunteer_travel.repository;

import com.example.dm.volunteer_travel.model.User;
import com.example.dm.volunteer_travel.model.TravelStrategy;
import com.example.dm.volunteer_travel.model.UserStrategy;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import java.util.List;

public interface UserStrategyRepository extends JpaRepository<UserStrategy, String>, JpaSpecificationExecutor<UserStrategy> {

    List<UserStrategy> findUserStrategyByUser(User user);

    UserStrategy findUserStrategyByTravelStrategyAndUser(TravelStrategy travelStrategy, User user);
}
