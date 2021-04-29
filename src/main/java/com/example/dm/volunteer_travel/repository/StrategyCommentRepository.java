package com.example.dm.volunteer_travel.repository;

import com.example.dm.volunteer_travel.model.StrategyComment;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.stereotype.Repository;


@Repository
public interface StrategyCommentRepository extends JpaRepository<StrategyComment, Integer>, JpaSpecificationExecutor<StrategyComment> {

}