package com.example.dm.volunteer_travel.repository;

import com.example.dm.volunteer_travel.model.AttractionsComment;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.stereotype.Repository;


@Repository
public interface AttractionsCommentRepository extends JpaRepository<AttractionsComment, Integer>, JpaSpecificationExecutor<AttractionsComment> {

}