package com.smart.project.service;

import com.smart.project.dto.AddDurationDto;
import com.smart.project.model.Duration;
import com.smart.project.model.Project;
import com.smart.project.repository.DurationRepository;
import com.smart.project.repository.ProjectRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProjectService {

    @Autowired
    ProjectRepository projectRepository;

    @Autowired
    DurationRepository durationRepository;

    public Project insertProject(Project project) {
        return projectRepository.save(project);
    }

    public List<Project> getAllProjects() {
        return projectRepository.findAll();
    }

    public void deleteById(Long id) {
        projectRepository.deleteById(id);
    }

    public Project findById(Long projectId) {
        return projectRepository.getOne(projectId);
    }

    public List<Duration> getDurationsByProjectId(Long projectId) {
        Project findProject = findById(projectId);
        return findProject.getDurationList();
    }

    public void deleteDurationById(Long id) {
        durationRepository.deleteById(id);
    }

    public Project saveUpdate(Project project) {
        return projectRepository.save(project);
    }

    public void insertDuration(AddDurationDto duration) {
        Duration saveDuration = new Duration();
        saveDuration.setDurationDescription(duration.getDurationDescription());
        saveDuration.setProject(findById(duration.getProjectId()));
        saveDuration.setCompleteStatus(duration.getCompleteStatus());
        durationRepository.save(saveDuration);
    }

    public Duration findDurationById(Long durationId) {
        return durationRepository.getOne(durationId);
    }

    public void saveUpdateDuration(Duration duration) {
        durationRepository.save(duration);
    }
}
