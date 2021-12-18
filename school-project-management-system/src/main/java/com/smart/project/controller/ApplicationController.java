package com.smart.project.controller;

import com.smart.project.dto.AddDurationDto;
import com.smart.project.model.Duration;
import com.smart.project.model.Project;
import com.smart.project.service.ProjectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

@Controller
public class ApplicationController {
    @Autowired
    private ProjectService projectService;

    @RequestMapping(value = "/login", method = GET)
    public String login() {
        return "login";
    }

    @GetMapping( "/viewDurations/{projectId}")
    public ModelAndView viewDurations(@PathVariable(name = "projectId") Long projectId) {
        List<Duration> allDurations = projectService.getDurationsByProjectId(projectId);
        ModelAndView model = new ModelAndView("view_durations");
        model.addObject("durations", allDurations);
        return model;
    }

    @RequestMapping(value = "/addProject", method = GET)
    public ModelAndView showAddProduct() {
        return new ModelAndView("addProject", "project", new Project());
    }

    @RequestMapping(value = "/addNewProject", method = POST)
    public String processRequest(@ModelAttribute("project") Project project) {
        projectService.insertProject(project);
        return "redirect:/";
    }

    // add duration of project
    @RequestMapping(value = "/addDuration/{projectId}", method = GET)
    public ModelAndView addDuration2(@PathVariable(name = "projectId") Long projectId) {
        AddDurationDto addDuration = new AddDurationDto();
        addDuration.setProjectId(projectId);
        return new ModelAndView("add_duration", "duration",addDuration);
    }

    @RequestMapping(value = "/saveDuration", method = POST)
    public String processRequest(@ModelAttribute("duration") AddDurationDto duration) {
        projectService.insertDuration(duration);
        return "redirect:/";
    }


    @RequestMapping(value = "/deleteProject/{id}", method = RequestMethod.GET)
    public String deleteProject(@PathVariable("id") Long id) {
        projectService.deleteById(id);
        return "redirect:/";
    }
    @RequestMapping(value = "/deleteDurationById/{id}", method = RequestMethod.GET)
    public String deleteDuration(@PathVariable("id") Long id) {
        projectService.deleteDurationById(id);
        return "redirect:/";
    }

    //update project
    @RequestMapping(value ="/goUpdate/{projectId}", method=GET)
    public ModelAndView goUpdatePage(@PathVariable(name = "projectId") Long projectId){
        Project findProject = projectService.findById(projectId);
        return new ModelAndView("update_project", "project", findProject);
    }
    @RequestMapping(value = "/saveUpdateProject", method = POST)
    public String saveUpdateProject(@ModelAttribute("project") Project project) {
        projectService.saveUpdate(project);
        return "redirect:/";
    }

    //update project
    @RequestMapping(value ="/goUpdateDuration/{durationId}", method=GET)
    public ModelAndView goUpdateDuration(@PathVariable(name = "durationId") Long durationId){
        Duration duration = projectService.findDurationById(durationId);
        duration.setProjectId(duration.getProject().getId());
        return new ModelAndView("update_duration", "duration", duration);
    }
    @RequestMapping(value = "/saveUpdateDuration", method = POST)
    public String saveUpdateDuration(@ModelAttribute("duration") Duration duration) {
        duration.setProject(projectService.findById(duration.getProjectId()));
        projectService.saveUpdateDuration(duration);
        return "redirect:/";
    }


}