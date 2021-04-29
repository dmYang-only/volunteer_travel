package com.example.dm.volunteer_travel.service;

import com.example.dm.volunteer_travel.core.Result;
import com.example.dm.volunteer_travel.core.ResultGenerator;
import com.example.dm.volunteer_travel.core.ServiceException;
import com.example.dm.volunteer_travel.model.TravelDiary;
import com.example.dm.volunteer_travel.repository.TravelDiaryRepository;
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
public class TravelDiaryService {

    @Autowired
    private TravelDiaryRepository travelDiaryRepository;


    @Transactional(rollbackFor = Exception.class)
    public Result save(TravelDiary travelDiary) {
        travelDiaryRepository.saveAndFlush(travelDiary);
        return ResultGenerator.genSuccessResult();
    }

    public Result delete(int id) {
        travelDiaryRepository.deleteById(id);
        return ResultGenerator.genSuccessResult();
    }

    public Page<TravelDiary> findByPage(Pageable pageable) {
        Page<TravelDiary> page= travelDiaryRepository.findAll((root, query, cb) -> {
            List<Predicate> predicates = new ArrayList<>();
            query.where(predicates.toArray(new Predicate[]{}));
            query.orderBy(cb.desc(root.get("addDate")));
            return null;
        }, pageable);
        return page;
    }

    public TravelDiary findById(int id) {
        TravelDiary travelDiary = travelDiaryRepository.findById(id).orElseThrow(() -> new ServiceException("旅游日记ID错误!"));
        return travelDiary;
    }

    public Page<TravelDiary> findByPageCondition(String searchName, Pageable pageable) {
        Page<TravelDiary> travelDiaryPage = travelDiaryRepository.findAll((root, query, cb) -> {
            List<Predicate> predicates = new ArrayList<>();
            //模糊查询
            if (!StringUtils.isEmpty(searchName)) {
                predicates.add((cb.like(root.get("title"), "%" + searchName + "%")));
            }
            query.where(predicates.toArray(new Predicate[]{}));
            query.orderBy(cb.desc(root.get("addDate")));
            return null;
        }, pageable);
        return travelDiaryPage;
    }

}
