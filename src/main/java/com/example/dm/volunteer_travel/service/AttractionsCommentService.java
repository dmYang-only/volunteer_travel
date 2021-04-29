package com.example.dm.volunteer_travel.service;

import com.example.dm.volunteer_travel.core.Result;
import com.example.dm.volunteer_travel.core.ResultGenerator;
import com.example.dm.volunteer_travel.core.ServiceException;
import com.example.dm.volunteer_travel.model.AttractionsComment;
import com.example.dm.volunteer_travel.repository.AttractionsCommentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.criteria.Predicate;
import java.util.ArrayList;
import java.util.List;


@Service
public class AttractionsCommentService {

    @Autowired
    private AttractionsCommentRepository attractionsCommentRepository;


    @Transactional(rollbackFor = Exception.class)
    public Result save(AttractionsComment attractionsComment) {
        attractionsCommentRepository.saveAndFlush(attractionsComment);
        return ResultGenerator.genSuccessResult();
    }

    public Result delete(int id) {
        attractionsCommentRepository.deleteById(id);
        return ResultGenerator.genSuccessResult();
    }

    public Page<AttractionsComment> findByPage(Pageable pageable) {
        Page<AttractionsComment> page= attractionsCommentRepository.findAll((root, query, cb) -> {
            List<Predicate> predicates = new ArrayList<>();
            query.where(predicates.toArray(new Predicate[]{}));
            query.orderBy(cb.desc(root.get("addDate")));
            return null;
        }, pageable);
        return page;
    }

    public AttractionsComment findById(int id) {
        AttractionsComment attractionsComment = attractionsCommentRepository.findById(id).orElseThrow(() -> new ServiceException("唐山ID错误!"));
        return attractionsComment;
    }

}
