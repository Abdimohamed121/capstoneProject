package com.smart.project.controller.security;

import com.smart.project.model.Project;
import com.smart.project.model.security.User;
import com.smart.project.security.UserValidator;
import com.smart.project.service.ProjectService;
import com.smart.project.service.security.SecurityService;
import com.smart.project.service.security.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class UserController {
    @Autowired
    private UserService userService;

     @Autowired
    private SecurityService securityService;

    @Autowired
    private ProjectService projectService;

    @Autowired
    private UserValidator userValidator;

    @GetMapping("/registration")
    public ModelAndView registration() {
        return new ModelAndView("registration", "userForm", new User());
    }

    @PostMapping("/registration")
    public String registration(@ModelAttribute("userForm") User userForm, BindingResult bindingResult) {
        userValidator.validate(userForm, bindingResult);

//        if (bindingResult.hasErrors()) {
//            return "registration";
//        }

        userService.save(userForm);

        securityService.autoLogin(userForm.getUsername(), userForm.getPasswordConfirm());

        return "redirect:/welcome";
    }

    @GetMapping({"/", "/welcome"})
    public ModelAndView welcome() {
        List<Project> allProjects = projectService.getAllProjects();
        ModelAndView model = new ModelAndView("welcome");
        model.addObject("projects", allProjects);
        return model;
    }
}