package com.example.dm.volunteer_travel.controller;

import com.example.dm.volunteer_travel.core.Result;
import com.example.dm.volunteer_travel.core.ResultGenerator;
import com.example.dm.volunteer_travel.model.Attractions;
import com.example.dm.volunteer_travel.model.Hotel;
import com.example.dm.volunteer_travel.model.SysUser;
import com.example.dm.volunteer_travel.model.TangShan;
import com.example.dm.volunteer_travel.service.ReserveService;
import com.example.dm.volunteer_travel.service.GuangZhouService;
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

/**
 * @author admin
 */
@Controller
@RequestMapping("/guangzhou")
public class GuangZhouController {

    @Autowired
    private GuangZhouService guangZhouService;

    @Autowired
    private ReserveService reserveService;



    /**
     * 后台分页查询
     * @param model
     * @param pageable
     * @return
     */
    @RequestMapping("/guangzhouListUI")
    public String orderListUI(Model model, @PageableDefault(size = 10) Pageable pageable) {
        Page<TangShan> page = guangZhouService.findByPage(pageable);
        model.addAttribute("page",page);
        return "system/guangzhou/list";
    }

    @RequestMapping("/save")
    @ResponseBody
    public Result save(TangShan tangShan, HttpServletRequest request) {
        String id=request.getParameter("sId");
        if(!StringUtils.isEmpty(id)&&Integer.parseInt(id)>0){
            tangShan.setId(Integer.parseInt(id));
            TangShan tangShan1= guangZhouService.findById(Integer.parseInt(id));
            tangShan1.setTitle(tangShan.getTitle());
            tangShan1.setContent(tangShan.getContent());
            return guangZhouService.save(tangShan1);
        }else {
            SysUser sysUser= (SysUser) request.getSession().getAttribute("sysUser");
            tangShan.setAddDate(new Date());
            tangShan.setAddUser(sysUser.getUsername());
            return guangZhouService.save(tangShan);
        }
    }

    @RequestMapping("/delete")
    @ResponseBody
    public Result delete(int id) {
        return guangZhouService.delete(id);
    }

    @RequestMapping("/findById")
    @ResponseBody
    public Result findById(int id) {
        return ResultGenerator.genSuccessResult(guangZhouService.findById(id));
    }

    @RequestMapping("/list")
    public String reserveAttractionsListUI(Model model, @ModelAttribute("searchName") String searchName, @PageableDefault(size = 10) Pageable pageable) {
        Page<TangShan> page = guangZhouService.findByPageCondition(searchName,pageable);
        List<Hotel> top10Hotel = reserveService.getTop10Hotel();
        List<Attractions> top10Attractions = reserveService.getTop10Attractions();
        model.addAttribute("top10Hotel", top10Hotel);
        model.addAttribute("top10Attractions", top10Attractions);
        model.addAttribute("page", page);
        return "guangzhou/list";
    }

    @RequestMapping("/detail")
    public String detail(Model model, HttpServletRequest request, @RequestParam(name = "id") int id) {
        TangShan tangShan= guangZhouService.findById(id);
        List<Hotel> top10Hotel = reserveService.getTop10Hotel();
        List<Attractions> top10Attractions = reserveService.getTop10Attractions();
        model.addAttribute("top10Hotel", top10Hotel);
        model.addAttribute("top10Attractions", top10Attractions);
        model.addAttribute("tangShan", tangShan);
        return "guangzhou/detail";
    }


}
