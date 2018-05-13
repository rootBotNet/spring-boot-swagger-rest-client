package com.scratchpad.usermanagement.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import springbootservice.consume.model.UserDetails;
import usermanagement.manager.UserManagementManager;

import java.util.List;

@Controller
public class UserManagementController {

    @Autowired
    UserManagementManager userManagementManager;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String welcomePage() {
        return "welcome";
    }

    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public String showRegisterPage() {
        return "register";
    }

    @RequestMapping(value="/register", method=RequestMethod.POST)
    public String addUser(@RequestParam String name, @RequestParam String phone, @RequestParam String password){
        userManagementManager.addUsingPUT(name, phone, password);
        return "welcome";
    }

    @RequestMapping(value="/users", method=RequestMethod.GET)
    public String getUsers(ModelMap model){
        List<UserDetails> userDetails = userManagementManager.findAllUsingGET();
        model.addAttribute("userDetails", userDetails);
        return "users";
    }

}
