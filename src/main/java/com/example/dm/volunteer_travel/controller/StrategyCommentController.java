package com.example.dm.volunteer_travel.controller;

import com.example.dm.volunteer_travel.core.Result;
import com.example.dm.volunteer_travel.core.ResultGenerator;
import com.example.dm.volunteer_travel.model.StrategyComment;
import com.example.dm.volunteer_travel.model.TravelStrategy;
import com.example.dm.volunteer_travel.model.User;
import com.example.dm.volunteer_travel.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;

@Controller
@RequestMapping("/strategy")
public class StrategyCommentController {

    @Autowired
    private StrategyCommentService strategyCommentService;

    @Autowired
    private LoginService loginService;

    @Autowired
    private SystemService systemService;

    /**
     * 后台分页查询
     * @param model
     * @param pageable
     * @return
     */
    @RequestMapping("/strategyCommentListUI")
    public String guangZhouListUI(Model model, @PageableDefault(size = 10) Pageable pageable) {
        Page<StrategyComment> page = strategyCommentService.findByPage(pageable);
        model.addAttribute("page",page);
        return "system/strategyComment/list";
    }

    @RequestMapping("/save")
    @ResponseBody
    public Result save(HttpServletRequest request) {
        String id=request.getParameter("id");
        String content=request.getParameter("content");
        User user= (User) request.getSession().getAttribute("user");
        User user1=loginService.findUserByUsername(user.getUsername());
        StrategyComment strategyComment=new StrategyComment();
        TravelStrategy travelStrategy=systemService.getTravelStrategyById(id);
        strategyComment.setTravelStrategy(travelStrategy);
        strategyComment.setAddDate(new Date());
        strategyComment.setUser(user1);
        strategyComment.setContent(content);
        return strategyCommentService.save(strategyComment);
    }

    @RequestMapping("/delete")
    @ResponseBody
    public Result delete(int id) {
        return strategyCommentService.delete(id);
    }

    @RequestMapping("/findById")
    @ResponseBody
    public Result findById(int id) {
        return ResultGenerator.genSuccessResult(strategyCommentService.findById(id));
    }


}
