package com.example.dm.volunteer_travel.repository;

import com.example.dm.volunteer_travel.model.Attractions;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.stereotype.Repository;

/**
 * @Author
 * @Date 2019/4/19
 */
@Repository
public interface AttractionsRepository extends JpaRepository<Attractions, String>, JpaSpecificationExecutor<Attractions> {

}