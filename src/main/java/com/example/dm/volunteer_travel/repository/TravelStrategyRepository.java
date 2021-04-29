package com.example.dm.volunteer_travel.repository;

import com.example.dm.volunteer_travel.model.TravelStrategy;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

public interface TravelStrategyRepository extends JpaRepository<TravelStrategy, String>, JpaSpecificationExecutor<TravelStrategy> {



}
