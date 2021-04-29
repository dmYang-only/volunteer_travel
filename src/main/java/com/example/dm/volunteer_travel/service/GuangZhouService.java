package com.example.dm.volunteer_travel.service;

import com.example.dm.volunteer_travel.core.Result;
import com.example.dm.volunteer_travel.core.ResultGenerator;
import com.example.dm.volunteer_travel.core.ServiceException;
import com.example.dm.volunteer_travel.model.TangShan;
import com.example.dm.volunteer_travel.repository.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.thymeleaf.util.StringUtils;

import javax.persistence.criteria.Predicate;
import java.util.ArrayList;
import java.util.List;


@Service
public class GuangZhouService {

    @Autowired
    private TangShanRepository tangShanRepository;


    @Transactional(rollbackFor = Exception.class)
    public Result save(TangShan tangShan) {
        tangShanRepository.saveAndFlush(tangShan);
        return ResultGenerator.genSuccessResult();
    }

    public Result delete(int id) {
        tangShanRepository.deleteById(id);
        return ResultGenerator.genSuccessResult();
    }

    public Page<TangShan> findByPage(Pageable pageable) {
        Page<TangShan> page= tangShanRepository.findAll((root, query, cb) -> {
            List<Predicate> predicates = new ArrayList<>();
            query.where(predicates.toArray(new Predicate[]{}));
            query.orderBy(cb.desc(root.get("addDate")));
            return null;
        }, pageable);
        return page;
    }

    public TangShan findById(int id) {
        TangShan tangShan = tangShanRepository.findById(id).orElseThrow(() -> new ServiceException("唐山ID错误!"));
        return tangShan;
    }

    public Page<TangShan> findByPageCondition(String searchName, Pageable pageable) {
        Page<TangShan> tangShanPage = tangShanRepository.findAll((root, query, cb) -> {
            List<Predicate> predicates = new ArrayList<>();
            //模糊查询
            if (!StringUtils.isEmpty(searchName)) {
                predicates.add((cb.like(root.get("title"), "%" + searchName + "%")));
            }
            query.where(predicates.toArray(new Predicate[]{}));
            query.orderBy(cb.desc(root.get("addDate")));
            return null;
        }, pageable);
        return tangShanPage;
    }

}
