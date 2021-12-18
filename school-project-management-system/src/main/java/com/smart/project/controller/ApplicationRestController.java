package com.smart.project.controller;

import com.smart.project.model.Duration;
import com.smart.project.model.Project;
import com.smart.project.repository.DurationRepository;
import com.smart.project.service.ProjectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

@RestController
public class ApplicationRestController {
    @Autowired
    private ProjectService projectService;
     @Autowired
    private DurationRepository durationRepository;

//     @PostMapping("/saveDuration/{projectId}")
//    public List<Duration> addDurationsByProjectId(@PathVariable(name="projectId") Long projectId, @RequestBody List<String> durationsList){
//        Project project = projectService.findById(projectId);
//        List<Duration> durations = new ArrayList<>();
//        for (String duration_description : durationsList) {
//            durations.add(durationRepository.save(new Duration(duration_description, project)));
//        }
//        return durations;
//    }
}
