package com.example.dm.volunteer_travel.service;

import com.example.dm.volunteer_travel.core.Result;
import com.example.dm.volunteer_travel.core.ResultGenerator;
import com.example.dm.volunteer_travel.core.ServiceException;
import com.example.dm.volunteer_travel.model.*;
import com.example.dm.volunteer_travel.repository.AttractionsRepository;
import com.example.dm.volunteer_travel.repository.HotelRepository;
import com.example.dm.volunteer_travel.repository.UserHotelRepository;
import com.example.dm.volunteer_travel.repository.UserAttractionsRepository;
import com.example.dm.volunteer_travel.repository.UserRepository;
import com.example.dm.volunteer_travel.util.CookieUitl;
import com.example.dm.volunteer_travel.util.IdGenerator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.thymeleaf.util.StringUtils;

import javax.persistence.criteria.Predicate;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * @Author
 * @Date 2019/6/5
 */
@Service
public class ReserveService {

    @Autowired
    private HotelRepository hotelRepository;

    @Autowired
    private AttractionsRepository attractionsRepository;

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private UserHotelRepository userHotelRepository;

    @Autowired
    private UserAttractionsRepository userAttractionsRepository;

    public Page<Hotel> reserveHotelListUI(String searchName, Pageable pageable) {
        //查询启用的酒店列表
        Page<Hotel> hotelPage = hotelRepository.findAll((root, query, cb) -> {
            List<Predicate> predicates = new ArrayList<>();
            //status状态,查询状态为0,启动的酒店
            predicates.add((cb.equal(root.get("status"), 0)));
            //酒店name模糊查询
            if (!StringUtils.isEmpty(searchName)) {
                predicates.add((cb.like(root.get("name"), "%" + searchName + "%")));
            }
            query.where(predicates.toArray(new Predicate[]{}));
            query.orderBy(cb.desc(root.get("createDate")));
            return null;
        }, pageable);
        return hotelPage;
    }

    public Hotel findHotelById(String id) {
        return hotelRepository.findById(id).orElseThrow(() -> new ServiceException("酒店id错误!"));
    }

    public Page<Attractions> reserveAttractionsListUI(String searchName, Pageable pageable) {
        //查询启用的景点列表
        Page<Attractions> attractionsPage = attractionsRepository.findAll((root, query, cb) -> {
            List<Predicate> predicates = new ArrayList<>();
            //status状态,查询状态为0,启动的景点
            predicates.add((cb.equal(root.get("status"), 0)));
            //景点name模糊查询
            if (!StringUtils.isEmpty(searchName)) {
                predicates.add((cb.like(root.get("name"), "%" + searchName + "%")));
            }
            query.where(predicates.toArray(new Predicate[]{}));
            query.orderBy(cb.desc(root.get("createDate")));
            return null;
        }, pageable);
        return attractionsPage;
    }

    public Attractions findAttractionsById(String id) {
        return attractionsRepository.findById(id).orElseThrow(() -> new ServiceException("景点id错误!"));
    }


    public List<UserHotel> getReserveHotelByUser(HttpServletRequest request) {
        Cookie cookie = CookieUitl.get(request, "username");
        if (cookie == null) {
            throw new ServiceException("未能获得正确的用户名");
        }
        User user = userRepository.findUserByUsername(cookie.getValue());
        return userHotelRepository.findUserHotelsByUser(user);
    }

    @Transactional(rollbackFor = Exception.class)
    public Result cancelReserve(HttpServletRequest request, String id) {
        Cookie cookie = CookieUitl.get(request, "username");
        if (cookie == null) {
            throw new ServiceException("用户没有登录!");
        }
        Hotel hotel = findHotelById(id);
        User user = userRepository.findUserByUsername(cookie.getValue());
        UserHotel userHotel = userHotelRepository.findUserHotelByHotelAndUser(hotel, user);
        //存在值就是取消预约.不存在值就是预约
        if (userHotel != null) {
            userHotelRepository.delete(userHotel);
        } else {
            UserHotel newUserHotel = new UserHotel();
            newUserHotel.setId(IdGenerator.id());
            newUserHotel.setCreateDate(new Date());
            newUserHotel.setUser(user);
            newUserHotel.setHotel(hotel);
            userHotelRepository.saveAndFlush(newUserHotel);
        }
        return ResultGenerator.genSuccessResult();
    }

    public Boolean isReserveHotel(HttpServletRequest request, String id) {
        Cookie cookie = CookieUitl.get(request, "username");
        if (cookie != null) {
            User user = userRepository.findUserByUsername(cookie.getValue());
            Hotel hotel = findHotelById(id);
            UserHotel userHotel = userHotelRepository.findUserHotelByHotelAndUser(hotel, user);
            //当前用户每个酒店只能预约一次
            if (userHotel != null) {
                return true;
            }
        }
        return false;
    }

    public Boolean isReserveHotel1(String id) {
        Hotel hotel = findHotelById(id);
        //所有人每个酒店只能预约一次
        UserHotel userHotel1=userHotelRepository.findByHotel(hotel);
        return userHotel1 != null;
    }


    public List<UserAttractions> getReserveAttractionsByUser(HttpServletRequest request) {
        Cookie cookie = CookieUitl.get(request, "username");
        if (cookie == null) {
            throw new ServiceException("未能获得正确的用户名");
        }
        User user = userRepository.findUserByUsername(cookie.getValue());
        return userAttractionsRepository.findUserAttractionsByUser(user);
    }

    @Transactional(rollbackFor = Exception.class)
    public Result cancelAttractionsReserve(HttpServletRequest request, String id) {
        Cookie cookie = CookieUitl.get(request, "username");
        if (cookie == null) {
            throw new ServiceException("用户没有登录!");
        }
        Attractions attractions = findAttractionsById(id);
        User user = userRepository.findUserByUsername(cookie.getValue());
        UserAttractions userAttractions = userAttractionsRepository.findUserAttractionsByAttractionsAndUser(attractions, user);
        //存在值就是取消预约.不存在值就是预约
        if (userAttractions != null) {
            userAttractionsRepository.delete(userAttractions);
        } else {
            UserAttractions newUserAttractions = new UserAttractions();
            newUserAttractions.setId(IdGenerator.id());
            newUserAttractions.setCreateDate(new Date());
            newUserAttractions.setUser(user);
            newUserAttractions.setAttractions(attractions);
            userAttractionsRepository.saveAndFlush(newUserAttractions);
        }
        return ResultGenerator.genSuccessResult();
    }

    @Transactional(rollbackFor = Exception.class)
    public Result payAttractionsReserve(HttpServletRequest request, String id,String status) {
        Cookie cookie = CookieUitl.get(request, "username");
        if (cookie == null) {
            throw new ServiceException("用户没有登录!");
        }
        Attractions attractions = findAttractionsById(id);
        User user = userRepository.findUserByUsername(cookie.getValue());
        UserAttractions userAttractions = userAttractionsRepository.findUserAttractionsByAttractionsAndUser(attractions, user);
        //存在值就是取消预约.不存在值就是预约
        if (userAttractions != null) {
            userAttractions.setStatus(status);
            userAttractionsRepository.saveAndFlush(userAttractions);
        } else {
            UserAttractions newUserAttractions = new UserAttractions();
            newUserAttractions.setId(IdGenerator.id());
            newUserAttractions.setCreateDate(new Date());
            newUserAttractions.setUser(user);
            newUserAttractions.setAttractions(attractions);
            userAttractionsRepository.saveAndFlush(newUserAttractions);
        }
        return ResultGenerator.genSuccessResult();
    }

    public Boolean isReserveAttractions(HttpServletRequest request, String id) {
        Cookie cookie = CookieUitl.get(request, "username");
        if (cookie != null) {
            User user = userRepository.findUserByUsername(cookie.getValue());
            Attractions attractions = findAttractionsById(id);
            UserAttractions userAttractions = userAttractionsRepository.findUserAttractionsByAttractionsAndUser(attractions, user);
            //每个景点只能预约一次
            if (userAttractions != null) {
                return true;
            }
        }
        return false;
    }

    public List<Hotel> getTop10Hotel() {
        PageRequest pageable = PageRequest.of(0, 10);
        //查询启用的酒店列表
        Page<Hotel> hotelPage = hotelRepository.findAll((root, query, cb) -> {
            List<Predicate> predicates = new ArrayList<>();
            //status状态,查询状态为0,启动的酒店
            predicates.add((cb.equal(root.get("status"), 0)));
            query.where(predicates.toArray(new Predicate[]{}));
            query.orderBy(cb.desc(root.get("createDate")));
            return null;
        }, pageable);
        return hotelPage.getContent();
    }

    public List<Attractions> getTop10Attractions() {
        PageRequest pageable = PageRequest.of(0, 10);
        Page<Attractions> attractionsPage = attractionsRepository.findAll((root, query, cb) -> {
            List<Predicate> predicates = new ArrayList<>();
            //status状态,查询状态为0,启动的景点
            predicates.add((cb.equal(root.get("status"), 0)));
            //景点name模糊查询
            query.where(predicates.toArray(new Predicate[]{}));
            query.orderBy(cb.desc(root.get("createDate")));
            return null;
        }, pageable);
        return attractionsPage.getContent();
    }
}

