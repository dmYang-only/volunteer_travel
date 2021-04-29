package com.example.dm.volunteer_travel.controller;

import com.example.dm.volunteer_travel.core.Result;
import com.example.dm.volunteer_travel.core.ResultGenerator;
import com.example.dm.volunteer_travel.model.RouteComment;
import com.example.dm.volunteer_travel.model.TravelRoute;
import com.example.dm.volunteer_travel.model.User;
import com.example.dm.volunteer_travel.service.LoginService;
import com.example.dm.volunteer_travel.service.RouteCommentService;
import com.example.dm.volunteer_travel.service.SystemService;
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
@RequestMapping("/route")
public class RouteCommentController {

    @Autowired
    private RouteCommentService routeCommentService;

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
    @RequestMapping("/routeCommentListUI")
    public String routeListUI(Model model, @PageableDefault(size = 10) Pageable pageable) {
        Page<RouteComment> page = routeCommentService.findByPage(pageable);
        model.addAttribute("page",page);
        return "system/routeComment/list";
    }

    @RequestMapping("/save")
    @ResponseBody
    public Result save(HttpServletRequest request) {
        String id=request.getParameter("id");
        String content=request.getParameter("content");
        User user= (User) request.getSession().getAttribute("user");
        User user1=loginService.findUserByUsername(user.getUsername());
        RouteComment routeComment=new RouteComment();
        TravelRoute travelRoute=systemService.getTravelRouteById(id);
        routeComment.setTravelRoute(travelRoute);
        routeComment.setAddDate(new Date());
        routeComment.setUser(user1);
        routeComment.setContent(content);
        return routeCommentService.save(routeComment);
    }

    @RequestMapping("/delete")
    @ResponseBody
    public Result delete(int id) {
        return routeCommentService.delete(id);
    }

    @RequestMapping("/findById")
    @ResponseBody
    public Result findById(int id) {
        return ResultGenerator.genSuccessResult(routeCommentService.findById(id));
    }


}
