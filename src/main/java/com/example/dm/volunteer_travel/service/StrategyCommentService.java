package com.example.dm.volunteer_travel.service;

import com.example.dm.volunteer_travel.core.Result;
import com.example.dm.volunteer_travel.core.ResultGenerator;
import com.example.dm.volunteer_travel.core.ServiceException;
import com.example.dm.volunteer_travel.model.StrategyComment;
import com.example.dm.volunteer_travel.repository.StrategyCommentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.criteria.Predicate;
import java.util.ArrayList;
import java.util.List;


@Service
public class StrategyCommentService {

    @Autowired
    private StrategyCommentRepository strategyCommentRepository;


    @Transactional(rollbackFor = Exception.class)
    public Result save(StrategyComment strategyComment) {
        strategyCommentRepository.saveAndFlush(strategyComment);
        return ResultGenerator.genSuccessResult();
    }

    public Result delete(int id) {
        strategyCommentRepository.deleteById(id);
        return ResultGenerator.genSuccessResult();
    }

    public Page<StrategyComment> findByPage(Pageable pageable) {
        Page<StrategyComment> page= strategyCommentRepository.findAll((root, query, cb) -> {
            List<Predicate> predicates = new ArrayList<>();
            query.where(predicates.toArray(new Predicate[]{}));
            query.orderBy(cb.desc(root.get("addDate")));
            return null;
        }, pageable);
        return page;
    }

    public StrategyComment findById(int id) {
        StrategyComment strategyComment = strategyCommentRepository.findById(id).orElseThrow(() -> new ServiceException("日记评论ID错误!"));
        return strategyComment;
    }

}
