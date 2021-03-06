package com.example.dm.volunteer_travel.repository;

import com.example.dm.volunteer_travel.model.TravelRoute;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

public interface TravelRouteRepository extends JpaRepository<TravelRoute, String>, JpaSpecificationExecutor<TravelRoute> {
}
