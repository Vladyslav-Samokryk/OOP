package org.slava.railway.tickets.controller;

import lombok.extern.slf4j.Slf4j;
import org.slava.railway.tickets.entity.Station;
import org.slava.railway.tickets.entity.User;
import org.slava.railway.tickets.entity.enums.RoleType;
import org.slava.railway.tickets.service.StationService;
import org.slava.railway.tickets.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

@Slf4j
@RestController
@SessionAttributes(value = "currentUser")
public class StationController {

    private final UserService userService;
    private final StationService stationService;
    private final User GUEST = User.builder().id(0L).firstName("Guest").role(RoleType.ROLE_GUEST).build();
    private final ModelAndView MAIN = new ModelAndView("stations");

    @Autowired
    public StationController(UserService userService, StationService stationService) {
        this.stationService = stationService;
        this.userService = userService;
        initMain();
    }

    private void initMain() {
        MAIN.addObject("allStations", stationService.getAll());
        MAIN.addObject("newStation", new Station());
        MAIN.addObject("deletedStation", new Station());
    }

    @ModelAttribute("currentUser")
    public User createUser() {
        return GUEST;
    }

    @GetMapping("/admin/stationsPage")
    public ModelAndView stationsPage (@ModelAttribute("currentUser") User currentUser) {
        if (currentUser.getRole() != RoleType.ROLE_ADMIN)
            return new ModelAndView("index");
//        ModelAndView modelAndView = new ModelAndView("stations");
//        modelAndView.addObject("allStations", stationService.getAll());
//        modelAndView.addObject("newStation", new Station());
//        modelAndView.addObject("deletedStation", new Station());
//        return modelAndView;
        return MAIN;
    }

    @PostMapping("/admin/addStation")
    public ModelAndView addStation (@ModelAttribute("newStation") Station newStation) {
        stationService.save(newStation);
        MAIN.addObject("allStations", stationService.getAll());
        return MAIN;
    }

    @PostMapping("/admin/deleteStation")
    private ModelAndView deleteStation (@ModelAttribute("deletedStation") Station deletedStation) {
        stationService.delete(deletedStation.getId());
        MAIN.addObject("allStations", stationService.getAll());
        return MAIN;
    }

}
