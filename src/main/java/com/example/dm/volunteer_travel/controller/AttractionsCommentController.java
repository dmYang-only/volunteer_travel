package com.example.dm.volunteer_travel.controller;

import com.example.dm.volunteer_travel.core.Result;
import com.example.dm.volunteer_travel.core.ResultGenerator;
import com.example.dm.volunteer_travel.model.Attractions;
import com.example.dm.volunteer_travel.model.AttractionsComment;
import com.example.dm.volunteer_travel.model.User;
import com.example.dm.volunteer_travel.service.AttractionsCommentService;
import com.example.dm.volunteer_travel.service.LoginService;
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
@RequestMapping("/attractionsComment")
public class AttractionsCommentController {

    @Autowired
    private AttractionsCommentService attractionsCommentService;

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
    @RequestMapping("/attractionsCommentListUI")
    public String guangzhouListUI(Model model, @PageableDefault(size = 10) Pageable pageable) {
        Page<AttractionsComment> page = attractionsCommentService.findByPage(pageable);
        model.addAttribute("page",page);
        return "system/attractionsComment/list";
    }

    @RequestMapping("/save")
    @ResponseBody
    public Result save(HttpServletRequest request) {
        String id=request.getParameter("id");
        String content=request.getParameter("content");
        User user= (User) request.getSession().getAttribute("user");
        User user1=loginService.findUserByUsername(user.getUsername());
        AttractionsComment attractionsComment=new AttractionsComment();
        Attractions attractions=systemService.getAttractionsById(id);
        attractionsComment.setAttractions(attractions);
        attractionsComment.setAddDate(new Date());
        attractionsComment.setUser(user1);
        attractionsComment.setContent(content);
        return attractionsCommentService.save(attractionsComment);

        /*if(!StringUtils.isEmpty(id)&&Integer.parseInt(id)>0){
            attractionsComment.setId(Integer.parseInt(id));
            AttractionsComment attractionsComment1=attractionsCommentService.findById(Integer.parseInt(id));
            attractionsComment1.setContent(attractionsComment.getContent());
            return attractionsCommentService.save(attractionsComment1);
        }else {
            User user= (User) request.getSession().getAttribute("user");
            User user1=loginService.findUserByUsername(user.getUsername());
            attractionsComment.setAddDate(new Date());
            attractionsComment.setUser(user1);
            return attractionsCommentService.save(attractionsComment);
        }*/
    }

    @RequestMapping("/delete")
    @ResponseBody
    public Result delete(int id) {
        return attractionsCommentService.delete(id);
    }

    @RequestMapping("/findById")
    @ResponseBody
    public Result findById(int id) {
        return ResultGenerator.genSuccessResult(attractionsCommentService.findById(id));
    }


}
