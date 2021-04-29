package com.example.dm.volunteer_travel.controller;

import com.example.dm.volunteer_travel.core.Result;
import com.example.dm.volunteer_travel.core.ResultGenerator;
import com.example.dm.volunteer_travel.model.DiaryComment;
import com.example.dm.volunteer_travel.model.TravelDiary;
import com.example.dm.volunteer_travel.model.User;
import com.example.dm.volunteer_travel.service.DiaryCommentService;
import com.example.dm.volunteer_travel.service.LoginService;
import com.example.dm.volunteer_travel.service.TravelDiaryService;
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
@RequestMapping("/diary")
public class DiaryCommentController {

    @Autowired
    private DiaryCommentService diaryCommentService;

    @Autowired
    private LoginService loginService;

    @Autowired
    private TravelDiaryService travelDiaryService;

    /**
     * 后台分页查询
     * @param model
     * @param pageable
     * @return
     */
    @RequestMapping("/diaryCommentListUI")
    public String diaryListUI(Model model, @PageableDefault(size = 10) Pageable pageable) {
        Page<DiaryComment> page = diaryCommentService.findByPage(pageable);
        model.addAttribute("page",page);
        return "system/diaryComment/list";
    }

    @RequestMapping("/save")
    @ResponseBody
    public Result save(HttpServletRequest request) {
        String id=request.getParameter("id");
        String content=request.getParameter("content");
        User user= (User) request.getSession().getAttribute("user");
        User user1=loginService.findUserByUsername(user.getUsername());
        DiaryComment diaryComment=new DiaryComment();
        TravelDiary travelDiary=travelDiaryService.findById(Integer.parseInt(id));
        diaryComment.setTravelDiary(travelDiary);
        diaryComment.setAddDate(new Date());
        diaryComment.setUser(user1);
        diaryComment.setContent(content);
        return diaryCommentService.save(diaryComment);
    }

    @RequestMapping("/delete")
    @ResponseBody
    public Result delete(int id) {
        return diaryCommentService.delete(id);
    }

    @RequestMapping("/findById")
    @ResponseBody
    public Result findById(int id) {
        return ResultGenerator.genSuccessResult(diaryCommentService.findById(id));
    }


}
