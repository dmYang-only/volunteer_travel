package com.example.dm.volunteer_travel.service;

import com.example.dm.volunteer_travel.core.Result;
import com.example.dm.volunteer_travel.core.ResultGenerator;
import com.example.dm.volunteer_travel.core.ServiceException;
import com.example.dm.volunteer_travel.model.RouteComment;
import com.example.dm.volunteer_travel.repository.RouteCommentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.criteria.Predicate;
import java.util.ArrayList;
import java.util.List;


@Service
public class RouteCommentService {

    @Autowired
    private RouteCommentRepository routeCommentRepository;


    @Transactional(rollbackFor = Exception.class)
    public Result save(RouteComment routeComment) {
        routeCommentRepository.saveAndFlush(routeComment);
        return ResultGenerator.genSuccessResult();
    }

    public Result delete(int id) {
        routeCommentRepository.deleteById(id);
        return ResultGenerator.genSuccessResult();
    }

    public Page<RouteComment> findByPage(Pageable pageable) {
        Page<RouteComment> page= routeCommentRepository.findAll((root, query, cb) -> {
            List<Predicate> predicates = new ArrayList<>();
            query.where(predicates.toArray(new Predicate[]{}));
            query.orderBy(cb.desc(root.get("addDate")));
            return null;
        }, pageable);
        return page;
    }

    public RouteComment findById(int id) {
        RouteComment routeComment = routeCommentRepository.findById(id).orElseThrow(() -> new ServiceException("线路评论ID错误!"));
        return routeComment;
    }

}
