package com.example.dm.volunteer_travel.controller;

import com.example.dm.volunteer_travel.core.Result;
import com.example.dm.volunteer_travel.core.ResultGenerator;
import com.example.dm.volunteer_travel.model.*;
import com.example.dm.volunteer_travel.service.LoginService;
import com.example.dm.volunteer_travel.service.ReserveService;
import com.example.dm.volunteer_travel.service.TravelDiaryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/traveldiary")
public class TravelDiaryController {

    @Autowired
    private TravelDiaryService travelDiaryService;

    @Autowired
    private LoginService loginService;

    @Autowired
    private ReserveService reserveService;

    /**
     * 后台分页查询
     * @param model
     * @param pageable
     * @return
     */
    @RequestMapping("/travelDiaryListUI")
    public String guangZhouListUI(Model model, @PageableDefault(size = 10) Pageable pageable) {
        Page<TravelDiary> page = travelDiaryService.findByPage(pageable);
        model.addAttribute("page",page);
        return "system/traveldiary/list";
    }

    @RequestMapping("/save")
    @ResponseBody
    public Result save(TravelDiary travelDiary, HttpServletRequest request) {
        String id=request.getParameter("sId");
        if(!StringUtils.isEmpty(id)&&Integer.parseInt(id)>0){
            travelDiary.setId(Integer.parseInt(id));
            TravelDiary tangShan1=travelDiaryService.findById(Integer.parseInt(id));
            tangShan1.setTitle(travelDiary.getTitle());
            tangShan1.setContent(travelDiary.getContent());
            return travelDiaryService.save(tangShan1);
        }else {
            User user= (User) request.getSession().getAttribute("user");
            User user1=loginService.findUserByUsername(user.getUsername());
            travelDiary.setAddDate(new Date());
            travelDiary.setUser(user1);
            return travelDiaryService.save(travelDiary);
        }
    }

    @RequestMapping("/delete")
    @ResponseBody
    public Result delete(int id) {
        return travelDiaryService.delete(id);
    }

    @RequestMapping("/findById")
    @ResponseBody
    public Result findById(int id) {
        return ResultGenerator.genSuccessResult(travelDiaryService.findById(id));
    }


    @RequestMapping("/list")
    public String reserveAttractionsListUI(Model model, @ModelAttribute("searchName") String searchName, @PageableDefault(size = 10) Pageable pageable) {
        Page<TravelDiary> page = travelDiaryService.findByPageCondition(searchName,pageable);
        List<Hotel> top10Hotel = reserveService.getTop10Hotel();
        List<Attractions> top10Attractions = reserveService.getTop10Attractions();
        model.addAttribute("top10Hotel", top10Hotel);
        model.addAttribute("top10Attractions", top10Attractions);
        model.addAttribute("page", page);
        return "travelDiary/list";
    }

    @RequestMapping("/detail")
    public String detail(Model model, HttpServletRequest request, @RequestParam(name = "id") int id) {
        TravelDiary travelDiary=travelDiaryService.findById(id);
        List<Hotel> top10Hotel = reserveService.getTop10Hotel();
        List<Attractions> top10Attractions = reserveService.getTop10Attractions();
        model.addAttribute("top10Hotel", top10Hotel);
        model.addAttribute("top10Attractions", top10Attractions);
        model.addAttribute("travelDiary", travelDiary);
        return "travelDiary/detail";
    }
}
