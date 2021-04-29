package com.example.dm.volunteer_travel.controller;

import com.example.dm.volunteer_travel.model.Attractions;
import com.example.dm.volunteer_travel.model.Hotel;
import com.example.dm.volunteer_travel.model.TravelRoute;
import com.example.dm.volunteer_travel.model.TravelStrategy;
import com.example.dm.volunteer_travel.service.ReserveService;
import com.example.dm.volunteer_travel.service.RouteService;
import com.example.dm.volunteer_travel.service.StrategyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * @Author
 * @Date 2019/4/10
 */
@Controller
public class IndexController {

    @Autowired
    private ReserveService reserveService;

    @Autowired
    private RouteService routeService;

    @Autowired
    private StrategyService strategyService;

    @RequestMapping("/")
    public String index(Model model) {
        List<Hotel> top10Hotel = reserveService.getTop10Hotel();
        List<Attractions> top10Attractions = reserveService.getTop10Attractions();
        List<TravelRoute> top10Route = routeService.findTop10Route();
        List<TravelStrategy> top10Strategy = strategyService.findTop10Strategy();
        model.addAttribute("top10Strategy",top10Strategy);
        model.addAttribute("top10Route", top10Route);
        model.addAttribute("top10Hotel", top10Hotel);
        model.addAttribute("top10Attractions", top10Attractions);
        return "index";
    }
}
